from fastapi.testclient import TestClient
from app.main import app


client = TestClient(app)

def test_bonus_endpoint_low_sales():
    response = client.get("/bonus?sales=40000")
    assert response.status_code == 200
    assert response.json()["bonus"] == 2000

def test_bonus_endpoint_negative_sales():
    response = client.get("/bonus?sales=-1")
    assert response.status_code == 400
