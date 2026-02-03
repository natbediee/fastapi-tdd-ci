import pytest
from src.calcul import addition


@pytest.mark.parametrize("a,b,resultat", [
    (1, 1, 2),
    (2, 3, 5),
    (-1, 1, 0)
])
def test_addition_param(a, b, resultat):
    assert addition(a, b) == resultat