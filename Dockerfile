FROM jupyter/tensorflow-notebook

COPY data /app/data

COPY requirements.txt requirements.txt

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

USER root

ENV port=$PORT
ENV JUPYTER_ENABLE_LAB=yes
ENV GRANT_SUDO=yes

CMD start-notebook.sh --port=$PORT --GRANT_SUDO=yes
# CMD jupyter notebook --port=$PORT
