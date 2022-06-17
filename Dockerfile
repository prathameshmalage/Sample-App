FROM winamd64/python:3.9.12

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

CMD  ["python" "app/main.py"]