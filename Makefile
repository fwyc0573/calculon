.SUFFIXES:
.PHONY: help install install-dev uninstall clean lint test count

help:
	@echo "options are: install install-dev uninstall clean lint test count"

install:
	pip install .

install-dev:
	pip install --editable .

uninstall:
	pip uninstall -y calculon

clean:
	rm -rf build dist calculon.egg-info calculon/*.pyc calculon/__pycache__ calculon/*/__pycache__ test/*.pyc test/__pycache__

lint:
	pylint -r n calculon

test:
	python3 -m unittest -v -f --buffer
	@echo -e "Unit testing successful!\n\n"
	./test/test.sh

count:
	@wc calculon/*.py test/*.py | sort -n -k1
	@echo "files : "$(shell echo calculon/*.py test/*.py | wc -w)
	@echo "commits : "$(shell git rev-list HEAD --count) 
