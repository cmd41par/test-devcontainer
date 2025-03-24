# commands used within docker
all: main test

main:
	python main.py

test:
	pytest test_test1.py

build: 
	docker build -t test-devcontainer .

run:
	docker run -it --rm test-devcontainer 