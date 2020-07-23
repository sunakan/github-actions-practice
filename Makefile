include shared-makefiles/gitignore.mk
include shared-makefiles/ytt.mk
include shared-makefiles/help.mk

.PHONY: readme-ci
readme-ci:
	@ls -1 **/Makefile \
	| xargs -I {path} dirname {path} \
	| xargs -I {path} bash -c "cd {path} && make generate-readme"
