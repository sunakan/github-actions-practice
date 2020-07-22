include shared-makefiles/gitignore.mk
include shared-makefiles/ytt.mk
include shared-makefiles/help.mk

hello-description:
	@cat .github/workflows/01-helloworld.yml \
	| ./ytt -f- --output json \
	| jq '.jobs.build | {name: .name, steps: .steps}'
