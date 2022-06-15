FROM ubuntu:20.04

ENV STM32CUBEIDE_VERSION 1.8.0 
ENV PATH $PATH:"${PATH}:/opt/st/stm32cubeide_${STM32CUBEIDE_VERSION}"

# Download tools
RUN apt-get update && apt-get install -y \
    expect 

WORKDIR /home/dev
COPY installer.sh stm32cubeide-installer.sh /home/dev/

RUN chmod +x installer.sh stm32cubeide-installer.sh && \
    ./installer.sh && \
    rm installer.sh stm32cubeide-installer.sh

# Install dependencies
RUN apt-get -y -f install


