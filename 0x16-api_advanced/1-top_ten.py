#!/usr/bin/python3
"""Print titles of the first 10 hot posts for a subreddit."""
import requests


def top_ten(subreddit):
    base_url = f'https://www.reddit.com/r/{subreddit}/hot.json?limit=10'
    headers = {'User-agent': 'Mozilla/5.0'}

    try:
        response = requests.get(base_url,
                                headers=headers, allow_redirects=False)

        response.raise_for_status()

        data = response.json()

        for post in data['data']['children']:
            print(post['data']['title'])
    except requests.exceptions.RequestException as e:
        print(f"Error: {e}")
        return None
