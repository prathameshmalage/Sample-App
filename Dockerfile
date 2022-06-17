FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    python3.9.12 \
    python3-pip

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

CMD  ["python" "app/main.py"]