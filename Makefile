.PHONY: build push tag

help:
	@echo "use [make push]: push code to buf.build"
	@echo "use [make build]: build project"
	@echo "use [make tag]: build tag to pb.go file. please ignore error!"

build:
	@buf generate
push:
	@cd ./proto/service/account && buf push
	@cd ./proto/service/product && buf push
tag:
	protoc-go-inject-tag -input="*.pb.go"