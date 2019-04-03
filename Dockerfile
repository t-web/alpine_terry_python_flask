FROM napoler/alpine_terry_python


ADD . /myapp
#RUN git clone https://github.com/t-web/alpine_terry_python_flask.git /myapp
WORKDIR /myapp
#安装依赖
RUN pip3 install -r requirements.txt
EXPOSE 5000
#CMD myapp --port 8000
CMD ["python3", "app.py"]
# CMD ["python", "app.py", "--port=8110", "--no-browser", \
#     "--allow-root", "--ip=0.0.0.0", "--NotebookApp.token="]