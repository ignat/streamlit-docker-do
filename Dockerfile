FROM python:3.9-buster

WORKDIR /app

COPY . .
# These two have problems with slim-buster
# RUN pip install backports.zoneinfo
# RUN pip install argon2-cffi
RUN pip install -r requirements.txt

EXPOSE 8501

CMD ["streamlit", "run", "main.py"]
