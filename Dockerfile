FROM python:2
ENV PYTHONUNBUFFERED 1
RUN mkdir /swapi
RUN apt-get update && apt-get install -y \
        libmemcached11 \
        libmemcachedutil2 \
        libmemcached-dev \
        libz-dev
WORKDIR /swapi
ADD requirements.txt /swapi/
RUN pip install -r requirements.txt
ADD . /swapi/