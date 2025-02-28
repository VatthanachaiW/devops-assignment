FROM golang:1.21.4-alpine3.18 AS builder
WORKDIR /app
COPY ./src .
RUN go mod download
RUN go build -o /dist/main main.go

FROM alpine:3.18
RUN addgroup -S appgroup && adduser -S nonroot -G appgroup
WORKDIR /app
COPY --from=builder /dist/main /app/main
RUN chown -R nonroot:appgroup /app
EXPOSE 8080
USER nonroot
ENTRYPOINT [ "/app/main" ]