VENV_NAME = venv

setup:
	python -m venv $(VENV_NAME)
	$(VENV_NAME)/bin/pip install -r requirements.txt || $(VENV_NAME)/Scripts/pip install -r requirements.txt

clean:
	rm -rf $(VENV_NAME) __pycache__ .pytest_cache *.pyc

test:
	$(VENV_NAME)/bin/python -m pytest || $(VENV_NAME)/Scripts/python -m pytest

run:
	$(VENV_NAME)/bin/python app.py || $(VENV_NAME)/Scripts/python app.py

