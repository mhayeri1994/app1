

#RUN apk add --no-cache ca-certificates

#COPY --from=builder /app/target/release/app1 /usr/local/bin/

# Run the application
#CMD ["app1"]

#FROM rust:1 AS builder
FROM rust:1.70-alpine as builder
WORKDIR /app
#COPY Cargo.toml Cargo.lock* ./
#COPY src ./src
#RUN cargo build --release

FROM debian:bookworm-slim
#FROM alpine:3.23.3
WORKDIR /app
COPY --from=builder /app/target/release/app1 /app/app1

CMD ["./app1"]
