.PHONY: build generate-go push

build:
	@echo "use [make generate-go]: generate code for go"
	@echo "use [make push]: push code to buf.build"

generate-go:
	@buf generate
push:
	@cd ./proto/service/account && buf push
	@cd ./proto/service/product && buf push