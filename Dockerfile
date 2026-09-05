FROM python:3.15.0rc2-alpine3.24

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . . 

CMD ["python3", "m", "flask", "run", "--host=0.0.0.0"]