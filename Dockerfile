FROM ubuntu:latest

RUN apt-get update && apt-get install -y llvm python3-pip

COPY requirements.txt requirements.txt

RUN python3 -m pip install --no-cache-dir -r requirements.txt

RUN rm requirements.txt
