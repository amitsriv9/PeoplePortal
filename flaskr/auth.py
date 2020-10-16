import functools
from flask import (
    Blueprint, flash, g, redirect, 
    render_template, 
    request, session, url_for
    )
from werkzeug.security import check_password_hash, generate_password_hash
from .db import get_db

bp = Blueprint('auth', __name__, url_prefix='/auth')


@bp.auth('/register', methods=('GET', 'POST'))
def register():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        db = get_db()
        db_cursor = db.connection().cursor()
        error = None

        if not username:
            error = 'Username is required.'
        elif not password:
            error = 'Password is required.'
        elif db_cursor.execute(
            'SELECT username FROM bluedb.user WHERE username = ?', (username,)
        ).fetchone() is not None:
            error = 'User {} is already registered.'.format(username)

        if error is None:
            db_cursor.execute(
                'INSERT INTO user (username, password) VALUES (?, ?)',
                (username, generate_password_hash(password))
            )
            db.connection().commit()
            return redirect(url_for('auth.login'))

        flash(error)

    return render_template('auth/register.html')

def register2():

    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        dbcursor = get_db()
        error = None
        
        # username missing
        if not username:
            error = "Username is required"
        
        # password missing
        elif not password:
            error = "Password must be provided"
        
        elif user_exists(dbcursor, username):
            error = "Username has already been taken"
        else:
            add_user(dbcursor, username)

def user_exists(cursor, username):
    cursor.execute("SELCT * from bluedb.login where username="+username)
    data  = cursor.fetchone()
    if data is None:
        return False
    else:
        True
def add_user(cursor, username):
    cursor.execute(
        "INSERT INTO bluedb.users (username, password) VALUES (?,?)",
        (username, generate_password_hash(password)))


@bp.route('/login', methods=('GET', 'POST'))
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        db = get_db()
        db_cursor = db.connection().cursor()
        error = None
        user = db_cursor.execute(
            'SELECT * FROM user WHERE username = ?', (username,)
        ).fetchone()

        if user is None:
            error = 'Incorrect username.'
        elif not check_password_hash(user['password'], password):
            error = 'Incorrect password.'

        if error is None:
            session.clear()
            session['user_id'] = user['id']
            return redirect(url_for('index'))

        flash(error)

    return render_template('auth/login.html')