docker build -t jingyanwang1/mlflow:1.0.1 .

docker run -it -p 0.0.0.0:3974:3974 -v `"C:\Users\jinyan.wang\Documents\GitHub\mlflow_docker`":/data jingyanwang1/mlflow:1.0.1 

docker run -it -p 0.0.0.0:3974:3974 -v /home/jinyan.wang/mlflow:/data jingyanwang1/mlflow:1.0.1 

mlflow server -h 0.0.0.0 -p 3974 
--backend-store-uri file:///data
--default-artifact-root file:///data/mlruns 


docker login --username jingyanwang1

docker push jingyanwang1/mlflow:1.0.1
docker pull jingyanwang1/mlflow:1.0.1

localhost:3974

34.66.57.96:3974

############Dockerfile###########
FROM openjdk:8

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y git 
RUN apt-get install -y curl
RUN apt-get install -y vim
RUN apt-get install -y tar
RUN apt-get install -y bzip2

RUN apt-get update
RUN apt-get install -y python3-dev
RUN apt-get install -y python3-pip

####
RUN pip3 install gdown==3.12.2
RUN pip3 install rdflib==5.0.0
RUN pip3 install requests==2.24.0
RUN pip3 install pandas==1.1.3
RUN pip3 install elasticsearch==7.11.0
RUN pip3 install pyspark==3.1.1
RUN pip3 install Pillow==8.2.0
RUN pip3 install xlrd==1.1.0
RUN pip3 install xlsxwriter==1.4.3

####

RUN pip3 install jupyterlab==3.0.16
RUN pip3 install notebook==6.4.0
RUN pip3 install matplotlib==3.4.2
RUN pip3 install scikit-learn==0.24.2
RUN pip3 install pandasql==0.7.3

RUN pip3 install Flask==2.2.2
RUN pip3 install flasgger==0.9.5
RUN pip3 install Werkzeug==2.2.2
RUN pip3 install flask-restx==1.0.3

RUN pip3 install mlflow==2.1.1

####

WORKDIR /

####

ENV PYSPARK_PYTHON=/usr/bin/python3
ENV PYSPARK_DRIVER_PYTHON=/usr/bin/python3

####

WORKDIR /data

CMD mlflow server -h 0.0.0.0 -p 3974 
############Dockerfile############