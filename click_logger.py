from web3 import Web3
import os
import csv
from datetime import datetime
from google.cloud import storage

# 🔧 設定
RPC_URL = "https://berachain.drpc.org"
CONTRACT_ADDRESS = "0x5487cb78417aa5923b80cdcf046a6554ca395874".lower()
BUCKET_NAME = "bullas-spank-logs"
CLICK_UNIT_BERA = 0.69
SCAN_BLOCKS = 100

# 🔄 GCSアップロード
def upload_to_gcs(local_path, bucket_name, blob_name):
    client = storage.Client()
    bucket = client.bucket(bucket_name)
    blob = bucket.blob(blob_name)
    blob.upload_from_filename(local_path)
    print(f"✅ Uploaded to GCS: gs://{bucket_name}/{blob_name}")

# 🔍 メイン処理
def main():
    print("🚀 Logger started")
    web3 = Web3(Web3.HTTPProvider(RPC_URL))
    print(f"🔗 RPC = {RPC_URL}")

    if not web3.is_connected():
        print("❌ Web3 is not connected.")
        exit(0)

    latest_block = web3.eth.block_number
    start_block = latest_block - SCAN_BLOCKS
    print(f"📦 Scanning blocks {start_block} to {latest_block}")

    results = []
    for block_num in range(start_block, latest_block + 1):
        block = web3.eth.get_block(block_num, full_transactions=True)
        for tx in block.transactions:
            if tx.to and tx.to.lower() == CONTRACT_ADDRESS:
                click_count = round(Web3.from_wei(tx.value, 'ether') / CLICK_UNIT_BERA, 2)
                results.append({
                    "timestamp": datetime.utcfromtimestamp(block.timestamp).isoformat(),
                    "tx_hash": tx.hash.hex(),
                    "spanker": tx['from'],
                    "value": Web3.from_wei(tx.value, 'ether'),
                    "click_count": click_count,
                    "block_number": tx.blockNumber,
                })

    if not results:
        print("🟡 No matching transactions found.")
        exit(0)

    # 書き込み
    now = datetime.utcnow()
    date_str = now.strftime("%Y-%m-%d")
    filename = f"{date_str}_click_log.csv"
    local_path = f"/tmp/{filename}"
    write_header = not os.path.exists(local_path)

    with open(local_path, "a", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=results[0].keys())
        if write_header:
            writer.writeheader()
        writer.writerows(results)

    upload_to_gcs(local_path, BUCKET_NAME, filename)

if __name__ == "__main__":
    main()