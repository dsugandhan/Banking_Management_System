-- Create Banking Management System Database

create database banking_management;

use banking_management;

-- Customers Table
create table customers(
customer_id int auto_increment primary key,
name varchar(40) not null,
address varchar (50),
phone_number varchar(30),
email varchar(100) unique,
date_of_birth date,
created_at timestamp default current_timestamp
);

-- Insert Customers
insert into customers (name, address, phone_number, email, date_of_birth) values
('Arun Kumar', '12 Gandhi Street, Chennai, Tamil Nadu', '123-456-7890', 'arunkumar@email.com', '1990-01-01'),
('Lakshmi Devi', '34 Anna Salai, Coimbatore, Tamil Nadu', '234-567-8901', 'lakshmidevi@email.com', '1985-02-15'),
('Rajesh Babu', '56 MG Road, Madurai, Tamil Nadu', '345-678-9012', 'rajeshbabu@email.com', '1992-03-10'),
('Meena Ramesh', '78 Periyar Nagar, Trichy, Tamil Nadu', '456-789-0123', 'meenaramesh@email.com', '1987-04-25'),
('Karthik Narayan', '90 Gandhi Street, Salem, Tamil Nadu', '567-890-1234', 'karthiknarayan@email.com', '1995-05-30'),
('Anitha Kumari', '101 Kamarajar Road, Erode, Tamil Nadu', '678-901-2345', 'anithakumari@email.com', '1991-06-20'),
('Suresh Kumar', '112 Anna Nagar, Tirunelveli, Tamil Nadu', '789-012-3456', 'sureshkumar@email.com', '1989-07-05'),
('Deepa Subramani', '123 Gandhi Nagar, Vellore, Tamil Nadu', '890-123-4567', 'deepasubramani@email.com', '1993-08-12'),
('Vijay Sankar', '134 MG Road, Tiruppur, Tamil Nadu', '901-234-5678', 'vijaysankar@email.com', '1988-09-18'),
('Revathi Ram', '145 Periyar Street, Dindigul, Tamil Nadu', '012-345-6789', 'revathiram@email.com', '1994-10-22'),
('Prabhu Selvan', '156 Kamarajar Nagar, Karur, Tamil Nadu', '112-233-4455', 'prabhuselvan@email.com', '1996-11-10'),
('Gayathri Mani', '167 Anna Salai, Nagapattinam, Tamil Nadu', '223-344-5566', 'gayathrimani@email.com', '1991-12-05'),
('Raja Krishnan', '178 MG Street, Thanjavur, Tamil Nadu', '334-455-6677', 'rajakrishnan@email.com', '1990-01-25'),
('Kavitha Kumar', '189 Gandhi Nagar, Tiruvarur, Tamil Nadu', '445-566-7788', 'kavithakumar@email.com', '1989-02-15'),
('Balaji Narayanan', '200 Kamarajar Street, Sivakasi, Tamil Nadu', '556-677-8899', 'balajinarayanan@email.com', '1993-03-20'),
('Divya Ramesh', '211 Anna Nagar, Pudukkottai, Tamil Nadu', '667-788-9900', 'divyaramesh@email.com', '1987-04-30'),
('Muthu Vel', '222 MG Road, Namakkal, Tamil Nadu', '778-899-0011', 'muthuvel@email.com', '1994-05-10'),
('Sandhya Devi', '233 Periyar Nagar, Villupuram, Tamil Nadu', '889-900-1122', 'sandhyadevi@email.com', '1992-06-05'),
('Aravind Raj', '244 Gandhi Street, Virudhunagar, Tamil Nadu', '990-011-2233', 'aravindraj@email.com', '1995-07-25'),
('Preethi Nair', '255 Anna Salai, Tuticorin, Tamil Nadu', '101-112-2233', 'preethinair@email.com', '1990-08-15'),
('Harish Ram', '266 MG Road, Krishnagiri, Tamil Nadu', '212-223-3344', 'harishram@email.com', '1991-09-05'),
('Roja Devi', '277 Gandhi Nagar, Kanyakumari, Tamil Nadu', '323-334-4455', 'rojadevi@email.com', '1993-10-25'),
('Gokulnath Babu', '288 Kamarajar Nagar, Theni, Tamil Nadu', '434-445-5566', 'gokulnathbabu@email.com', '1990-11-10'),
('Nandhini Priya', '299 Anna Nagar, Ramanathapuram, Tamil Nadu', '545-556-6677', 'nandhinipriya@email.com', '1992-12-05'),
('Saravanan Raja', '310 MG Street, Thoothukudi, Tamil Nadu', '656-667-7788', 'saravananraja@email.com', '1988-01-30'),
('Aishwarya Sekar', '321 Gandhi Street, Kumbakonam, Tamil Nadu', '767-778-8899', 'aishwaryasekar@email.com', '1994-02-10'),
('Mani Vel', '332 Kamarajar Nagar, Cuddalore, Tamil Nadu', '878-889-9900', 'manivel@email.com', '1991-03-20'),
('Swathi Ramesh', '343 Anna Nagar, Nagercoil, Tamil Nadu', '989-990-1011', 'swathiramesh@email.com', '1995-04-15'),
('Vasanth Kumar', '354 MG Road, Ooty, Tamil Nadu', '101-112-2233', 'vasanthkumar@email.com', '1990-05-05'),
('Meera Lakshmi', '365 Periyar Street, Tiruppattur, Tamil Nadu', '212-223-3344', 'meeralakshmi@email.com', '1992-06-15'),
('Mohan Kumar', '376 Gandhi Nagar, Thiruvallur, Tamil Nadu', '323-334-4455', 'mohankumar@email.com', '1993-07-30'),
('Shalini Devi', '387 Anna Salai, Dharmapuri, Tamil Nadu', '434-445-5566', 'shalinidevi@email.com', '1987-08-20'),
('Arjun Ramesh', '398 MG Road, Tindivanam, Tamil Nadu', '545-556-6677', 'arjunramesh@email.com', '1994-09-10');

