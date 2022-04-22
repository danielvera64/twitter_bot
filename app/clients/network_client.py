import requests


class NetworkClient:

    @staticmethod
    def get_useless_fact(url: str) -> str:
        response = requests.get(url)
        return response.json()['data']
