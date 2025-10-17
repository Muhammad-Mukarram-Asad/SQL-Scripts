CREATE DATABASE users IF NOT EXIST;
USE users; // For selecting this database as active

create table users (
  id int auto_increment primary key,
  name varchar(100),
  email varchar(100) unique not null,
  gender enum("Male","Female","Other"),
  date_of_birth Date,
  createdAt default timestamp
  );

-- Insert values in the users table:
INSERT values(name, email,gender, date_of_birth) into users
("Abrar", "avrar@gmail.com","Male","1990-01-15");

-- We can also insert multiple entries:
INSERT values(name, email,gender, date_of_birth) 
("Abrar", "avrar@gmail.com","Male","1990-01-15"),
("babar", "avrar@gmail.com","Male","1990-01-15"),
("Cat", "avrar@gmail.com","Male","1990-01-15"),
("Daniel", "avrar@gmail.com","Male","1990-01-15")
into users;
  

-- For Quering the table
select * from users;
