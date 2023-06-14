# syntax=docker/dockerfile:1

FROM golang:1.19-alpine

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o /goshift

EXPOSE 8080

CMD ["/goshift"]