from flask import app,g
from flask_mysqldb import MySQL

def init_db(app):
    app.config['MYSQL_USER']='devuser'
    app.config['MYSQL_PASSWORD'] = 'devuser'
    app.config['MYSQL_DB'] = 'bluedb'
    app.config['MYSQL_HOST']='localhost'
    mysql = MySQL(app)
    #mysql.init_app(app)
    return mysql

def get_db(app):
    return init_db(app)
