.PHONY: build check

build:
	@go build main.go

generate-go:

check:
	@go langci-lint run