# commands used within docker
all: main test

main:
	python main.py

test:
	pytest test_test1.py

# target to build docker image outside the devcontainer
build: 
	docker build -t test-devcontainer .

# target to run docker image outside the devcontainer
run:
	docker run -it --rm test-devcontainer 