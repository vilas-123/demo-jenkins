FROM python:3.9-slim
WORKDIR  /sample
COPY sample /sample

COPY requirements.txt /sample
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 80
ENV PYTHONBUFFERED=1
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]


