FROM python:3.6
ENV PYTHONUNBUFFERED=true
ADD . /opt/vtxok
WORKDIR /opt/vtxok
RUN pip install -e .
EXPOSE 8000
#CMD gunicorn -w 4 --proxy-protocol --paste development.ini -b 0.0.0.0:8000 --reload
CMD pserve --reload development.ini
