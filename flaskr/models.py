from . import db

class User(db.Model):
    __tablename__ = "users"
    username = db.Column(db.String(16),
                        primary_key=True
                        )      
    password_hash = db.Column(db.String(256),
                        nullable=False
                        )
    
