FROM ubuntu:20.04 as base
WORKDIR /app
RUN apt-get update -y && apt-get install wget -y && \
    wget -O vscode.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" && \
    apt-get install /app/vscode.deb -y -f && \
    mkdir /root/vsc_data && \
CMD ["/usr/bin/vscode", "--user-data-dir=/root/vsc_data", "--verbose"]