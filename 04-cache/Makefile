include ../shared-makefiles/help.mk
include ../shared-makefiles/readme.mk

################################################################################
# 変数
################################################################################
FILE_PATH := ../.github/workflows/$(shell basename $(PWD)).yml

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
