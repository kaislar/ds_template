## Run all pre-commit hooks
.PHONY: precommit
precommit:
	pre-commit run --all-file --show-diff-on-failure
## Lint your code using pylint
.PHONY: lint
lint:
	python -m pylint --version
	python -m pylint src
## Run tests using pytest
.PHONY: test
test:
	python -m pytest --version
	python -m pytest tests
## Format your code using black
.PHONY: black
black:
	python -m black --version
	python -m black .
## Run ci part
.PHONY: ci
ci: precommit test