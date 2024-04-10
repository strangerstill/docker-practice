FROM golang:1.22.0

WORKDIR /app

COPY . .

RUN go mod download

ENV CGO_ENABLED 0
ENV GOOS linux
ENV GOARCH amd64

RUN go build -o /docker_practice

CMD ["/docker_practice"]