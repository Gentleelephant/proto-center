.PHONY: build push tag

help:
	@echo "use [make push]: push code to buf.build"
	@echo "use [make build]: build project"
	@echo "use [make tag]: build tag to pb.go file. please ignore error!"

build:
	@buf generate
	@sh ./build.sh
push:
	@cd ./proto/service/account && buf push
	@cd ./proto/service/product && buf push
tag:
	@sh ./build.sh
