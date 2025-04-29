from flask import Flask
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def index():
    now = datetime.now()
    formatted_time = now.strftime("%b %d. %Y, %H:%M")
    return formatted_time

if  __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
