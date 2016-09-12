.PHONY: all

dataPH:
		python3 src/01_getData.py

coverage:
		nosetests ./tests --with-coverage

test:
		nosetests ./tests

requirements:
		pip3 install -r requirements.txt

analysis:
		python3 src/02_analysis.py

# sites captured by both Limma and DSS
all: dataPH coverage test requirements analysis
