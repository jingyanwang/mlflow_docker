# mlflow_docker

pull the docker

```bash
docker pull jingyanwang1/mlflow:1.0.1
```

start the service

```bash
docker run -it -p 0.0.0.0:3974:3974 -v `"C:\Users\jinyan.wang\Documents\GitHub\mlflow_docker`":/data jingyanwang1/mlflow:1.0.1 
```

go to url 

localhost:3974