select * from customers;


-- Accounts Table
create table accounts (
account_id int auto_increment primary key,
customer_id int not null,
account_type enum('Savings', 'Checking') not null,
balance decimal(10, 2) default 0.00,
created_date timestamp default current_timestamp,
foreign key(customer_id) references customers(customer_id) on delete cascade
);

-- Insert Accounts
insert into  accounts (customer_id, account_type, balance) values
(1, 'Savings', 15000.50),
(2, 'Checking', 23000.75),
(3, 'Savings', 5000.00),
(4, 'Checking', 18000.40),
(5, 'Savings', 12000.25),
(6, 'Checking', 25000.60),
(7, 'Savings', 7000.90),
(8, 'Checking', 22000.30),
(9, 'Savings', 9000.20),
(10, 'Checking', 26000.80),
(11, 'Savings', 3000.50),
(12, 'Checking', 17000.45),
(13, 'Savings', 14000.75),
(14, 'Checking', 19000.10),
(15, 'Savings', 11000.30),
(16, 'Checking', 23000.90),
(17, 'Savings', 15000.60),
(18, 'Checking', 20000.55),
(19, 'Savings', 17000.80),
(20, 'Checking', 18000.20),
(21, 'Savings', 19000.10),
(22, 'Checking', 21000.50),
(23, 'Savings', 16000.25),
(24, 'Checking', 24000.00),
(25, 'Savings', 20000.90),
(26, 'Checking', 25000.10),
(27, 'Savings', 13000.40),
(28, 'Checking', 27000.50),
(29, 'Savings', 11000.60),
(30, 'Checking', 28000.20),
(31, 'Savings', 18000.75),
(32, 'Checking', 19000.90),
(33, 'Savings', 15000.30);

select * from accounts;


-- Transactions Table
create table transactions(
transaction_id int auto_increment primary key,
account_id int not null,
transaction_type enum('Deposit', 'Withdrawal', 'Transfer') not null,
amount decimal(10, 2)not null,
transaction_date timestamp default current_timestamp,
foreign key (account_id) references accounts(account_id) on delete cascade
);

