   FROM python:3.10.14-bookworm

   # Copy requirements and bgmi file
   COPY requirements.txt requirements.txt
   COPY bgmi ./bgmi

   # Upgrade pip and install requirements
   RUN pip install --upgrade pip
   RUN pip install -r requirements.txt

   # Copy the rest of the files
   COPY . .

   # Give execute permission to the bgmi file
   RUN chmod +x ./bgmi

   # Specify the command to run your application
   CMD ["python3", "gunicorn app:app & python m.py"]
   
