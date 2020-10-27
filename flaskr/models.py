from . import db

class User(db.Model):
    __tablename__ = "users"
    username = db.Column(db.String(16),primary_key=True)      
    password_hash = db.Column(db.String(256),nullable=False)
    

from enum import Enum
class team(Enum):
    Sales = 1
    Marketing = 2
    HR = 3
    Technology = 3
    Finance = 4

class designation(Enum):
    Analyst = 1
    Programmer = 2
    Manager = 3
    SeniorManager = 4

class Employee(db.Model):
    __tablename__ = "employee"
    name = db.Column(db.String(16),primary_key=True)      
    email = db.Column(db.String(64),nullable=False)
    phone = db.Column(db.String(10),nullable=True)
    team = db.Column(db.Enum(team), nullable=False)
    designation = db.Column(db.Enum(designation),nullable=False)