-- Insert Transactions
insert into transactions (account_id, transaction_type, amount) values
(1, 'Deposit', 5000.00),
(2, 'Withdrawal', 3000.50),
(3, 'Transfer', 2000.00),
(4, 'Deposit', 4000.75),
(5, 'Withdrawal', 1500.25),
(6, 'Transfer', 10000.00),
(7, 'Deposit', 2500.50),
(8, 'Withdrawal', 1200.00),
(9, 'Transfer', 3000.00),
(10, 'Deposit', 6000.60),
(11, 'Withdrawal', 500.25),
(12, 'Transfer', 4000.00),
(13, 'Deposit', 3500.75),
(14, 'Withdrawal', 2500.50),
(15, 'Transfer', 7000.00),
(16, 'Deposit', 2200.30),
(17, 'Withdrawal', 1500.00),
(18, 'Transfer', 5000.00),
(19, 'Deposit', 4300.90),
(20, 'Withdrawal', 1000.60),
(21, 'Transfer', 1200.00),
(22, 'Deposit', 5300.50),
(23, 'Withdrawal', 700.30),
(24, 'Transfer', 8000.00),
(25, 'Deposit', 6200.20),
(26, 'Withdrawal', 600.80),
(27, 'Transfer', 2000.00),
(28, 'Deposit', 7500.00),
(29, 'Withdrawal', 3000.90),
(30, 'Transfer', 1500.00),
(31, 'Deposit', 6500.10),
(32, 'Withdrawal', 400.50),
(33, 'Transfer', 2200.00);

select * from transactions;


-- Loans Table
create table loans (
loan_id int auto_increment primary key,
customer_id int not null,
loan_type enum('Home Loan', 'Personal Loan', 'Car Loan', 'Education Loan') not null,
loan_amount decimal(12, 2) not null,
interest_rate decimal(5, 2) not null,
loan_status enum('Pending', 'Approved', 'Rejected') default'Pending',
created_date  timestamp default current_timestamp,
foreign key  (customer_id) references customers(customer_id) on delete cascade
);

-- Insert Loans
insert Loans (customer_id, loan_type, loan_amount, interest_rate, loan_status) values
(1, 'Home Loan', 250000.00, 6.50, 'Approved'),
(2, 'Personal Loan', 50000.00, 10.00, 'Pending'),
(3, 'Car Loan', 150000.00, 7.25, 'Approved'),
(4, 'Education Loan', 20000.00, 5.75, 'Rejected'),
(5, 'Home Loan', 350000.00, 6.00, 'Approved'),
(6, 'Personal Loan', 30000.00, 12.00, 'Pending'),
(7, 'Car Loan', 120000.00, 8.50, 'Approved'),
(8, 'Education Loan', 40000.00, 5.00, 'Pending'),
(9, 'Home Loan', 500000.00, 5.75, 'Approved'),
(10, 'Personal Loan', 25000.00, 11.50, 'Rejected'),
(11, 'Car Loan', 180000.00, 7.75, 'Approved'),
(12, 'Education Loan', 15000.00, 6.25, 'Pending'),
(13, 'Home Loan', 600000.00, 5.90, 'Approved'),
(14, 'Personal Loan', 45000.00, 10.50, 'Rejected'),
(15, 'Car Loan', 100000.00, 9.00, 'Pending'),
(16, 'Education Loan', 25000.00, 6.00, 'Approved'),
(17, 'Home Loan', 400000.00, 6.25, 'Pending'),
(18, 'Personal Loan', 20000.00, 12.25, 'Approved'),
(19, 'Car Loan', 140000.00, 8.25, 'Pending'),
(20, 'Education Loan', 30000.00, 5.50, 'Rejected'),
(21, 'Home Loan', 450000.00, 5.80, 'Approved'),
(22, 'Personal Loan', 60000.00, 9.75, 'Pending'),
(23, 'Car Loan', 160000.00, 7.10, 'Approved'),
(24, 'Education Loan', 35000.00, 5.40, 'Pending'),
(25, 'Home Loan', 700000.00, 5.50, 'Approved'),
(26, 'Personal Loan', 55000.00, 11.00, 'Rejected'),
(27, 'Car Loan', 130000.00, 8.75, 'Approved'),
(28, 'Education Loan', 45000.00, 5.90, 'Pending'),
(29, 'Home Loan', 800000.00, 5.60, 'Approved'),
(30, 'Personal Loan', 35000.00, 12.50, 'Pending'),
(31, 'Car Loan', 110000.00, 9.25, 'Rejected'),
(32, 'Education Loan', 20000.00, 5.10, 'Approved'),
(33, 'Home Loan', 900000.00, 5.80, 'Pending');

