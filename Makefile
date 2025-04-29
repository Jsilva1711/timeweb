VENV_NAME = venv

setup:
	python -m venv $(VENV_NAME)
	. $(VENV_NAME)/bin/pip install -r requirements.txt || $(VENV_NAME)/Scripts/pip install -r requirements.txt

clean:
	rm -rf $(VENV_NAME) __pycache__ .pytest_cache *.pyc

test:
	. $(VENV_NAME)/Scripts/activate && pytest

run:
	. $(VENV_NAME)/Scripts/activate && python app.py

