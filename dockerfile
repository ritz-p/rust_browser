FROM rust:latest

COPY rust-toolchain.toml rust-toolchain.toml
RUN apt update && \
    apt install -y qemu-system git wget
WORKDIR /workspace
ENV USER=root
ENV RUST_BACKTRACE=1