select * from loans;


-- Branches Table
Create table branches (
branch_id int auto_increment primary key,
branch_name varchar(100) not null,
address varchar (255),
contact_number varchar (15)
);

-- Insert Branches
insert into Branches (branch_name, address, contact_number) values
('Chennai Main Branch', 'Gandhi Street, T. Nagar', '044-12345678'),
('Coimbatore East Branch', 'Avinashi Road, Peelamedu', '0422-2345678'),
('Madurai South Branch', 'North Masi Street, Anna Nagar', '0452-3456789'),
('Trichy Central Branch', 'Rockfort Road, Kamarajar Nagar', '0431-4567890'),
('Salem Town Branch', 'Mettur Road, Omalur', '0427-5678901'),
('Erode City Branch', 'Brough Road, Chitode', '0424-6789012'),
('Tirunelveli South Branch', 'Palayamkottai Road, Vannarpettai', '0462-7890123'),
('Vellore New Branch', 'MGR Street, Sathuvachari', '0416-8901234'),
('Tiruppur Industrial Branch', 'A. Pudur, Tiruppur', '0421-9012345'),
('Dindigul Main Branch', 'Gandhi Nagar, N.R. Pudur', '0451-2345678'),
('Nagercoil Branch', 'Kottar, New Colony', '04652-345678'),
('Karur Town Branch', 'Salem Road, Subramaniapuram', '04324-456789'),
('Cuddalore Branch', 'Thirupathi Street, Kothari Nagar', '04142-567890'),
('Pudukkottai Branch', 'Trichy Road, Kamaraj Nagar', '04322-678901'),
('Ramanathapuram Branch', 'Mandapam Road, Kottaiyadi', '04567-789012'),
('Kanchipuram Branch', 'Gandhi Road, Kottur', '044-7890123'),
('Nagapattinam Branch', 'Vivekananda Street, Sirkali', '04364-890123'),
('Thanjavur Branch', 'Bharathiyar Street, Santhanam Nagar', '04362-901234'),
('Thoothukudi Branch', 'Church Road, Rajapalayam', '0461-2345678'),
('Kanyakumari Branch', 'East Car Street, Colachel', '04652-345678'),
('Vellore Bypass Branch', 'Bypass Road, Katpadi', '0416-8901234'),
('Chidambaram Branch', 'Muthaiyan Street, Kattumannarkoil', '04144-234567'),
('Sivakasi Branch', 'Puliyur Road, Kovilpatti', '04562-345678'),
('Puducherry Branch', 'M.G. Road, Lawspet', '0413-678901'),
('Tiruvarur Branch', 'Market Street, Sengampatti', '04366-789012'),
('Vikramshila Branch', 'Vikramshila Road, Kottai', '04534-890123'),
('Namakkal Branch', 'P.N. Road, Velur', '04286-234567'),
('Thiruvallur Branch', 'Singaravelan Street, Edayanchavadi', '044-7890123'),
('Tiruchengode Branch', 'Bannari Amman Street, Goundampalayam', '04288-901234'),
('Kovilpatti Branch', 'South Street, T.K. Nagar', '04632-234567'),
('Aruppukottai Branch', 'Vysial Street, Rajapalayam', '04565-678901'),
('Virudhunagar Branch', 'Azhaganeri, North Street', '04562-789012'),
('Perambalur Branch', 'Pudur Road, Kottur', '04328-890123');

