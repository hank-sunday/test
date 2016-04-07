FROM golang:1.5.3

EXPOSE 8080

COPY . /usr/local/go/src/github.com/hank-sunday/test

WORKDIR /usr/local/go/src/github.com/asiainfoLDP/test

RUN go get github.com/tools/godep \
    && godep go build 

CMD ["sh", "-c", "./test"]