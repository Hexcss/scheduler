APP_NAME=university-timetable
PKG=github.com/uneatlantico/university-timetable
GO_FILES=$(shell find . -name '*.go' -not -path "./vendor/*")

.PHONY: all build run dev test lint tidy migrate-up migrate-down docker

all: build

build:
	go build -o bin/$(APP_NAME) ./cmd/api

run:
	go run ./cmd/api

dev:
	air -c .air.toml

test:
	go test ./... -cover

lint:
	golangci-lint run ./...

tidy:
	go mod tidy

# --- Database (golang-migrate) ---
migrate-up:
	migrate -path migrations -database "$$DB_URL" up

migrate-down:
	migrate -path migrations -database "$$DB_URL" down

docker:
	docker compose up --build
