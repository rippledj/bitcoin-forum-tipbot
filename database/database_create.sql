create table last_post
(
id int primary key auto_increment NOT NULL,
category varchar(2) NOT NULL,
thread_id varchar(20) NOT NULL,
datetime datetime(6) NOT NULL
)

create table user_data
(
id int primary key auto_increment NOT NULL,
username varchar (30) NOT NULL,
regdate datetime NOT NULL,
balance decimal(16,8),
pubkey varchar (36),
reg_thread_id varchar(10) NOT NULL,
pool bool NOT NULL,
auto_accept bool NOT NULL
)

create table tip_transactions
(
id int primary key auto_increment NOT NULL,
thread_id varchar(10) NOT NULL,
sender_username varchar (30) NOT NULL,
receive_username varchar (30) NOT NULL,
amount decimal(16,8),
datetime datetime NOT NULL,
accepted bool NOT NULL
)

create table withdrawls
(
id int primary key auto_increment NOT NULL,
thread_id varchar(10) NOT NULL,
receive_username varchar (30) NOT NULL,
recieve_pubkey varchar (36) NOT NULL,
amount decimal (16,8),
datetime datetime NOT NULL
)

create table deposit_addresses
(
id int primary key auto_increment NOT NULL,
username varchar(30) NOT NULL,
deposit_pubkey varchar(36) NOT NULL
)

create table deposits
(
id int primary key auto_increment NOT NULL,
username varchar(30) NOT NULL,
amount decimal(16,8),
datetime datetime NOT NULL,
pubkey varchar(36)
)

create table unregister_requests
(
id int primary key auto_increment NOT NULL,
username varchar(30) NOT NULL,
thread_id varchar(10) NOT NULL,
datetime datetime NOT NULL
)
