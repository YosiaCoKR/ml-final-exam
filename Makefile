.PHONY: lint fix fmt test check
lint:  ; ruff check .
fix:   ; ruff check . --fix
fmt:   ; ruff format .
test:  ; pytest
check: lint ; ruff format --check . && pytest
