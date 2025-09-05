# University Timetable API

Backend for generating and managing university timetables.  
Built in Go (1.22.3), contract-first via OpenAPI, with Postgres + Redis.

---

## Quickstart

### Requirements
- Go 1.22+
- Docker + Docker Compose
- `golang-migrate` (for DB migrations)

### Run locally

```bash
# Install deps
go mod tidy

# Start infra
docker compose up -d

# Run server
go run ./cmd/api

# Migrations
make migrate-up

# Dev mode (auto-reload)
make dev
```
