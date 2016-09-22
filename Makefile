.PHONY: dataPH

dataPH:
		python3 src/01_getData.py

coverage:
		nosetests ./tests --with-coverage

test:
		nosetests ./tests

requirements:
		pip3 install -r requirements.txt

all: dataPH coverage test requirements
