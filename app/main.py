from fastapi import FastAPI
from app.utils import health_check

app = FastAPI(title="FastAPI App on Kubernetes")

@app.get("/")
def home():
    return {"message": "FastAPI App Running on AWS EKS!"}

@app.get("/health")
def health():
    return health_check()
