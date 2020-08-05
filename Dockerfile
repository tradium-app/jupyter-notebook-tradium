FROM jupyter/tensorflow-notebook

COPY data /app/data

COPY requirements.txt requirements.txt

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

USER root

ENV port=$PORT
ENV JUPYTER_ENABLE_LAB=yes

CMD start-notebook.sh --port=$PORT --allow-root --ip=0.0.0.0 --NotebookApp.token=$JupyterPassword
