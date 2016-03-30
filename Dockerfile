FROM buildpack-deps:jessie-curl

RUN apt-get update
RUN apt-get install -y build-essential python-dev python-pip

ENV SIXPACK_PORT=5000

RUN pip install sixpack

EXPOSE 5000

CMD [ "sixpack" ]
