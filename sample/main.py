def print_hello_world():
    print('hello world')
from fastapi import FastAPI
app=FastAPI()
@app.get('/')
def readroot():
    return{'message':'hello world'}
 