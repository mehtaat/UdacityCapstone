## The Makefile includes instructions on: 
# environment setup, install, lint and build


setup:
	# Create a python virtualenv & activate it
	python3 -m venv ~/.devops
	# source ~/.devops-capstone/bin/activate 

install:	# TODO: Add a Docker analysis (DevSecOps)
	# This should be run from inside a virtualenv
	echo "Installing: dependencies..."
	pip install --upgrade pip && pip install -r requirements.txt

	echo
	echo "Installing: hadolint"
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
	chmod +x ./hadolint
	
	
test:
	# Additional, optional, tests could go here
	#python -m pytest -vv app.py
	#python -m pytest 

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	./hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint

run-app:
	python3 app.py

run-docker: build-docker
	./bin/run_docker.sh

upload-docker: build-docker
	./bin/upload_docker.sh

