import streamlit as st
import pandas as pd
from google.cloud import storage
from io import StringIO

st.set_page_config(page_title="Bullas Spank Monitor", layout="wide")

# GCSバケット名とファイル名
BUCKET_NAME = "bullas-spank-logs"
BLOB_NAME = "2025-04-30_spank_log.csv"  # ← ここは日付ごとに動的にしてもOK

# GCSからCSV読み込む関数
@st.cache_data
from google.cloud import storage

def upload_to_gcs(local_path, bucket_name, blob_name):
    client = storage.Client()
    bucket = client.bucket(bucket_name)
    blob = bucket.blob(blob_name)
    blob.upload_from_filename(local_path)
    return pd.read_csv(StringIO(csv_content), parse_dates=["timestamp"])

# 読み込み
try:
    df = load_data(BUCKET_NAME, BLOB_NAME)
    latest = df.iloc[-1]

    st.title("🐻 Bullas Spank Monitoring (from GCS)")
    col1, col2, col3, col4 = st.columns(4)
    col1.metric("💥 1h Spank数", latest["last_1h_spank_count"])
    col2.metric("🧍 ユニーク数", latest["unique_spanker_count_last_1h"])
    col3.metric("🐋 ホエール数", latest["whale_spank_count_last_1h"])
    col4.metric("⚡ Spank/分", latest["spank_per_minute"])

    st.line_chart(df.set_index("timestamp")[["last_1h_spank_count", "regular_hit_count"]])
    st.dataframe(df.tail(20), use_container_width=True)
except Exception as e:
    st.error(f"⚠️ データ読み込み失敗: {e}")