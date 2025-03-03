import requests
import json

def test_requests()-> None:
    endpoint = 'https://fake-json-api.mock.beeceptor.com/users'
    result = requests.get(endpoint)
    assert result.status_code < 400
    o = json.loads(result.text)
    assert isinstance(o, list)

def main()-> None:
    endpoint = 'https://fake-json-api.mock.beeceptor.com/users'
    result = requests.get(endpoint)
    assert result.status_code < 400
    o = json.loads(result.text)
    assert isinstance(o, list)

