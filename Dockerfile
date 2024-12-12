FROM python:3.11-slim
RUN apt-get update -y && apt-get install -y python3 libpq-dev gcc
COPY . /code
WORKDIR /code
RUN pip install -r requirements.txt
CMD ./startup.sh