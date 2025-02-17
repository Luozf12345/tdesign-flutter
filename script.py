# script.py
import os
from openai import OpenAI
import json

# 获取事件数据文件路径
event_path = os.getenv('GITHUB_EVENT_PATH')

if not event_path:
    raise ValueError("GITHUB_EVENT_PATH 环境变量未找到")

# 读取并解析 JSON 数据
with open(event_path, 'r') as f:
    event_data = json.load(f)

# 提取评论内容
comment_body = event_data.get('comment', {}).get('body')


# Non-streaming:
# print("----- standard event_data:",event_data)
# print("----- standard comment_body:",comment_body)
print("----- standard request, comment_body:",comment_body)
# gets API Key from environment variable OPENAI_API_KEY
client = OpenAI(
    api_key=os.getenv('HUNYUAN_API_KEY'), # 混元 APIKey
    base_url="https://api.hunyuan.cloud.tencent.com/v1", # 混元 endpoint
)

completion = client.chat.completions.create(
    model="hunyuan-turbo",
    messages=[
        {
            "role": "user",
            "content": f"""请帮我把以下中文文档翻译成英文,并以markdown格式输出:
{comment_body}""",
        },
    ],
)
print(completion.choices[0].message.content)