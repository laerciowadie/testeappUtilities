FROM cassandra

MAINTAINER Laercio Wadie <laercio.wadie@gmail.com>

USER root

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY cloudera.list /etc/apt/sources.list.d/cloudera.list
COPY package.json /usr/src/app/

RUN apt-get update
RUN apt-get install -y --force-yes hadoop-client
RUN apt-get install -y --force-yes spark-core spark-master spark-worker spark-history-server spark-python

RUN apt-get install -y nodejs
RUN apt-get install -y nodejs-legacy
RUN apt-get install -y npm
RUN npm install

RUN apt-get install -y python-pip
RUN pip install cassandra-driver
RUN pip install pysparkling
RUN apt-get install -y vim
RUN update-ca-certificates -f

RUN npm install cassandra-driver

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080

CMD [ "npm", "start" ]

