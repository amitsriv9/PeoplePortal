from sqlalchemy import create_engine
from flask import current_app, g
from flask_sqlalchemy import SQLAlchemy

def whatever():
    SQLALCHEMY_DATABASE_URI = "devuser:devuser@localhost/bluedb"
    SQLALCHEMY_ECHO = False


def get_db():
    if 'db' not in g:
        g.db = create_engine(
                "mysql://devuser:devuser@localhost/bluedb",
                echo=True ).connect()
    return g.db

def init_db():
    get_db()

def init_app(app):
    init_db()




'''
connect to a db that can be used between requests (maybe)
return a connection that can be used for db access
close the connection before replying to a request
'''