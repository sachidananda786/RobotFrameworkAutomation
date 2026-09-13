.PHONY: install dry-run smoke regression

install:
	python3 -m pip install -r requirements.txt

dry-run:
	robot --dryrun tests

smoke:
	robot --include smoke --outputdir results tests

regression:
	robot --include regression --outputdir results tests
