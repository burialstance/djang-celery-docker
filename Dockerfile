FROM python:3.10-alpine

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

RUN pip install --no-cache-dir --upgrade pip

COPY requirements.txt /usr/src/app

RUN pip install --no-cache-dir -r requirements.txt

COPY src /usr/src/app

