def run_monitor():
    print("✅ run_monitor() started")

    now = datetime.utcnow()
    timestamp = now.strftime("%Y-%m-%dT%H:%M:%S")
    print(f"🕒 Timestamp generated: {timestamp}")

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
    print(f"📄 Writing to: {local_path}")

    file_exists = os.path.exists(local_path)

    try:
        with open(local_path, "a", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=data.keys())
            if not file_exists:
                writer.writeheader()
            writer.writerow(data)
        print("✅ CSV written")
    except Exception as e:
        print(f"❌ Error writing CSV: {e}")

    try:
        blob_path = filename
        upload_to_gcs(local_path, BUCKET_NAME, blob_path)
    except Exception as e:
        print(f"❌ Error uploading to GCS: {e}")