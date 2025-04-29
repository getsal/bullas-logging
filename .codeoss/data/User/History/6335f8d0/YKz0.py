import os
import csv
from datetime import datetime
from google.cloud import storage

# ✅ 設定
BUCKET_NAME = "bullas-spank-logs"

def upload_to_gcs(local_path, bucket_name, blob_name):
    client = storage.Client()
    bucket = client.bucket(bucket_name)
    blob = bucket.blob(blob_name)
    blob.upload_from_filename(local_path)
    print(f"✅ Uploaded to GCS: gs://{bucket_name}/{blob_name}")

def run_monitor():
    # 💡 サンプルデータ
    now = datetime.utcnow()
    timestamp = now.strftime("%Y-%m-%dT%H:%M:%S")
    data = {
        "timestamp": timestamp,
        "last_1h_spank_count": 123,
        "unique_spanker_count_last_1h": 15,
        "whale_spank_count_last_1h": 2,
        "spank_per_minute": 8.2,
        "regular_hit_count": 11,
    }

    # ✅ CSVファイルパス（Cloud Runで書き込みOKな場所）
    date_str = now.strftime("%Y-%m-%d")
    filename = f"{date_str}_spank_log.csv"
    local_path = f"/tmp/{filename}"

    # ✅ 追記 or 新規書き込み
    file_exists = os.path.exists(local_path)
    with open(local_path, "a", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=data.keys())
        if not file_exists:
            writer.writeheader()
        writer.writerow(data)

    # ✅ アップロード先のパス
    blob_path = filename
    upload_to_gcs(local_path, BUCKET_NAME, blob_path)

if __name__ == "__main__":
    run_monitor()