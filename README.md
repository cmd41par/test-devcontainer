# Demonstrate Microsoft Devcontainers for Python development environments
This project demonstrates using Microsoft Devcontainers for developing Python projects.  The project has a branch for each container feature added so you can start simple and add features in a reliable way.
Using Devcontainers, I have not installed Python or created any virtual environments but I let the container manage all of that.
Using Devcontainers you are editing source code and all project information inside the Devcontainer.  The only time this becomes problematic is if you add a Devcontainer configuration that causes the container build to fail. That is why I have demonstrated this step by step approach to adding features to your continer.
**If you switch between branches on your dev machine, make sure to rebuild the container with the current code and configuration.**
## Branch A010-Basic-Container
Features:
- Python 3.13 environment
- VSCode Python extensions for coding and debugging installed
- Project directory is available within container
- Github integrated
- Run and debug Python script
- Bash terminal to access container
## Branch A020-Container-with-Pandas
Features Added:
- Execute pip install requirements.txt to install Pandas
- Print Pandas version main.py
## Branch A030-Add-volume-and-environment-variables
Features:
- add a volume to a local file
- add an environment example 
- add a pytest file
