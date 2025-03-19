import getpass
import pytest


@pytest.mark.parametrize("user_id", ["root"])
def test_get_user(user_id):
    assert getpass.getuser() == user_id
