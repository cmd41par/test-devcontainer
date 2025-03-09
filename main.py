
import getpass
import os
import sys
import pandas as pd


def main():
    current_user = getpass.getuser()
    print(f"Python version: {sys.version}")
    print(f"Current user: {current_user}")
    print(f"OS name: {os.name}")
    print(f"Current directory: {os.getcwd()}")
    print(f"Pandas version: {pd.__version__}")

    # test volume is on the same level as this project on my machine
    test_volume_path = "/test-volume"
    if os.path.exists(test_volume_path):
        print(f"{test_volume_path} exists")
    else:
        print(f"{test_volume_path} does not exist")
    print(f"environment var ENV = {os.environ.get('ENV')}")


if __name__ == "__main__":
    main()
