include ../shared-makefiles/help.mk
include ../shared-makefiles/readme.mk

################################################################################
# 変数
################################################################################
FILE_PATH := ../.github/workflows/$(shell basename $(PWD)).yml
GITHUB_PERSONAL_TOKEN   := dummy
GITHUB_REPOSITORY_OWNER := sunakan
GITHUB_REPOSITORY_NAME  := $(shell basename $(shell git rev-parse --show-toplevel))
GITHUB_REPOSITORY := $(GITHUB_REPOSITORY_OWNER)/$(GITHUB_REPOSITORY_NAME)

################################################################################
# タスク
################################################################################
.PHONY: cat
cat: ## ワークフローを見る
	@cat $(FILE_PATH) | ../ytt -f-

.PHONY: show
show: ## 簡単な説明
	@cat $(FILE_PATH) \
	| ../ytt -f- --output json \
	| jq '.jobs[] | {name: .name, steps: .steps}'

.PHONY: dispatch
dispatch: ## curlで実行
	@curl \
		-X POST \
		--header "Authorization: token $(GITHUB_PERSONAL_TOKEN)" \
		--data '{"event_type": "hello"}' \
		https://api.github.com/repos/$(GITHUB_REPOSITORY)/dispatches
