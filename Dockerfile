FROM rust:1.69-buster as builder

WORKDIR /app

ARG DB_URL

ENV DB_URL=$DB_URL

COPY . .

RUN cargo build --release


FROM debian:buster-slim

WORKDIR /usr/local/bin

COPY --from=builder /app/target/release/rust-crud-api .

CMD ["./rust-crud-api"]
