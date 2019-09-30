DBVS_PROJECT_DIR = "./"
DBVS_CLI_DIR     = "$(DBVS_PROJECT_DIR)/cmd/dbvs"
DBVS_BIN         = "$(DBVS_CLI_DIR)/dbvs"

GO           ?= go
GOFMT        ?= $(GO)fmt

.PHONY: default
default: test build

.PHONY: test
test:
	@echo ">> Testing DBVS"
	$(GO) test ./...

.PHONY: build
build:
	@echo ">> Building DBVS"
	$(GO) build -o $(DBVS_BIN) $(DBVS_CLI_DIR)

.PHONY: clean
clean:
	@echo ">> Cleaning DBVS"
	rm -fv $(DBVS_BIN)
