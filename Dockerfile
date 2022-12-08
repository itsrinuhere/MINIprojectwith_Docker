#syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

ENV PYTHONNUNBUFFERED 1

WORKDIR /app

ADD . /app/

COPY requirements.txt /app/requirements.txt

RUN pip3 install -r requirements.txt

RUN python3 manage.py migrate

EXPOSE 8000/tcp

EXPOSE 8000/udp

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

COPY . .