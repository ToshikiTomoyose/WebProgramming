USE UserManagement; 

CREATE TABLE usermanagement( 
  id SERIAL PRIMARY KEY UNIQUE NOT NULL
  , login_id varchar (255) UNIQUE NOT NULL
  , name varchar (255) NOT NULL
  , birth_data DATE NOT NULL
  , password varchar (255) NOT NULL
  , create_date DATETIME NOT NULL
  , update_date DATETIME NOT NULL
) 


INSERT 
INTO usermanagement( 
  id
  , login_id
  , name
  , birth_data
  , password
  , create_date
  , update_date
) 
VALUES ( 
  1
  , 'admin'
  , '管理者'
  , '1998-07-07'
  , 'a'
  , now()
  , now()
); 

USE testjavasql;

CREATE TABLE ACCOUNT (
	USER_ID char(10) PRIMARY KEY,
	PASS varchar(10) not null,
	MAIL varchar(100) not null,
	NAME varchar(10) not null,
	AGE int not null
	);

INSERT INTO ACCOUNT 
	(USER_ID,PASS,MAIL,NAME,AGE)
	VALUES (
		'test','1234','test@.com','テスト男',99
	);
