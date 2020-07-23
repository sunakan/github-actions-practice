include ../shared-makefiles/help.mk
include ../shared-makefiles/readme.mk

################################################################################
# 変数
################################################################################
FILE_PATH := ../.github/workflows/$(shell basename $(PWD)).yml

################################################################################
# タスク
################################################################################
.PHONY: step-01
step-01:
	echo すてっぷ１

.PHONY: step-02
step-02:
	echo すてっぷ２

.PHONY: step-03
step-03:
	echo すてっぷ３

.PHONY: step-04
step-04:
	echo すてっぷ４

.PHONY: cat
cat: ## ワークフローを見る
	@cat $(FILE_PATH) | ../ytt -f-

.PHONY: show
show: ## 簡単な説明
	@cat $(FILE_PATH) \
	| ../ytt -f- --output json \
	| jq '.jobs[] | {name: .name, steps: .steps}'
