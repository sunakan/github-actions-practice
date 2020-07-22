include ../shared-makefiles/help.mk

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

define cat
	cat ../.github/workflows/02-ci.yml
endef
.PHONY: cat
cat: ## ワークフローを見る
	@$(cat) | ../ytt -f-

.PHONY: show
show: ## 簡単な説明
	@$(cat) \
	| ../ytt -f- --output json \
	| jq '.jobs[] | {name: .name, steps: .steps}'
