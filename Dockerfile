FROM python:3.10.14-bookworm
COPY requirements.txt requirements.txt
COPY bgmi ./bgmi
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
COPY . .
RUN ls -l
RUN chmod +x *
CMD ["./bgmi"]
CMD ["python3", "m.py"]
