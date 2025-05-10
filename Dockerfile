FROM docker.io/library/python:alpine

RUN adduser -D scdl

RUN apk add --no-cache ffmpeg=6.1.2-r1
USER scdl

WORKDIR /home/scdl/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir --user -r requirements.txt

ENTRYPOINT [ "/home/scdl/.local/bin/scdl" ]