use bluedb;

create table if not exists bluedb.employee (
    name varchar(30) NOT NULL,
    email varchar(64) NOT NULL,
    id varchar(8) NOT NULL PRIMARY KEY,
    phone varchar(10),
    team ENUM('Sales', 'Marketing', 'HR', 'Technology', 'Finance') NOT NULL,
    designation ENUM('Analyst', 'Programmer', 'Manager', 'Senior Manager', 'Director') NOT NULL 
    );


create table if not exists bluedb.conf_room (
    id varchar(8) NOT NULL PRIMARY KEY,
    name varchar(30) NOT NULL,
    email varchar(64) NOT NULL,
    capacity varchar(2) NOT NULL,
    status ENUM('Available', 'Occupied')
);

create table if not exists bluedb.users (
    username varchar(16) NOT NULL,
    password_hash varchar(64) NOT NULL,
    PRIMARY KEY (username)
);


insert into bluedb.employee (id, name, email, phone, team , designation)
values 
('E1', 'Mahesh Sharma', 'mahesh.sharma@blue.com', '9891234567', 'Sales', 'Analyst' ),
('E2', 'Rahul Yadav', 'rahul.yadav@blue.com', '9891234577', 'Sale', 'Analyst' ),
('E3', 'Viraj Pant', 'viraj.pant@blue.com', '9891234587', 'Sales', 'Analyst' ),
('E4', 'Soumin Mohanty', 'soumin.mohanty@blue.com', '9891234597', 'Sales', 'Analyst' ),
('E5', 'Shovik Mohanty', 'shovik.mohanty@blue.com', '9891234507', 'Sales', 'Analyst' ),
('E6', 'Suresh Bagga', 'suresh.bagga@blue.com', '9891234517', 'Sales', 'Analyst' );


insert into bluedb.employee (id, name, email, phone, team , designation)
values 
('E7', 'Pranav Parchure', 'pranav.parchure@blue.com', '9891234527', 'Marketing', 'Manager' ),
('E8', 'Rahul Sharma', 'rahul.sharma@blue.com', '9891234537', 'Marketing', 'Manager' ),
('E9', 'Ramesh Nandi', 'ramesh.nandi@blue.com', '9891234547', 'Marketing', 'Analyst' ),
('E10', 'Kamesh Verma', 'kamesh.verma@blue.com', '9891234568', 'Marketing', 'Analyst' ),
('E11', 'Ajay Pandey', 'ajay.pandey@blue.com', '9891234569', 'Marketing', 'Analyst' ),
('E12', 'Mahesh Kamra', 'mahesh.kamra@blue.com', '9891234560', 'Marketing', 'Analyst' ),
('E13', 'Rajesh Ranjan', 'rajesh.ranjan@blue.com', '9891234561', 'Marketing', 'Analyst' );


insert into bluedb.employee (id, name, email, phone, team , designation)
values 
('E14', 'Mahendra Solanki', 'mahesh.solanki@blue.com', '9891234562', 'Technology', 'Manager' ),
('E15', 'Sumit Tyagi', 'mahesh.solanki@blue.com', '9891234563', 'Technology', 'Manager' ),
('E16', 'Suresh Nigam', 'mahesh.solanki@blue.com', '9891234564', 'Technology', 'Programmer' ),
('E17', 'Ramesh Iyer', 'mahesh.solanki@blue.com', '9891234565', 'Technology', 'Programmer' ),
('E18', 'Sunil Sardana', 'mahesh.solanki@blue.com', '9891234566', 'Technology', 'Programmer' ),
('E19', 'Mahesh Singh', 'mahesh.solanki@blue.com', '9891234667', 'Technology', 'Programmer' ),
('E20', 'Anjali Sharma', 'mahesh.solanki@blue.com', '9891234767', 'Technology', 'Programmer' );


insert into bluedb.employee (id, name, email, phone, team , designation)
values 
('E21', 'Anshul Singhal', 'mahesh.solanki@blue.com', '9891234867', 'HR', 'Manager' ),
('E22', 'Arjun Yadav', 'mahesh.solanki@blue.com', '9891234967', 'HR', 'Manager' ),
('E23', 'Mahima Bist', 'mahesh.solanki@blue.com', '9891234067', 'HR', 'Analyst' ),
('E24', 'Mahendra Verma', 'mahesh.solanki@blue.com', '9891234167', 'HR', 'Analyst' ),
('E25', 'Ajay Ahuja', 'mahesh.solanki@blue.com', '9891234267', 'HR', 'Analyst' ),
('E26', 'Mahesh Singhal', 'mahesh.solanki@blue.com', '9891234367', 'HR', 'Analyst' ),
('E27', 'Suketu Modi', 'mahesh.solanki@blue.com', '9891234467', 'HR', 'Analyst' );


insert into bluedb.employee (id, name, email, phone, team , designation)
values 
('E28', 'Prakhar Bagga', 'mahesh.solanki@blue.com', '9891235567', 'Finance', 'Manager' ),
('E29', 'Arjun Saxena', 'mahesh.solanki@blue.com', '9891236567', 'Finance', 'Manager' ),
('E30', 'Kamesh Mehra', 'mahesh.solanki@blue.com', '9891237567', 'Finance', 'Analyst' ),
('E31', 'Neelam Singh', 'mahesh.solanki@blue.com', '9891238567', 'Finance', 'Analyst' );