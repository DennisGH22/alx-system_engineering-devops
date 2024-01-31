#!/usr/bin/python3
"""
Queries the Reddit API and
returns the number of subscribers for a given subreddit.
"""
import requests


def number_of_subscribers(subreddit):
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    headers = {'User-Agent': 'linux:0x16.api.advanced:v1.0.0 (by /u/bdov_)'}
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        data = response.json()
        return data.get('data').get('subscribers')
    else:
        return 0
