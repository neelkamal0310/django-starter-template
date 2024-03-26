FROM python:3.11-slim-bookworm
WORKDIR /app 
EXPOSE 8000
COPY requirements/prod.txt requirements.txt
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt
COPY . /app 
# CMD ["manage.py", "runserver", "0.0.0.0:8000"]
