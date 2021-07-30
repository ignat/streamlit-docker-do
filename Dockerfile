FROM python:3.8.11-slim-buster

WORKDIR /app

RUN pip install streamlit

COPY *.py /app/

EXPOSE 8501

CMD ["streamlit", "run", "hello.py"]
