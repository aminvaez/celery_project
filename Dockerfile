# Run python version make image from python:3.9.13-alpine
FROM python:3.9.13-alpine

# storage to run project
WORKDIR /app
#set envaierment variable
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PATH="/PY/BIN/:$PATH"
# install and upgrade pip
RUN pip install --upgrade pip
# copy python package in project on image
COPY ./req.txt /app/req.txt
COPY . /app
#install packages
RUN pip install -r req.txt