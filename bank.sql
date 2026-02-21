create database bank;
use bank;
CREATE TABLE Customers(
    customer_id INT primary key ,
    first_name varchar(50),
    last_name varchar(50),
    dob date ,
    phone varchar(15),
    city varchar(50),
    created_at date 
);

CREATE TABLE Accounts (
    
    account_number int primary key ,
    customer_id int,
    account_type varchar(20), -- savings/ current 
    balance decimal(12,2),
    status varchar(20) --active/closed

    FOREIGN key (customer_id)
    references Customers(customer_id)
);

CREATE TABLE Transactions (
    transaction_id int primary key ,
    account_id int,
    transaction_type varchar(20), --Deposit / withdrawal / Transfer 
    amount decimal(10,2),
    transaction_date datetime,
    FOREIGN key (account_id)
    references Accounts (account_id)
);

CREATE TABLE Branch (
    branch_id int primary key , 
    branch_name varchar(50),
    city varchar(50)
);

