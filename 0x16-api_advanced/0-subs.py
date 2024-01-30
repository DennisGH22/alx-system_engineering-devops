#!/usr/bin/python3
"""
Queries the Reddit API and
returns the number of subscribers for a given subreddit.
"""
import requests


def number_of_subscribers(subreddit):
    url = f'https://www.reddit.com/r/{subreddit}/about.json'

    headers = {'User-Agent': 'my-reddit-client'}

    req = requests.get(url.format(subreddit), headers=headers)
    if req.status_code != 200:
        return 0
    return req.json().get('data').get('subscribers')
