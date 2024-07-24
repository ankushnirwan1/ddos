from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'monsterbooss'

if __name__ == "__main__":
    app.run()
