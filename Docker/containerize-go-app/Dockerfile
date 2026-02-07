FROM golang:1.24.13

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

ENV RUN_PORT=8085

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o app ./cmd/main.go

CMD [ "./app" ]
