import os
from flask import Flask

def create_app(test_config=None):

    app = Flask(__name__, instance_relative_config=True)
   
    app.config['MYSQL_USER'] = 'devuser'
    app.config['MYSQL_PASSWORD'] = 'devuser'
    app.config['MYSQL_DB'] = 'bluedb'
    app.config['MYSQL_HOST'] = 'localhost'
    app.config['MYSQL_PORT'] = 3306
    
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
        return "Second: Hello, World"

    from . import db 
    with app.app_context():
        db.get_db()

    from . import auth
    app.register_blueprint(auth.bp)
    
    return app