import os
import csv
from datetime import datetime
from google.cloud import storage

BUCKET_NAME = "bullas-spank-logs"

def upload_to_gcs(local_path, bucket_name, blob_name):
    print(f"📤 Uploading {local_path} to GCS bucket {bucket_name} as {blob_name}")
    try:
        client = storage.Client()
        bucket = client.bucket(bucket_name)
        blob = bucket.blob(blob_name)
        blob.upload_from_filename(local_path)
        print(f"✅ Uploaded to GCS: gs://{bucket_name}/{blob_name}")
    except Exception as e:
        print(f"❌ GCS upload failed: {e}")

def run_monitor():
    print("🚀 Starting run_monitor()")

    now = datetime.utcnow()
    timestamp = now.strftime("%Y-%m-%dT%H:%M:%S")
    print(f"🕒 Timestamp: {timestamp}")

    data = {
        "timestamp": timestamp,
        "last_1h_spank_count": 123,
        "unique_spanker_count_last_1h": 15,
        "whale_spank_count_last_1h": 2,
        "spank_per_minute": 8.2,
        "regular_hit_count": 11,
    }

    date_str = now.strftime("%Y-%m-%d")
    filename = f"{date_str}_spank_log.csv"
    local_path = f"/tmp/{filename}"
    file_exists = os.path.exists(local_path)

    print(f"📄 Writing to local file: {local_path}")

    try:
        with open(local_path, "a", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=data.keys())
            if not file_exists:
                writer.writeheader()
            writer.writerow(data)
        print("✅ CSV write complete")
    except Exception as e:
        print(f"❌ CSV write failed: {e}")
        return

    upload_to_gcs(local_path, BUCKET_NAME, filename)

if __name__ == "__main__":
    run_monitor()