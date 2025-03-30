FROM python:3.9

#set the working directory inside the container
WORKDIR /app

#copy the application code into the container
COPY . /app

RUN apt-get update && apt-get install -y && apt-get clean

#install required Python packages
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=crudapp.py
ENV FLASK_ENV=development

RUN flask db init
RUN flask db migrate -m "entries table"
RUN flask db upgrade

#expose port 80 that the application will run on
EXPOSE 80

#run the application
CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]