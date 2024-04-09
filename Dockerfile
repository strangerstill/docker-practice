FROM golang:1.22.2

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

ENV CGO_ENABLED 0
ENV GOOS linux
ENV GOARCH amd64

COPY . .

RUN go build -o /docker_practice

CMD ["/docker_practice"]