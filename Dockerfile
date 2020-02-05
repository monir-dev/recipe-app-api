FROM python:3.9.0a3-alpine3.10

# FROM alpine:3.10
# MAINTAINER Monir Hossain

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D monir
USER monir

