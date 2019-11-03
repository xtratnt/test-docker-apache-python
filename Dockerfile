FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

FROM httpd:2.4

COPY ./html/ /usr/local/apache2

CMD [ "python", "./hello.py" ]