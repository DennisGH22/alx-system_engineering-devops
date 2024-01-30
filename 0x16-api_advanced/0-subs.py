#!/usr/bin/python3
"""
ueries the Reddit API and
returns the number of subscribers for a given subreddit.
"""
import requests


def number_of_subscribers(subreddit):
    url = f'https://www.reddit.com/r/{subreddit}/about.json'

    headers = {'User-Agent': 'my-reddit-client'}

    try:
        response = requests.get(url, headers=headers)

        if response.status_code == 200:
            data = response.json()
            return data['data']['subscribers']
        else:
            return 0
    except Exception as e:
        print(f"Error: {e}")
        return 0
