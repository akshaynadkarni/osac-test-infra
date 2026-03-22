REPORTS_DIR ?= reports

.PHONY: test-vmaas lint format

test-vmaas:
	pytest tests/vmaas/ -v $(if $(TEST),-k "$(TEST)") --junitxml=$(REPORTS_DIR)/vmaas.xml

lint:
	ruff check tests/
	ruff format --check tests/

format:
	ruff format tests/
