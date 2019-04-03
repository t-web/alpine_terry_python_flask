## 使用

docker run -P 端口:端口 -d -v 本地:镜像内目录  -it 镜像 命令 

#docker run -it napoler/alpine_terry_python python
#docker run -d -v E:\:/terry  -it napoler/alpine_terry_python bash


## 进入容器
docker exec -t -i 6968f2928c17  bash


## 打包镜像

docker build -t alpine_terry_python /docker/images/test



## 正常执行
docker run -d -v E:\:/myapp -it napoler/alpine_terry_python_flask