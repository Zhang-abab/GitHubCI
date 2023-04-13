FROM python:3.10
LABEL MAINTAINER="Potato"
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /home/Actions
WORKDIR /home/Actions
ADD . /home/Actions
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install -r requirements.txt
RUN chmod +x ./start.sh
RUN chmod -R 777 ./start.sh