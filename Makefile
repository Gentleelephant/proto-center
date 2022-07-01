.PHONY: build check

generate-go:

check:
	@go langci-lint run