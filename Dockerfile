FROM python:3.7.6-stretch

RUN pip install pip --upgrade
RUN pip install ansible 

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass
RUN apt-get install python3-apt -y
RUN apt-get install python-apt -y
WORKDIR /work

