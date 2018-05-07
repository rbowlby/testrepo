.PHONY: all unittest doctest inttest lint test clean
SHELL := /bin/sh

#install: _check_profiles
#	pip --no-cache-dir install -r requirements.txt
#
#_yamllint:
#	yamllint ./policies
#
#_validate:
#	find ./policies ./reports -iname \*.yaml -o -iname \*.yml -exec custodian validate {} \;
#
clean:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f  {} +
	
lint:
	true

# run tests using setup.py so prereqs for testing are only installed when needed
pytest:
	python setup.py test

test: lint pytest

# use test next time
tests: test
