FROM napoler/alpine_terry_python



RUN git clone https://github.com/t-web/alpine_terry_python.git /myapp
WORKDIR /myapp
#安装依赖
RUN pip3 install -r requirements.txt

CMD ["python", "app.py", "--port=8110", "--no-browser", \
    "--allow-root", "--ip=0.0.0.0", "--NotebookApp.token="]