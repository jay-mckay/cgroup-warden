FROM rockylinux:9 AS build

ENV GOOS=linux 
ENV GOARCH=amd64 
ENV CGO_ENABLED=1
ENV GOLANG_VERSION=1.24.0

WORKDIR /app

RUN dnf install -y wget gcc

RUN wget https://dl.google.com/go/go$GOLANG_VERSION.linux-amd64.tar.gz 

RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go$GOLANG_VERSION.linux-amd64.tar.gz

ENV PATH=$PATH:/usr/local/go/bin

RUN rm go$GOLANG_VERSION.linux-amd64.tar.gz

RUN go version

COPY . .

RUN CGO_ENABLED=1 go build .
