all:
	make init csvstats

init: ## create directories
	mkdir -p stats

csvstats:  ## create csvstats
	for i in csv/*csv; do j=`basename $$i .csv`; csvstat $$i > stats/$$j.txt ; done
