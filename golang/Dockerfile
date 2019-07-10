FROM golang:1.11

WORKDIR /go/src/demo-golang
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 8080

CMD ["demo-golang"]
