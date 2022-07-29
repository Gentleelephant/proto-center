.PHONY: build check

build:
	@echo "use [make generate-go]: generate code for go"
	@echo "use [make check]: code review for go"

generate-go:
	@buf generate
check:
	@go langci-lint run