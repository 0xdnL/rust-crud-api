
all: build run

build: src/main.rs
	DB_URL='postgres://postgres:postgres@localhost:5432/postgres' \
	RUST_LOG=all \
	cargo build --release

run:
	./target/release/rust-crud-api


clean:
	rip ./target
