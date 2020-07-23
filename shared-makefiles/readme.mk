.PHONY: readme
readme:
	@echo '== ワークフロー詳細'
	@echo ''
	@echo '----'
	@echo '$$ make cat'
	@make cat
	@echo '----'
	@echo ''
	@echo '== ざっくりと理解'
	@echo ''
	@echo '----'
	@echo '$$ make show'
	@make show
	@echo '----'
	@echo ''
	@echo '== help'
	@echo ''
	@echo '----'
	@echo '$$ make help'
	@make help
	@echo '----'
	@echo ''

.PHONY: generate-readme
generate-readme:
	@make readme \
	| grep --invert-match 'Entering directory' \
	| grep --invert-match 'Leaving directory' \
	| sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g" \
	> README.adoc
