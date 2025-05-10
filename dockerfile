FROM docker.io/library/python:alpine
RUN adduser -D scdl
RUN apk update -qq && apk upgrade && apk add ffmpeg
RUN pip3 install scdl
USER 1001
ENTRYPOINT [ "scdl" ]