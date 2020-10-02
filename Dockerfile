FROM python:latest

ENV DISPLAY=127.0.0.1:0.0

RUN mkdir -p /ML

ADD ML /ML

WORKDIR /ML

RUN pip3 install -r requirements.txt
RUN pip3 install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip
RUN pip3 install --upgrade https://github.com/Theano/Theano/archive/master.zip

ENTRYPOINT ["python3"]

CMD ["NPE.py"]
