docker-build:
	docker build . -f Dockerfile --tag dsrp:1.0

docker-run:
	docker run -it \
		--rm \
		-p 8889:8888 \
		-v $(PWD)/:/app:rw \
		dsrp:1.0