import responses
import requests

@responses.activate
def test_mock_api():
    responses.add(
        responses.GET,
        "https://api.exemple.com/data",
        json={"message": "success"},
        status=200
    )

    resp = requests.get("https://api.exemple.com/data")
    assert resp.status_code == 200
    assert resp.json() == {"message": "success"}
