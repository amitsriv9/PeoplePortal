from flask import (
    Blueprint, flash, g, redirect, render_template, request, url_for
)
from werkzeug.exceptions import abort

from flaskr.auth import login_required
from flaskr.db import get_db

bp = Blueprint('blog', __name__)



@bp.route('/portal, methods=('GET', 'POST'))
def portal_home():
    if request,method == 'GET':
        db = get_db()
        error = None

    cursor.execute('SELECT * from bluedb.employee')
    result = cursor.fetchall()
    return render_template('portal/landing.html', result = result)
