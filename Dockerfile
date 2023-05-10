FROM python:3.8-slim-buster
WORKDIR /python-docker
COPY requirments.txt requirments.txt
RUN pip3 install -r requirments.txt
RUN pip3 install flask
EXPOSE 5000
COPY . .
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

