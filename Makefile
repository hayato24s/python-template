install:
	pip install --upgrade pip
	pip install -r requirements.txt

uninstall:
	pip install --upgrade pip
	pip freeze | xargs pip uninstall -y

freeze:
	pip install --upgrade pip
	pip freeze > requirements.txt

format:
	black src
	isort src

lint:
	flake8 src
