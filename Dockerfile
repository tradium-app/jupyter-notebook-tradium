FROM jupyter/tensorflow-notebook

COPY data /app/data

COPY requirements.txt requirements.txt

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

ENV port=$PORT
ENV JUPYTER_ENABLE_LAB=yes

CMD start-notebook.sh
# CMD jupyter notebook --port=$PORT
