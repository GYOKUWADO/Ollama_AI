
with open('./AI_MSG.txt', encoding='utf-8') as f:
  msg = f.read()
  x_msg = msg.replace(r'\n', '\n').replace(r'\"', '\"')
  print(x_msg)

with open('./AI_MSG.txt', mode="w", encoding="utf-8") as f:
  f.write(x_msg)