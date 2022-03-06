FROM python:3.8
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
ENV PORT=5000
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]