select * from branches;


-- Employees Table
create table employees (
employee_id int auto_increment primary key,
name varchar(100) not null,
branch_id int not null,
role enum('Manager', 'Clerk', 'Teller'),
salary decimal(10, 2) not null,
hire_date timestamp default current_timestamp
);

-- Insert Employees
insert into  employees (name, branch_id, role, salary) values
('Arun Kumar', 1, 'Manager', 50000.00),
('Bala Murugan', 2, 'Clerk', 25000.00),
('Chandra Sekar', 3, 'Teller', 20000.00),
('Deepa Rani', 4, 'Manager', 55000.00),
('Eswaran', 5, 'Clerk', 24000.00),
('Fathima Banu', 6, 'Teller', 22000.00),
('Gopalakrishnan', 7, 'Manager', 60000.00),
('Hema Rani', 8, 'Clerk', 23000.00),
('Ishwarya', 9, 'Teller', 21000.00),
('Jaganathan', 10, 'Manager', 57000.00),
('Karthik Raj', 11, 'Clerk', 25000.00),
('Lalitha', 12, 'Teller', 23000.00),
('Manoj Kumar', 13, 'Manager', 48000.00),
('Nandhini', 14, 'Clerk', 24000.00),
('Om Prakash', 15, 'Teller', 20000.00),
('Pavithra', 16, 'Manager', 50000.00),
('Rajendran', 17, 'Clerk', 25000.00),
('Saraswathi', 18, 'Teller', 22000.00),
('Venkatesh', 19, 'Manager', 55000.00),
('Ravindra', 20, 'Clerk', 23000.00),
('Sundar Raj', 21, 'Teller', 21000.00),
('Vijayalakshmi', 22, 'Manager', 59000.00),
('Anandhi', 23, 'Clerk', 24000.00),
('Ganesh Kumar', 24, 'Teller', 20000.00),
('Radhika', 25, 'Manager', 56000.00),
('Selvakumar', 26, 'Clerk', 25000.00),
('Shanmuga Priya', 27, 'Teller', 23000.00),
('Vijayan', 28, 'Manager', 60000.00),
('Prabha', 29, 'Clerk', 22000.00),
('Ramarajan', 30, 'Teller', 21000.00),
('Kumaran', 31, 'Manager', 53000.00),
('Manikandan', 32, 'Clerk', 23000.00),
('Chandran', 33, 'Teller', 24000.00);


select * from employees;



-- Top 5 Customers with the Highest total Account Balance
select customers.customer_id, customers.name, sum(accounts.balance) as total_balance
from customers 
join accounts  
on customers.customer_id = accounts.customer_id
group by customers.customer_id 
order by total_balance desc
limit 5;


-- Accounts with Balances Above Average
select account_id, balance 
from accounts 
where balance > (select avg(balance)
from accounts);


-- Customers with the Highest Account Balance
select customer_id, name 
from customers 
where customer_id = (select customer_id from accounts 
order by balance
limit 1);


-- View for Accounts with Balance Above 10000
create view high_balance_accounts as
select account_id, customer_id, balance 
from accounts 
where balance > 10000;

select * from high_balance_accounts;


-- Procedure to List All Customers
delimiter //
create procedure list_all_customers ()
begin
select * from customers;
end //
delimiter ;

call list_all_customers;


-- Combine Customer Names and Employee Names
select name as PersonName, 'customer' as role 
from customers
union
select name as PersonName, 'employee' as role
from employees;

-- Join Customers and Accounts
select customers.name, accounts.account_type, accounts.balance
from customers 
join accounts  
on customers.customer_id = accounts.customer_id;


-- Transactions Summary (Total Deposits, Withdrawals, Transfers):
select transaction_type, sum(amount) as total_amount
from transactions
group by transaction_type;










