FROM python:3

ENV PYTHONNUNBUFFERED 1

WORKDIR /app

ADD . /app/

COPY ./dependency.txt /app/dependency.txt

RUN pip install -r dependency.txt

RUN python manage.py migrate

COPY . /app/