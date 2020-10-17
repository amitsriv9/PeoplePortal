import os
from flask import Flask
from flask_mysqldb import MySQL

def create_app(test_config=None):

    app = Flask(__name__, instance_relative_config=True)
    app.config['MYSQL_USER']='devuser'
    app.config['MYSQL_PASSWORD'] = 'devuser'
    app.config['MYSQL_DB'] = 'bluedb'
    app.config['MYSQL_HOST']='localhost'
    mysql = MySQL(app)
    
    if test_config is None:
        app.config.from_pyfile('config.py', silent=True)
    else:
        app.config.from_mapping(test_config)
    
    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    @app.route('/')
    def home():
        return "Home: Hello, World"

    @app.route('/hello')
    def hello():
        return "Hello: Hello, World"

    from . import auth
    app.register_blueprint(auth.bp)
    
    return app