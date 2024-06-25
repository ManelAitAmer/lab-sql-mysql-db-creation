-- Creation of Database:

CREATE DATABASE IF NOT EXISTS cars_lab;
USE cars_lab;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars 
					(car_id INT AUTO_INCREMENT PRIMARY KEY,
                    VIN VARCHAR (255),
                    manufacturer VARCHAR (100),
                    model VARCHAR (100),
					release_year YEAR ,
                    color VARCHAR (100));


DROP TABLE IF EXISTS customers;
CREATE TABLE customers
                         (customer_id INT AUTO_INCREMENT PRIMARY KEY,
                         name VARCHAR (100),
                         phone_number VARCHAR (20),
                         email VARCHAR (50),
                         address VARCHAR (100),
                         city VARCHAR (20),
                         state VARCHAR (25),
                         country VARCHAR (25),
                         zipcode VARCHAR (10));
                         
DROP TABLE IF EXISTS salesperson;
CREATE TABLE salesperson
                          (staff_id INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR (100),
                          store VARCHAR (100));
                          
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices 
                      (invoice_id  INT AUTO_INCREMENT PRIMARY KEY,
                      invoice_number VARCHAR (255),
                      invoice_date date,
                      car VARCHAR (50),
                      customer VARCHAR (100),
                      salesperson VARCHAR (100));