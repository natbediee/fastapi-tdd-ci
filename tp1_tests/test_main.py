from fastapi.testclient import TestClient
import os
import sys
from tp1.app.main import app

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))


client = TestClient(app)

def test_bonus_endpoint_low_sales():
    response = client.get("/bonus?sales=40000")
    assert response.status_code == 200
    assert response.json()["bonus"] == 2000

def test_bonus_endpoint_negative_sales():
    response = client.get("/bonus?sales=-1")
    assert response.status_code == 400
