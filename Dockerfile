FROM python:3.7

RUN mkdir -p /code

ADD code /code

WORKDIR /code

RUN pip3 install -r requirements.txt
RUN pip3 install streamlit-0.68.0-py2.py3-none-any.whl
RUN pip3 install tensorflow==1.15.4

CMD [ "streamlit", "run", "streamlit_app.py" ]