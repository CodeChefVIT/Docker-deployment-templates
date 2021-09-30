FROM golang:1.14-alpine3.12
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .