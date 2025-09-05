/
├─ go.mod
├─ go.sum
├─ Makefile                         # build, test, lint, generate, run
├─ README.md
├─ .env.example
├─ .gitignore
├─ Dockerfile
├─ docker-compose.yml               # local dev: postgres, redis, jaeger, etc.
├─ configs/
│  ├─ config.example.yaml
│  └─ config.schema.json
├─ migrations/                      # SQL migrations (golang-migrate or atlas)
│  ├─ 0001_init.sql
│  └─ 0002_add_indexes.sql
├─ api/                             # Contracts & generated code (do not hand-edit)
│  ├─ openapi/
│  │  ├─ timetable.yaml            # the Swagger you defined
│  │  ├─ gen-go/                   # generated Go server/client stubs (oapi-codegen)
│  │  └─ gen-ts/                   # generated TS client SDK (openapi-typescript, etc.)
│  └─ proto/
│     ├─ solver.proto              # optional gRPC port for solver/jobs
│     └─ gen-go/                   # generated Go protobuf/grpc code
├─ cmd/
│  ├─ api/                         # main HTTP/REST (and gRPC) server
│  │  └─ main.go
│  └─ cli/                         # command-line tool (admin ops, importers)
│     └─ main.go
├─ internal/                       # application-specific code (not exported)
│  ├─ app/                         # use cases (application services)
│  │  ├─ university/
│  │  │  ├─ service.go            # orchestrates domain + repos + policies
│  │  │  └─ dto.go                # app-level DTOs mapped to/from HTTP DTOs
│  │  ├─ campus/
│  │  ├─ building/
│  │  ├─ classroom/
│  │  ├─ program/
│  │  ├─ semester/
│  │  ├─ cohort/
│  │  ├─ subject/
│  │  ├─ offering/
│  │  ├─ professor/
│  │  ├─ timeslot/
│  │  ├─ session/
│  │  └─ solver/                  # orchestrates solving flow using domain.SolverPort
│  │     ├─ service.go
│  │     └─ biases.go
│  ├─ domain/                      # pure domain (entities, value objects, ports)
│  │  ├─ university.go
│  │  ├─ campus.go
│  │  ├─ building.go
│  │  ├─ classroom.go
│  │  ├─ program.go
│  │  ├─ semester.go
│  │  ├─ cohort.go
│  │  ├─ subject.go
│  │  ├─ offering.go
│  │  ├─ professor.go
│  │  ├─ timeslot.go
│  │  ├─ session.go
│  │  ├─ constraints.go           # hard constraints (room/cohort/prof overlaps)
│  │  ├─ scoring.go               # soft constraints & bias weights
│  │  ├─ ports.go                 # repository interfaces + SolverPort, NotifierPort
│  │  └─ errors.go                # domain error types
│  ├─ adapters/
│  │  ├─ http/                    # REST handlers, middlewares, request/response DTOs
│  │  │  ├─ server.go             # HTTP server setup (chi/echo/fiber)
│  │  │  ├─ middleware.go         # auth, logging, request-id, recover
│  │  │  ├─ router.go             # route registration, bind to handlers
│  │  │  ├─ handlers/             # one file per aggregate; thin controllers
│  │  │  │  ├─ university_handler.go
│  │  │  │  ├─ campus_handler.go
│  │  │  │  ├─ building_handler.go
│  │  │  │  ├─ classroom_handler.go
│  │  │  │  ├─ program_handler.go
│  │  │  │  ├─ semester_handler.go
│  │  │  │  ├─ cohort_handler.go
│  │  │  │  ├─ subject_handler.go
│  │  │  │  ├─ offering_handler.go
│  │  │  │  ├─ professor_handler.go
│  │  │  │  ├─ timeslot_handler.go
│  │  │  │  ├─ session_handler.go
│  │  │  │  └─ solver_handler.go   # solve, validate, assign, move
│  │  │  └─ dto/                   # HTTP I/O DTOs mirroring Swagger
│  │  │     ├─ common.go
│  │  │     ├─ university_dto.go
│  │  │     ├─ campus_dto.go
│  │  │     ├─ ...
│  │  ├─ grpc/                     # optional gRPC server for internal calls/solver
│  │  │  └─ server.go
│  │  ├─ repo/                     # DB adapters implementing domain ports
│  │  │  ├─ postgres/
│  │  │  │  ├─ db.go              # connection pool, migrations hook
│  │  │  │  ├─ sqlc/              # generated queries (sqlc)
│  │  │  │  │  ├─ queries.sql
│  │  │  │  │  └─ gen.go
│  │  │  │  ├─ university_repo.go
│  │  │  │  ├─ campus_repo.go
│  │  │  │  ├─ ... (one per aggregate)
│  │  │  └─ memory/               # in-memory impl for tests
│  │  ├─ solver/                   # plug-in solver implementations
│  │  │  ├─ greedy/               # baseline heuristic
│  │  │  │  ├─ solver.go
│  │  │  │  └─ moves.go
│  │  │  └─ ortools/              # optional CP-SAT wrapper via gRPC/FFI later
│  │  ├─ notifier/
│  │  │  └─ ws_hub.go             # WebSocket/SSE push (progress, events)
│  │  ├─ cache/
│  │  │  └─ redis_cache.go        # availability snapshots, locks
│  │  └─ auth/
│  │     └─ jwt.go                # JWT parsing, scopes/roles
│  ├─ config/
│  │  └─ config.go                # struct, load from env/file, validate
│  ├─ logging/
│  │  └─ logger.go                # zerolog/zap setup
│  ├─ telemetry/
│  │  ├─ metrics.go               # Prometheus
│  │  └─ tracing.go               # OpenTelemetry
│  ├─ utils/
│  │  ├─ validate.go              # DTO validation helpers
│  │  ├─ mapper.go                # map HTTP DTO ↔ app DTO ↔ domain
│  │  └─ timeutil.go              # HH:MM helpers, day-of-week helpers
│  └─ bootstrap/
│     └─ wire.go                  # optional google/wire DI setup
├─ pkg/                           # reusable libs (exported), no app deps
│  └─ contracts/                  # versioned OpenAPI/proto copies if you want
└─ test/
   ├─ integration/
   │  ├─ api_university_test.go
   │  └─ solver_integration_test.go
   └─ e2e/
      └─ smoke_test.go
