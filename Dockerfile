# 
FROM python:3.9

# 
WORKDIR /fastapi-app

# 
COPY ./requirements.txt /fastapi-app/requirements.txt

# 
RUN pip install --no-cache-dir --upgrade -r /fastapi-app/requirements.txt

# 
COPY ./app /fastapi-app/app

# 
CMD ["uvicorn", "app.app:app", "--host", "0.0.0.0", "--port", "8000"]
