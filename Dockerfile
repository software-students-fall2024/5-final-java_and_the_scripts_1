FROM python:3.9-slim

WORKDIR /app
COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 5000

#CMD ["gunicorn", "--bind", "0.0.0.0:5000", "--workers", "3","--timeout", "160", "app:app" ]
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

