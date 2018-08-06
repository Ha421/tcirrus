FROM ekidd/rust-musl-builder

COPY . .
RUN cargo test
RUN cargo build --release

RUN strip target/x86_64-unknown-linux-musl/release/tdocker

ENTRYPOINT ["./target/x86_64-unknown-linux-musl/release/tdocker"]
