from clients.twitter_client import TwitterClient
from clients.network_client import NetworkClient


fact = NetworkClient.get_useless_fact("https://useless-facts.sameerkumar.website/api")

twitter_client = TwitterClient()
response = twitter_client.create_tweet(f"{fact} #UselessFacts #facts #useless")

print(response)
