FROM python:3.8.11-slim-buster

WORKDIR /app

COPY . .
RUN pip install -r requirements.txt

EXPOSE 8501

CMD ["streamlit", "run", "main.py"]
