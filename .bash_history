gcloud config set project bullasmonitor
gcloud services enable run.googleapis.com
gcloud run deploy bullas-monitor   --source .   --region europe-west3   --platform managed   --allow-unauthenticated
gcloud services enable run.googleapis.com
echo -e "requests\npandas\napscheduler" > requirements.txt
nano Dockerfile
nano 15min_monitor.py
gcloud services enable cloudscheduler.googleapis.com
gcloud run deploy bullas-monitor   --source .   --region europe-west3   --platform managed   --allow-unauthenticated
gcloud services enable cloudscheduler.googleapis.com
gcloud scheduler jobs create http bullas-monitor-job   --schedule "*/15 * * * *"   --uri "https://bullas-monitor-806988338944.europe-west3.run.app"   --http-method GET   --oidc-service-account-email bullasmonitor@bullasmonitor.iam.gserviceaccount.com  --location europe-west3
FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY 15min_monitor.py .
CMD ["python", "15min_monitor.py"]
gcloud beta run jobs create bullas-monitor-job 
--image [gcr.io/bullasmonitor/bullas-monitor](http://gcr.io/%5BYOUR_PROJECT_ID%5D/bullas-monitor) 
--region europe-west3 
--project bullasmonitor
gcloud beta run jobs create bullas-monitor-job 
--image [gcr.io/bullasmonitor/bullas-monitor](http://gcr.io/%5BYOUR_PROJECT_ID%5D/bullas-monitor) 
--region europe-west3 
--project bullasmonitor
gcloud builds submit --tag gcr.io/bullasmonitor/bullas-monitor
gcloud beta run jobs create bullas-monitor-job   --image gcr.io/[YOUR_PROJECT_ID]/bullas-monitor   --region europe-west3   --project [YOUR_PROJECT_ID]
gcloud beta run jobs create bullas-monitor-job   --image gcr.io/[YOUR_PROJECT_ID]/bullas-monitor   --region europe-west3   --project bullasmonito
gcloud beta run jobs create bullas-monitor-job 
--image [gcr.io/bullasmonitor/bullas-monitor](http://gcr.io/%5BYOUR_PROJECT_ID%5D/bullas-monitor) 
--region europe-west3 
--project bullasmonitor
gcloud beta run jobs create bullas-monitor-job 
--image [gcr.io/bullasmonitor/bullas-monitor](http://gcr.io/%5BYOUR_PROJECT_ID%5D/bullas-monitor) 
--region europe-west3 
--project bullasmonitor
gcloud beta run jobs create bullas-monitor-job 
--image [gcr.io/bullasmonitor/bullas-monitor](http://gcr.io/%5BYOUR_PROJECT_ID%5D/bullas-monitor) 
--region europe-west3 
--project bullasmonitor
gcloud beta run jobs create bullas-monitor-job 
--image [gcr.io/bullasmonitor/bullas-monitor](http://gcr.io/%5BYOUR_PROJECT_ID%5D/bullas-monitor) 
--region europe-west3 
--project bullasmonitor3
gcloud beta run jobs create bullas-monitor-job 
--image [gcr.io/bullasmonitor/bullas-monitor](http://gcr.io/%5BYOUR_PROJECT_ID%5D/bullas-monitor) 
--region europe-west3 
--project bullasmonitorgcloud beta run jobs create bullas-monitor-job 
--image gcr.io/bullasmonitor/bullas-monitor 
--region europe-west3 
--project bullasmonitor
gcloud beta run jobs create bullas-monitor-job 
--image gcr.io/bullasmonitor/bullas-monitor 
--region europe-west3 
--project bullasmonitor
gcloud builds submit --tag gcr.io/bullasmonitor/bullas-monitor
gcloud beta run jobs create bullas-monitor-job   --image gcr.io/bullasmonitor/bullas-monitor   --region europe-west3   --project bullasmonitor
gcloud scheduler jobs create http bullas-monitor-schedule   --schedule "*/15 * * * *"   --http-method POST   --uri "https://europe-west3-run.googleapis.com/apis/run.googleapis.com/v1/namespaces/bullasmonitor/jobs/bullas-monitor-job:run"   --oauth-service-account-email bullasmonitor@appspot.gserviceaccount.com   --location europe-west3
gcloud beta run jobs list --region europe-west3
gcloud beta run jobs list --region europe-west3 --project bullasmonitor
gcloud scheduler jobs create http bullas-monitor-schedule   --schedule "*/15 * * * *"   --http-method POST   --uri "https://europe-west3-run.googleapis.com/apis/run.googleapis.com/v1/namespaces/bullasmonitor/jobs/bullas-monitor-job:run"   --oauth-service-account-email bullasmonitor@appspot.gserviceaccount.com   --location europe-west3   --project bullasmonitor
gcloud auth login
gcloud beta run jobs list --region europe-west3gcloud beta run jobs list --region europe-west3
gcloud beta run jobs list --region europe-west3
gcloud iam service-accounts list
gcloud scheduler jobs create http bullas-monitor-schedule   --schedule "*/15 * * * *"   --http-method POST   --uri "https://europe-west3-run.googleapis.com/apis/run.googleapis.com/v1/namespaces/bullasmonitor/jobs/bullas-monitor-job:run"   --oauth-service-account-email bullasmonitor@appspot.gserviceaccount.com   --location europe-west3   --project bullasmonitor
gcloud projects add-iam-policy-binding bullasmonitor   --member="serviceAccount:bullasmonitor@appspot.gserviceaccount.com"   --role="roles/run.invoker"
gcloud projects add-iam-policy-binding bullasmonitor   --member="serviceAccount: bullasmonitor@bullasmonitor.iam.gserviceaccount.com"   --role="roles/run.invoker"
gcloud projects add-iam-policy-binding bullasmonitor   --member="serviceAccount:bullasmonitor@appspot.gserviceaccount.com"   --role="roles/run.invoker"
gcloud app create --region=europe-west3
gcloud iam service-accounts list
gcloud scheduler jobs create http bullas-monitor-schedule   --schedule "*/15 * * * *"   --http-method POST   --uri "https://europe-west3-run.googleapis.com/apis/run.googleapis.com/v1/namespaces/bullasmonitor/jobs/bullas-monitor-job:run"   --oauth-service-account-email bullasmonitor@appspot.gserviceaccount.com   --location europe-west3   --project bullasmonitor
gcloud builds submit --tag gcr.io/bullasmonitor/bullas-monitor-ui
gcloud run deploy bullas-monitor-ui   --image gcr.io/bullasmonitor/bullas-monitor-ui   --region europe-west3   --platform managed   --allow-unauthenticated
gcloud builds submit --tag gcr.io/bullasmonitor/bullas-monitor
gcloud beta run jobs deploy bullas-monitor-job   --image gcr.io/bullasmonitor/bullas-monitor   --region europe-west3   --project bullasmonitor
gcloud beta run jobs execute bullas-monitor-job   --region europe-west3   --project bullasmonitor
ls -l
gcloud builds submit --tag gcr.io/bullasmonitor/bullas-monitor-ui
gcloud run deploy bullas-monitor-ui   --image gcr.io/bullasmonitor/bullas-monitor-ui   --region europe-west3   --platform managed   --allow-unauthenticated
gsutil mb -l europe-west3 gs://bullas-spank-logs/
gsutil cp 2025-04-30_spank_log.csv gs://bullas-spank-logs/
Failed. Details: Revision 'bullas-monitor-00001-2hq' is not ready and cannot serve traffic. The user-provided container failed to start and listen on the port defined provided by the PORT=8080 environment variable within the allocated timeout. This can happen when the container port is misconfigured or if the timeout is too short. The health check timeout can be extended. Logs for this revision might contain more information. Logs URL: Open Cloud Logging  For more troubleshooting guidance, see https://cloud.google.com/run/docs/troubleshooting#container-failed-to-start 
bullas-monitor Region: europe-west3 URL: https://bullas-monitor-806988338944.europe-west3.run.app 
gsutil mb -l europe-west3 gs://bullas-spank-logs/
gcloud run services delete bullas-monitor   --region europe-west3   --platform managed
gcloud builds submit --tag gcr.io/bullasmonitor/bullas-monitor
gcloud beta run jobs deploy bullas-monitor-job   --image gcr.io/bullasmonitor/bullas-monitor   --region europe-west3   --project bullasmonitor
gcloud builds submit --tag gcr.io/bullasmonitor/bullas-monitor
gcloud beta run jobs deploy bullas-monitor-job   --image gcr.io/bullasmonitor/bullas-monitor   --region europe-west3   --project bullasmonitor
gcloud run services describe bullas-monitor-ui --region europe-west3
gcloud run services update bullas-monitor-ui   --no-allow-unauthenticated   --region europe-west3
gcloud run services add-iam-policy-binding bullas-monitor-ui   --region europe-west3   --member="user:getsal030@gmail.com"   --role="roles/run.invoker"
gcloud projects add-iam-policy-binding bullasmonitor   --member="serviceAccount:bullasmonitor"   --role="roles/storage.objectViewer"
bullas-monitor-ui
gcloud projects add-iam-policy-binding bullasmonitor   --member="serviceAccount:bullas-monitor-ui"   --role="roles/storage.objectViewer"
gcloud projects add-iam-policy-binding bullasmonitor   --member="serviceAccount:bullasmonitor@appspot.gserviceaccount.com"   --role="roles/storage.objectViewer"
gcloud run services update bullas-monitor-ui   --no-allow-unauthenticated   --region europe-west3
gcloud run services remove-iam-policy-binding bullas-monitor-ui   --member="allUsers"   --role="roles/run.invoker"   --region europe-west3
gcloud config list account
gcloud run services add-iam-policy-binding bullas-monitor-ui   --member="user:getsal030@gmail.com"   --role="roles/run.invoker"   --region europe-west3
gcloud run services describe bullas-monitor-ui   --region europe-west3   --format='value(status.url)'
gcloud run services add-iam-policy-binding bullas-monitor-ui   --member="user:getsal030@gmail.com"   --role="roles/run.invoker"   --region europe-west3
gcloud run services describe bullas-monitor-ui   --region europe-west3   --format='value(status.url)'
gcloud run services get-iam-policy bullas-monitor-ui   --region europe-west3
gcloud projects add-iam-policy-binding bullasmonitor   --member="user:getsal030@gmail.com"   --role="roles/iap.httpsResourceAccessor"
gcloud projects add-iam-policy-binding bullasmonitor   --member="user:getsal030@gmail.com"   --role="roles/iap.httpsResourceAccessor"
gcloud run services describe bullas-monitor-ui   --region europe-west3   --format='value(status.url)'
gcloud run deploy bullas-monitor-ui   --image gcr.io/bullasmonitor/bullas-monitor-ui   --region europe-west3   --platform managed   --no-allow-unauthenticated
gcloud run deploy bullas-monitor-ui   --image gcr.io/bullasmonitor/bullas-monitor-ui   --region europe-west3   --platform managed   --no-allow-unauthenticatedgcloud run deploy bullas-monitor-ui   --image gcr.io/bullasmonitor/bullas-monitor-ui   --region europe-west3   --platform managed   --no-allow-unauthenticated
gcloud run deploy bullas-monitor-ui   --image gcr.io/bullasmonitor/bullas-monitor-ui   --region europe-west3   --platform managed   --no-allow-unauthenticated
gcloud run services add-iam-policy-binding bullas-monitor-ui   --member="user:getsal030@gmail.com"   --role="roles/run.invoker"   --region europe-west3
gcloud projects add-iam-policy-binding bullasmonitor   --member="user:getsal030@gmail.com"   --role="roles/iap.httpsResourceAccessor"
gcloud run services describe bullas-monitor-ui   --region europe-west3   --format='value(status.url)'
gcloud config unset project
gcloud config set project bullasmonitor
gcloud run deploy bullas-monitor-ui   --image gcr.io/bullasmonitor/bullas-monitor-ui   --region europe-west3   --platform managed   --no-allow-unauthenticated
gcloud run services add-iam-policy-binding bullas-monitor-ui   --member="user:getsal030@gmail.com"   --role="roles/run.invoker"   --region europe-west3
gcloud projects add-iam-policy-binding bullasmonitor   --member="user:getsal030@gmail.com"   --role="roles/iap.httpsResourceAccessor"
gcloud run services add-iam-policy-binding bullas-monitor-ui   --member="allUsers"   --role="roles/run.invoker"   --region europe-west3
# 🔒 全公開解除
gcloud run services remove-iam-policy-binding bullas-monitor-ui   --member="allUsers"   --role="roles/run.invoker"   --region europe-west3
# ✅ 自分に再付与（再確認のため）
gcloud run services add-iam-policy-binding bullas-monitor-ui   --member="user:getsal030@gmail.com"   --role="roles/run.invoker"   --region europe-west3
# ✅ IAP経由アクセス許可（もう一度）
gcloud projects add-iam-policy-binding bullasmonitor   --member="user:getsal030@gmail.com"   --role="roles/iap.httpsResourceAccessor"
gcloud iap web add-iam-policy-binding   --resource-type=service   --resource=bullas-monitor-ui   --region=europe-west3   --member="user:getsal030@gmail.com"   --role="roles/iap.httpsResourceAccessor"
ERROR: (gcloud.iap.web.add-iam-policy-binding) unrecognized arguments: --resource=bullas-monitor-ui (did you mean '--resource-type'?) 
gcloud iap web add-iam-policy-binding   --resource-type=service   --resource="/projects/$(gcloud config get-value project)/iap_web/regions/europe-west3/services/bullas-monitor-ui"   --member="user:getsal030@gmail.com"   --role="roles/iap.httpsResourceAccessor"
gcloud iap web add-iam-policy-binding   --resource-type=service   --resource="/projects/$(gcloud config get-value project)/iap_web/regions/europe-west3/services/bullas-monitor-ui"   --member="user:getsal030@gmail.com"   --role="roles/iap.httpsResourceAccessor"
gcloud iap web add-iam-policy-binding   --resource-type=service   --resource="/projects/$(gcloud config get-value project)/iap_web/regions/europe-west3/services/bullas-monitor-ui"   --member="user:getsal030@gmail.com"   --role="roles/iap.httpsResourceAccessor"
# 🔒 全公開解除
gcloud run services remove-iam-policy-binding bullas-monitor-ui   --member="allUsers"   --role="roles/run.invoker"   --region europe-west3
# ✅ 自分に再付与（再確認のため）
gcloud run services add-iam-policy-binding bullas-monitor-ui   --member="user:getsal030@gmail.com"   --role="roles/run.invoker"   --region europe-west3
# ✅ IAP経由アクセス許可（もう一度）
gcloud projects add-iam-policy-binding bullasmonitor   --member="user:getsal030@gmail.com"   --role="roles/iap.httpsResourceAccessor"
gcloud run services add-iam-policy-binding bullas-monitor-ui   --member="user:getsal030@gmail.com"   --role="roles/run.invoker"   --region europe-west3
gcloud projects add-iam-policy-binding bullasmonitor   --member="user:getsal030@gmail.com"   --role="roles/iap.httpsResourceAccessor"
gcloud run services describe bullas-monitor-ui   --region europe-west3   --format='value(status.url)'
gcloud run services add-iam-policy-binding bullas-monitor-ui   --member="allUsers"   --role="roles/run.invoker"   --region europe-west3
gcloud run jobs executions list --job=bullas-monitor-job --region=europe-west3
gsutil ls gs://bullas-spank-logs/
upload_to_gcs(local_path, BUCKET_NAME, blob_path)
nano 15min_monitor.py 
gcloud builds submit --tag gcr.io/bullasmonitor/bullas-monitor
gcloud beta run jobs deploy bullas-monitor-job   --image gcr.io/bullasmonitor/bullas-monitor   --region europe-west3
gcloud beta run jobs execute bullas-monitor-job   --region europe-west3
nano 15min_monitor.py 
gcloud builds submit --tag gcr.io/bullasmonitor/bullas-monitor
gcloud beta run jobs deploy bullas-monitor-job   --image gcr.io/bullasmonitor/bullas-monitor   --region europe-west3
gcloud beta run jobs execute bullas-monitor-job   --region europe-west3
# 再ビルド
gcloud builds submit --tag gcr.io/bullasmonitor/bullas-monitor
# 再デプロイ
gcloud beta run jobs deploy bullas-monitor-job   --image gcr.io/bullasmonitor/bullas-monitor   --region europe-west3
# 実行
gcloud beta run jobs execute bullas-monitor-job   --region europe-west3
gcloud run services describe bullas-monitor-ui   --region europe-west3   --format='value(status.url)'
gsutil ls gs://bullas-spank-logs/
gcloud builds submit --tag gcr.io/bullasmonitor/bullas-monitor-ui
gcloud run deploy bullas-monitor-ui   --image gcr.io/bullasmonitor/bullas-monitor-ui   --region europe-west3   --platform managed   --allow-unauthenticated
gcloud builds submit --tag gcr.io/bullasmonitor/bullas-monitor-ui
gcloud run deploy bullas-monitor-ui   --image gcr.io/bullasmonitor/bullas-monitor-ui   --region europe-west3   --platform managed   --allow-unauthenticated
