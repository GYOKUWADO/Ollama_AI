set /p Q="AI�ɑ��郊�N�G�X�g����͂��Ă�������:"
curl -X POST http://localhost:11434/api/generate -d "{  \"model\": \"llama2\",  \"prompt\":\"%Q%\" }" > A.txt
call Q_AI_Sort.bat
python Q_AI_msg_replace.py