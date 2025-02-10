cd /home/ubuntu
uvicorn main:app --host 0.0.0.0 --port 8000 > /dev/app.log 2>&1 &
