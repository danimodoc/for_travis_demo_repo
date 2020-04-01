create table if not exists employee
(employee_id int unique not null auto_increment,
emp_name varchar(50),
emp_position varchar(50),
PRIMARY  KEY(employee_id)
);

create table if not exists bug
(bug_id int unique not null auto_increment,
bug_name varchar(50),
emp_id int,
status_bug bool,
priority int,
PRIMARY  KEY(bug_id),
FOREIGN KEY (emp_id) REFERENCES employee(employee_id)
);

create table if not exists product
(product_id int unique not null auto_increment,
product_name varchar(50),
PRIMARY  KEY(product_id)
);

create table if not exists product_has_bug
(
id int unique not null auto_increment,
bug_id int,
product_id int,
PRIMARY KEY(id),
FOREIGN KEY (bug_id) references bug(bug_id),
FOREIGN KEY (product_id) references product(product_id)
);

create table if not exists bug_details
(id int unique not null auto_increment,
screenshot varchar(50),
tag varchar(100),
bug_id int,
PRIMARY  KEY(id),
FOREIGN KEY (bug_id) REFERENCES bug(bug_id)
);

create table if not exists comment_thread
(id int unique not null auto_increment,
thread_name varchar(50),
bug_id int,
PRIMARY  KEY(id),
FOREIGN KEY (bug_id) REFERENCES bug(bug_id)
);

create table if not exists commentary
(id int not null auto_increment,
content varchar(200),
thread_id int,
employee_id int,
PRIMARY  KEY(id),
FOREIGN KEY (thread_id) REFERENCES comment_thread(id),
FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);