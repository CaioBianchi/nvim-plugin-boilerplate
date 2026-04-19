TEST_CMD = nvim --headless -u NONE -c "luafile tests/minimal_init.lua" -c "PlenaryBustedDirectory tests/spec { minimal_init = 'tests/minimal_init.lua' }" -c qa

.PHONY: test lint format setup-tests

test: setup-tests
	@$(TEST_CMD)

lint:
	@stylua --check .

format:
	@stylua .

setup-tests:
	@./scripts/setup-tests.sh
