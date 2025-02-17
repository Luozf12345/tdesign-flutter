# script.py
import os
from openai import OpenAI

# gets API Key from environment variable OPENAI_API_KEY
client = OpenAI(
    api_key=os.getenv('HUNYUAN_API_KEY'), # 混元 APIKey
    base_url="https://api.hunyuan.cloud.tencent.com/v1", # 混元 endpoint
)

# Non-streaming:
print("----- standard request -----")
completion = client.chat.completions.create(
    model="hunyuan-turbo",
    messages=[
        {
            "role": "user",
            "content": """请帮我把以下中文文档翻译成英文,并以markdown格式输出:
## 🌈 0.1.8 `2024-12-30` 
### 🚀 Features
- `TDUpload`: 新增Upload组件 @TingShine ([#405](https://github.com/Tencent/tdesign-flutter/pull/405))
- `SearchBar`: 增加键盘动作类型 @ccXxx1aoBai ([#366](https://github.com/Tencent/tdesign-flutter/pull/366))""",
        },
    ],
)
print(completion.choices[0].message.content)