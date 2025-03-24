# For more information, please refer to https://aka.ms/vscode-docker-python
# FROM python:3.13-bookworm as builder
FROM chainguard/python:latest-dev as builder

USER root
RUN apk update && apk add posix-libc-utils && ldconfig
# USER nonroot

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1
# Create a virtual environment
RUN python -m venv /opt/venv

# Ensure the virtual environment is used:
ENV PATH="/opt/venv/bin:$PATH"
# Install Python dependencies
RUN pip install pandas pytest ipykernel matplotlib
RUN pip show pytest
# pytest ipykernel matplotlib
# no pip install - docker image is 253MB
# add pandas - docker image is 401MB
# add pytest - docker image is 405MB
# add ipykernel - docker image is 472MB
# add matplotlib - docker image is 555MB

WORKDIR /app
COPY . /app

USER root


# FROM python:3.13-slim-bookworm as prod
FROM cgr.dev/chainguard/python:latest-dev as prod
# Install git and make, then remove unnecessary files
RUN apt-get update && apt-get install -y git make && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy the Python dependencies from the builder stage
COPY --from=builder /opt/venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
#COPY --from=builder /usr/local/bin /usr/local/bin

# Start SSH service and the application
#CMD ["/bin/bash"]