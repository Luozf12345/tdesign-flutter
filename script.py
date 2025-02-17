# script.py
import openai
import os

openai.api_key = os.getenv('HUNYUAN_API_KEY')

response = openai.ChatCompletion.create(
    model='hunyuan-turbo',
    messages=[{'role': 'user', 'content': 'Hello, GitHub Actions!'}]
)

print(response.choices[0].message['content'])