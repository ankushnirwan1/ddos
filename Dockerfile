FROM python:3.10.14-bookworm
COPY requirements.txt requirements.txt
COPY bgmi ./bgmi
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
RUN chmod +x ./bgmi
RUN mkdir -p bin
COPY . .
CMD ["python3", "m.py"]