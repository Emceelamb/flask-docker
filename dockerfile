FROM python:3

ENV VIRTUAL_ENV=/opt/venv
RUN python -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
COPY . .

COPY requirements.txt .

RUN pip install --upgrade-pip
RUN pip install -r requirements.txt

EXPOSE 5000

COPY app.py .
CMD ["python", "./app.py"]

