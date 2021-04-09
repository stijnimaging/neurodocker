FROM debian:stretch
RUN apt-get update

COPY . /opt/neurodocker

RUN apk add --update --no-cache git python3 \
    && python3 -m pip install --no-cache-dir --editable /opt/neurodocker

LABEL maintainer="Jakub Kaczmarzyk <jakub.kaczmarzyk@gmail.com>"

ENTRYPOINT ["/bin/bash"]
