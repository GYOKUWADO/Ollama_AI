@echo off

chcp 65001

:遅延環境変数を使用する宣言
setlocal enabledelayedexpansion

set test=
echo REQ_FROM_PROJECT:\n%Q% > Str.txt
echo \n >> Str.txt
echo Ollama_Model_llama2: >> Str.txt

FOR /F "usebackq tokens=1,2,3,4 delims=," %%i in (A.txt) do (
  set test=%%k
  set test0=!test:~12,-1!
  echo !test0! >> Str.txt
)

python Q_AI_Str_Sort.py

type Str.txt | python -c "import sys; print('\n'.join(' '.join(c) for c in zip(*(l.split() for l in sys.stdin.readlines() if l.strip()))))" > AI_MSG.txt

chcp 932