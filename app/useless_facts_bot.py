import os
from clients.twitter_client import TwitterClient
from clients.network_client import NetworkClient

useless_facts_url = os.getenv('USELESS_FACTS_URL')
fact = NetworkClient.get_useless_fact(useless_facts_url)

twitter_client = TwitterClient()
response = twitter_client.create_tweet(f"{fact} #UselessFacts #facts #useless")

print(response)
