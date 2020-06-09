from flask import Flask

app = Flask(__name__)

"""
routes
"""
@app.route('/', methods=['GET'])
def index():
    """The definition of the index method
    """
    return "Hello World!"