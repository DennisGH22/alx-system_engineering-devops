#!/usr/bin/python3
"""Print titles of the first 10 hot posts for a subreddit."""
import requests


def top_ten(subreddit):
    base_url = f'https://www.reddit.com/r/{subreddit}/hot.json?limit=10'
    headers = {'User-Agent': 'Mozilla/5.0'}

    try:
        response = requests.get(base_url, headers=headers)
        response.raise_for_status()

        data = response.json()
        posts = data.get('data', {}).get('children', [])

        for post in posts:
            post_title = post.get('data', {}).get('title')
            print(post_title)
    except Exception:
        print('None')
