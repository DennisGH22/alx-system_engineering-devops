#!/usr/bin/python3
"""Print titles of the first 10 hot posts for a subreddit."""
import requests


def top_ten(subreddit):
    base_url = 'https://www.reddit.com/r/{}/hot.json?limit=10'
    headers = {'User-agent': 'my-reddit-client'}

    try:
        response = requests.get(base_url.format(subreddit), headers=headers)

        response.raise_for_status()

        data = response.json()

        for post in data['data']['children']:
            print(post['data']['title'])
    except Exception:
        print("None")
