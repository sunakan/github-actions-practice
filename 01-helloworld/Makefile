include ../shared-makefiles/help.mk

################################################################################
# タスク
################################################################################
define cat
	cat ../.github/workflows/01-helloworld.yml
endef
.PHONY: cat
cat: ## ワークフローを見る
	@$(cat) | ../ytt -f-

.PHONY: show
show: ## 簡単な説明
	@$(cat) \
	| ../ytt -f- --output json \
	| jq '.jobs.build | {name: .name, steps: .steps}'
