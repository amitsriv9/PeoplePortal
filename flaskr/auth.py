import functools
form flask import (
    BluePrint, flash, g, redirect, 
    render_template, 
    request, session, url_for
    )
from werkzeug.security import check_password_hash, genrate_password_hash
from flaskr.db import get_db

bp = BlurPrint('auth', __name__, url_prefix='/auth')


@bp.auth('/register', methods=('GET', 'POST'))
def register():

    if request_method = 'POST':
        username = request.form['username']
        password = request.form['password']
        db = db.get_()

        # username missing
        if not username:
            error = "Username is required"
        # password missing
        elif not password:
            error "Password must be provided"
        elif user_exists():
            error "Username has already been taken"
        else:
            add_user(username)

def user_exists(db, username):
    pass
    """
    cursor = mysql.connect().cursor()
    cursor.execute("SELCT * from Users where username="+username)
    data  = cursor.fetchone()
    if data is None:
        return False
    else:
        True
    """
def add_user(username):
    cursor.execute(
        "INSERT INTO Users (username, password) VALUES (?,?)"),
        (username, generate_password_hash(password)
        )
    db.commit()?