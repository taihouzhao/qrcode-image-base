FROM python:3.10-slim-buster

RUN apt-get update && apt-get install -y libzbar0 libzbar-dev alsa-utils fswebcam \
    build-essential libssl-dev libffi-dev python3-dev network-manager \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

