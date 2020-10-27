from flask import (
    Blueprint, flash, g, redirect, render_template, request, url_for
)
from werkzeug.exceptions import abort

from .auth import login_required
from .models import db, Employee

bp = Blueprint('portal', __name__)



@bp.route('/portal', methods=('GET', 'POST'))
def portal_home():
    if request.method == 'POST':
        username = request.form['username']
        if not username:
            error = "Could not retrieve the username"

        all_employees = Employee.query().all()
    return render_template('portal/landing.html', 
                            result = all_employees)
