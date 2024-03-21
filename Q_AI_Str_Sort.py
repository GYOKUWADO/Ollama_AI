file_name = "./Str.txt"

with open(file_name,encoding="utf-8") as f:
     fileText = f.read()
     str = fileText.replace('ECHO is off.', ' ').replace('ECHO is on.', ' ')
     print(str)

with open(file_name, mode="w", encoding="utf-8") as f:
    f.write(str)