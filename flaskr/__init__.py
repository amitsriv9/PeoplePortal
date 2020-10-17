import os
from flask import Flask

def create_app(test_config=None):

    app = Flask(__name__, instance_relative_config=True)
    #app.config.from_mapping(
    #                SECRET_KEY='dev',
    #                DATABASE=os.path.jaoin(app.instance_path,"flaskr.sqlite"),
    #                )
    if test_config is None:
        app.config.from_pyfile('config.py', silent=True)
    else:
        app.config.from_mapping(test_config)
    
    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    @app.route('/hello')
    def hello():
        return "INIT: Hello, World"

    from . import db
    db_mysql = db.get_db(app)
     
    from . import auth
    app.register_blueprint(auth.bp)
    
    return app