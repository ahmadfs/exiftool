FROM alpine:latest
RUN apk update && \
    apk upgrade && \
    apk add exiftool bash
COPY ./run_exiftool.sh /run_exiftool.sh
entrypoint ["/bin/bash", "-c", "/run_exiftool.sh"]
