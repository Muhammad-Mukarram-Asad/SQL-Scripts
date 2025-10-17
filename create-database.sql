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

select * from users;
