FROM rust:latest

COPY ./ /app
WORKDIR /app

RUN cargo build --release

EXPOSE 8088

CMD ["./target/release/image_upload"]
