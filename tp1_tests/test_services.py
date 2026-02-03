import pytest
from app.services import compute_bonus

def test_bonus_low_sales():
    assert compute_bonus(40000) == 2000

def test_bonus_high_sales():
    assert compute_bonus(60000) == 6000

def test_negative_sales():
    with pytest.raises(ValueError):
        compute_bonus(-1000)
