import tweepy
import os


class TwitterClient:

    def __init__(self):
        consumer_key = os.getenv('TWITTER_BOT_CONSUMER_KEY')
        consumer_secret = os.getenv('TWITTER_BOT_CONSUMER_SECRET')
        access_token = os.getenv('TWITTER_BOT_ACCESS_TOKEN')
        access_secret = os.getenv('TWITTER_BOT_ACCESS_SECRET')
        # Authenticate to Twitter
        self.__client = tweepy.Client(
            consumer_key=consumer_key,
            consumer_secret=consumer_secret,
            access_token=access_token,
            access_token_secret=access_secret
        )

    def create_tweet(self, text):
        response = self.__client.create_tweet(text=text)
        return response
