FROM python:3.8.1

RUN apt-get update
RUN apt-get install libgeos-dev libspatialindex-dev -y

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .
#CMD python main.py
CMD jupyter lab \
  --ip 0.0.0.0 \
  --port 8888 \
  --no-browser \
  --allow-root \
  --NotebookApp.token=''