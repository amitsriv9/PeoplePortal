use bluedb;

create table if not exists bluedb.'employees'(
    'name' varchar(30) NOT NULL,
    'email' varchar(64) NOT NULL,
    'id' varchar(8) NOT NULL PRIMARY KEY,
    'phone' varchar(10),
    'team' ENUM('Sales', 'Marketing', 'HR', 'Technology', 'Finance') NOT NULL,
    'designation' ENUM('Analyst', 'Programmer', 'Manager', 'Senior Manager', 'Director') NOT NULL 
    );


create table if not exists bluedb.'conf_rooms' (
    'id' varchar(8) NOT NULL PRIMARY KEY,
    'name' varchar(30) NOT NULL,
    'email' varchar(64) NOT NULL,
    'capacity' varchar(2) NOT NULL,
    'status' ENUM('Available', 'Occupied')
);


insert into bluedb.employees (id, name, email, phone, team , designation)
values (
('E1', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234567', Sales, Analyst ),
('E2', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234577', Sales, Analyst ),
('E3', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234587', Sales, Analyst ),
('E4', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234597', Sales, Analyst ),
('E5', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234507', Sales, Analyst ),
('E6', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234517', Sales, Analyst ),
('E7', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234527', Sales, Analyst ),
('E8', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234537', Sales, Analyst ),
('E9', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234547', Sales, Analyst ),
('E10', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234568', Sales, Analyst ),
('E11', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234569', Sales, Analyst ),
('E12', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234560', Sales, Analyst ),
('E13', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234561', Sales, Analyst ),
('E14', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234562', Sales, Analyst ),
('E15', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234563', Sales, Analyst ),
('E16', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234564', Sales, Analyst ),
('E17', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234565', Sales, Analyst ),
('E18', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234566', Sales, Analyst ),
('E19', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234667', Sales, Analyst ),
('E20', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234767', Sales, Analyst ),
('E21', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234867', Sales, Analyst ),
('E22', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234967', Sales, Analyst ),
('E23', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234067', Sales, Analyst ),
('E24', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234167', Sales, Analyst ),
('E25', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234267', Sales, Analyst ),
('E26', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234367', Sales, Analyst ),
('E27', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891234467', Sales, Analyst ),
('E28', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891235567', Sales, Analyst ),
('E29', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891236567', Sales, Analyst ),
('E30', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891237567', Sales, Analyst ),
('E31', 'Mahesh Solanki', 'mahesh.solanki@blue.com', '9891238567', Sales, Analyst )
);