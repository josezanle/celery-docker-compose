from celery import Celery

app = Celery('tasks', broker='redis://redis:6379/0', backend='redis://redis:6379/0')

@app.task
def add():
    return "hello world -> from celery"

if __name__ == "__main__":
    result = add.delay()
    print(result.get(timeout=2))
