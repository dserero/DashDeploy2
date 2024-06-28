FROM python:3.9-slim

COPY requirements.txt /tmp/
COPY ./app /app

RUN pip install --no-cache-dir --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org --upgrade -r /tmp/requirements.txt

CMD ["python", "/app/main.py"]