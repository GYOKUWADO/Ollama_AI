set /p Q="AIに送るリクエストを入力してください:"
curl -X POST http://localhost:11434/api/generate -d "{  \"model\": \"llama2\",  \"prompt\":\"%Q%\" }" > A.txt
call Q_AI_Sort.bat
python Q_AI_msg_replace.py