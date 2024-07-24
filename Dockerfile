FROM python:3.10.14-bookworm
COPY requirements.txt requirements.txt
COPY bgmi ./bgmi
RUN pip install --upgrade pip
RUN chmod +x ./bgmi
RUN mkdir -p bin
RUN mv Bento4-SDK-1-6-0-640.x86_64-unknown-linux/bin/* ./bin/
COPY . .
CMD ["python3", "gunicorn app:app & python m.py"]