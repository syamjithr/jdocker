FROM alpine:latest
RUN mkdir /myapp
COPY ./app.py /myapp
COPY ./requirements.txt /myapp
RUN apk add python3 py-pip
RUN pip3 install -r /myapp/requirements.txt
CMD ["python3" , "/myapp/app.py"]
