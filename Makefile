build-release:
	cargo build --release

docker-build:
	docker build -t app1 .

docker-run:
	docker run --rm app1

cargo-bloat:
	cargo bloat --release

perf:
	perf record ./target/release/app1
	perf report
