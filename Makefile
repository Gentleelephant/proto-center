.PHONY: build push

help:
	@echo "use [make generate-go]: generate code for go"
	@echo "use [make push]: push code to buf.build"

build:
	@buf generate
push:
	@cd ./proto/service/account && buf push
	@cd ./proto/service/product && buf push