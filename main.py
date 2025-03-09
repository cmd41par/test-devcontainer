
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


if __name__ == "__main__":
    main()
