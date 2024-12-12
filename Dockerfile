FROM python:3.11-slim
WORKDIR /code
EXPOSE 8080
RUN apt-get update
RUN apt-get install -y libpq-dev gcc
COPY . /code
RUN pip install -r requirements.txt
CMD /code/startup.sh

# docker build -t proway11 .
# docker run -e DBNAME='proway' -e DBUSER='proway' -e DBPASS='proway' -e DBHOST=172.17.0.2 proway11