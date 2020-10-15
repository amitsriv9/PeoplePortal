from flask import current_app,g
from flaskext.mysql import MySQL

def init_db(app):
    get_db(app)
    mysql = MySql()
    mysql.init_app(app)

def get_db(app):
    app.config['MYSQL_DATABASE_USER']='notroot'
    app.config['MYSQL_DATABASE_PASSWORD'] = 'noroot'
    app.config['MYSQL_DATABASE_DB'] = 'someData'
    app.config['MYSQL_DATABASE_HOST']='localhost'