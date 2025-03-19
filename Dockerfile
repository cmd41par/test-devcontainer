# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.13-bookworm as builder

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Install Python dependencies
RUN pip install pandas pytest ipykernel matplotlib
# pytest ipykernel matplotlib
# no pip install - docker image is 253MB
# add pandas - docker image is 401MB
# add pytest - docker image is 405MB
# add ipykernel - docker image is 472MB
# add matplotlib - docker image is 555MB


FROM python:3.13-slim-bookworm as prod

# Install git and make, then remove unnecessary files
RUN apt-get update && apt-get install -y git make && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy the Python dependencies from the builder stage
COPY --from=builder /usr/local/lib/python3.13/site-packages /usr/local/lib/python3.13/site-packages
COPY --from=builder /usr/local/bin /usr/local/bin

# Start SSH service and the application
# CMD ["/bin/bash"]