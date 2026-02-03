import pytest
import os
import sys

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))
from src.calcul import addition


@pytest.mark.parametrize("a,b,resultat", [
    (1, 1, 2),
    (2, 3, 5),
    (-1, 1, 0)
])
def test_addition_param(a, b, resultat):
    assert addition(a, b) == resultat