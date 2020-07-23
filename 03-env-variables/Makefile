include ../shared-makefiles/help.mk
include ../shared-makefiles/readme.mk

################################################################################
# 変数
################################################################################
FILE_PATH := ../.github/workflows/$(shell basename $(PWD)).yml

################################################################################
# タスク
################################################################################
.PHONY: home
home: ## ホームディレクトリ
	echo ${HOME}

.PHONY: github-workflow
github-workflow: ## ワークフロー名
	echo ${GITHUB_WORKFLOW}

.PHONY: github-run-id
github-run-id: ## ワークフロー毎のユニークID
	echo ${GITHUB_RUN_ID}

.PHONY: github-run-number
github-run-number: ## ワークフロー毎の1から始まる番号
	echo ${GITHUB_RUN_NUMBER}

.PHONY: github-action
github-action: ## 現在実行中のアクションのユニークなID
	echo ${GITHUB_ACTION}

.PHONY: github-actor
github-actor: ## ワークフローを実行した人 or アプリ名
	echo ${GITHUB_ACTOR}

.PHONY: github-repository
github-repository: ## リポジトリ名(owner/repository)
	echo ${GITHUB_REPOSITORY}

.PHONY: github-event-name
github-event-name: ## ワークフローを実行したイベント名
	echo ${GITHUB_EVENT_NAME}

.PHONY: github-event-path
github-event-path: ## ワークフローを実行したイベントのペイロードが保存されたファイルへのパス
	echo ${GITHUB_EVENT_PATH}

.PHONY: github-workspace
github-workspace: ## ワークスペースディレクトリへのパス
	echo ${GITHUB_WORKSPACE}

.PHONY: github-sha
github-sha: ## ワークフローが実行されているコミットSHA
	echo ${GITHUB_SHA}

.PHONY: github-head-ref
github-head-ref: ## ソースブランチ名(pull reqイベントのみ)
	echo ${GITHUB_HEAD_REF}

.PHONY: github-base-ref
github-base-ref: ## ベースブランチ名(pull reqイベントのみ)
	echo ${GITHUB_BASE_REF}

.PHONY: cat
cat: ## ワークフローを見る
	@cat $(FILE_PATH) | ../ytt -f-

.PHONY: show
show: ## 簡単な説明
	@cat $(FILE_PATH) \
	| ../ytt -f- --output json \
	| jq '.jobs[] | {name: .name, steps: .steps}'
