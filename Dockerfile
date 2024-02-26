FROM python:3.9-slim

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

COPY main.py /app/main.py

WORKDIR /app

VOLUME /poc-wb /app/poc-wb

CMD ["python", "main.py"]