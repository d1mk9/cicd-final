FROM golang:1.22.3

WORKDIR /cicd-final

COPY . .

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /final

CMD ["/final"]