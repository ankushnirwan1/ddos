FROM python:3.10.14-bookworm
COPY requirements.txt requirements.txt
COPY bgmi ./bgmi
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . .
RUN chmod +x ./bgmi
CMD ["python3", "m.py"]