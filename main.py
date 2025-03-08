
import getpass
import os
import sys


def main():
    current_user = getpass.getuser()
    print(f"Python version: {sys.version}")
    print(f"Current user: {current_user}")
    print(f"OS name: {os.name}")
    print("Hello World!")
    print("This is a test.")


if __name__ == "__main__":
    main()
