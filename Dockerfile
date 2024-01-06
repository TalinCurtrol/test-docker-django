# one app per container and use compose
# syntax=docker/dockerfile:1
FROM python:3
LABEL author="changtalin8626@gmail.com"
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
# Put the least changed section at the front of the Dockerfile
COPY requirements.txt /code/
# Each command in the Dockerfile creates a new image layer
RUN pip install -r requirements.txt
COPY . /code/