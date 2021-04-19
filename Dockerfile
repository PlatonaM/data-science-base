FROM ubuntu:focal

RUN apt-get update && apt-get install -y llvm python3-pip && apt-get clean

COPY requirements.txt requirements.txt

RUN python3 -m pip install --no-cache-dir -r requirements.txt

RUN rm requirements.txt
