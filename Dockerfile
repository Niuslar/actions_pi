FROM alpine:latest

ENV PATH $PATH:/home/dev/gcc-arm-none-eabi-10.3-2021.10/bin

# Download Linux support tools
RUN apk update && \
    apk add \
    gcompat \ 
    make \
    wget \
    curl

WORKDIR /home/dev
COPY . /home/dev

RUN wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2 && \
    tar -xvf gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2
