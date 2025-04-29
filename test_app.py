import pytest
from app import app

@pytest.fixture
def client():
    app.testing = True
    return app.test_client()

# The test function remains the same
def test_index(client):
    response = client.get("/")
    assert response.status_code == 200
    assert isinstance(response.data.decode(), str)

