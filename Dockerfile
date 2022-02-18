FROM python:3.10-alpine
MAINTAINER Tuss Ltd.

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Setup directory structure
RUN mkdir -p /app
WORKDIR /app
COPY ./app/ /app

RUN adduser -D user
USER user