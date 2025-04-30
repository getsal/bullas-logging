#
# IMPORTANT: Ensure that a .dockerignore file is present in the same directory as this Dockerfile
# to prevent unnecessary files and directories (such as .git, __pycache__, .env, etc.)
# from being copied into the Docker image context.

FROM python:3.11-slim

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "click_logger.py"]