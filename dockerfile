FROM mcr.microsoft.com/dotnet/sdk:6.0
MAINTAINER Cyrus Yeung <cyrus0880@outlook.com>

WORKDIR /app

RUN apt update && \
    apt install -y curl libsnappy-dev libc-dev libc6-dev libc6 unzip bash git && \
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*

RUN cd /app && \
    git clone https://github.com/sealinknetwork/Core.git && \
    mv /app/Core/* /app && \
    rm -frv /app/Core

RUN export DOTNET_ROOT=$HOME/.dotnet
RUN export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

CMD [ "dotnet","/app/Blockcore.Node.dll" ]

# docker buildx build --push \
# --platform linux/arm64,linux/arm/v7,linux/arm64/v8,linux/amd64 \ 
# -t cyrus0880/sealinknode:1.3.1 -t cyrus0880/sealinknode:latest .