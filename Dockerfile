FROM python3
WORKDIR /sample
COPY requirements.txt/sample .
COPY sample/sample
RUN pip install -r requirements.txt
EXPOSE 80
ENV PYTHONBUFFERED=1
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]


