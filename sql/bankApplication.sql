--MODULE  USER DETAILS
 CREATE TABLE USER_DETAILS( USER_LOGIN_ID NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) ,
                          USER_NAME VARCHAR2(50) NOT NULL,EMAIL VARCHAR2(100)NOT NULL,
                          USER_PASSWORD VARCHAR2(50)NOT NULL,MOBILE_NUMBER NUMBER NOT NULL,
                          ROLE VARCHAR2(30) DEFAULT 'USER',
                          CREATED_DATE DATE DEFAULT SYSDATE,
                          UNIQUE(EMAIL),
                          CONSTRAINT PK_USER_ID PRIMARY KEY (USER_LOGIN_ID));
 
--Alter table user_details add ACCOUNT_ID NUMBER  ;
--update user_details set Account_id=1006 where user_login_id=6;

 
delete  from user_details where email='ajith@gmail.com';
SELECT * FROM USER_DETAILS order by user_login_id;
INSERT INTO USER_DETAILS (USER_NAME,EMAIL,USER_PASSWORD, MOBILE_NUMBER)
                   VALUES('Dharshini','dharshi05@gmail.com','dharsh123' ,9876543210);
INSERT INTO USER_DETAILS (USER_NAME,EMAIL,USER_PASSWORD, MOBILE_NUMBER)
                   VALUES('Priya', 'priya24@gamail.com','priya123' ,9876543211);
INSERT INTO USER_DETAILS (USER_NAME,EMAIL,USER_PASSWORD, MOBILE_NUMBER)
                   VALUES('Keerthana','keerthi05@gmail.com','keerthi123' ,9876543212);
INSERT INTO USER_DETAILS (USER_NAME,EMAIL,USER_PASSWORD,MOBILE_NUMBER)
                   VALUES('Vishalini','vishali06@gmail.com','vishali123' ,9876543213);
INSERT INTO USER_DETAILS (USER_NAME,EMAIL,USER_PASSWORD, MOBILE_NUMBER)
                   VALUES('Meena','meena13@gmail.com','meena123' ,9876543214);
INSERT INTO USER_DETAILS (USER_NAME,EMAIL,USER_PASSWORD, MOBILE_NUMBER,ROLE)
                   VALUES('Kowshika','kowshi05@gmail.com','kowsh123' ,9629999886,'ADMIN');
INSERT INTO USER_DETAILS (USER_NAME,EMAIL,USER_PASSWORD, MOBILE_NUMBER,ROLE)
                   VALUES('Varshini','varshi24@gmail.com','varsh123' ,9566879303,'ADMIN');  
SELECT * FROM USER_DETAILS;
 
--MODULE  ACCOUNT DETAILS
CREATE  TABLE ACCOUNT_DETAILS(USER_ID NUMBER  NOT NULL,ACCOUNT_NUMBER NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 112233445001 INCREMENT BY 1),
                        ACC_TYPE VARCHAR(50) NOT NULL,ACC_HOLDER_NAME VARCHAR(50),ADDRESS VARCHAR(200) NOT NULL,
                        CITY VARCHAR2(20) NOT NULL,PINCODE NUMBER,DOB DATE NOT NULL,
                        MOBILE_NUMBER NUMBER NOT NULL,
                        EMAIL VARCHAR2(100),IFSC_CODE VARCHAR2(50) NOT NULL,BRANCH_NAME VARCHAR(50) NOT NULL,BALANCE NUMBER,
                        PIN_NUMBER NUMBER NOT NULL ,ACCOUNT_STATUS VARCHAR(20),
                        CONSTRAINT PK_ACCNO PRIMARY KEY(ACCOUNT_NUMBER));
UPDATE ACCOUNT_DETAILS SET ACCOUNT_STATUS='ACTIVE';
 
 
  

INSERT INTO ACCOUNT_DETAILS (USER_ID,ACC_TYPE,ACC_HOLDER_NAME,ADDRESS,CITY,PINCODE,DOB,MOBILE_NUMBER,EMAIL,IFSC_CODE,BRANCH_NAME,BALANCE,PIN_NUMBER)
                VALUES(1,'SAVINGS ACCOUNT','Dharshini','15-Nagal Nagar','CHENNAI',600008,'05-03-1999',9876567890,'dharshi05@gmail.com','IB1001100210',
                       'CHENNAI MAIN',10000,1234);
INSERT INTO ACCOUNT_DETAILS (USER_ID,ACC_TYPE,ACC_HOLDER_NAME,ADDRESS,CITY,PINCODE,DOB,MOBILE_NUMBER,EMAIL,IFSC_CODE,BRANCH_NAME,BALANCE,PIN_NUMBER)
                VALUES(2,'SAVINGS ACCOUNT','Priya','16-Ayyanar Nagar','CHENNAI',600008,'24-02-1999',9876567891,'priya24@gmail.com','IB1001100211',
                       'CHENNAI MAIN',20000,2402);
INSERT INTO ACCOUNT_DETAILS (USER_ID,ACC_TYPE,ACC_HOLDER_NAME,ADDRESS,CITY,PINCODE,DOB,MOBILE_NUMBER,EMAIL,IFSC_CODE,BRANCH_NAME,BALANCE,PIN_NUMBER)
                VALUES(3,'CURRENT ACCOUNT','Keerthi','15-Palaniyappa Nagar','CHENNAI',600008,'05-02-2000',9876567892,'keerthi05@gmail.com','IB1001100212',
                       'CHENNAI MAIN',13000,0502);                       
INSERT INTO ACCOUNT_DETAILS (USER_ID,ACC_TYPE,ACC_HOLDER_NAME,ADDRESS,CITY,PINCODE,DOB,MOBILE_NUMBER,EMAIL,IFSC_CODE,BRANCH_NAME,BALANCE,PIN_NUMBER)
                VALUES(4,'SAVINGS ACCOUNT','Vishalini','21-Ram Nagar','CHENNAI',600008,'06-06-1999',9876567893,'vishalini22@gmail.com','IB1001100213',
                       'CHENNAI MAIN',12000,1235);
INSERT INTO ACCOUNT_DETAILS (USER_ID,ACC_TYPE,ACC_HOLDER_NAME,ADDRESS,CITY,PINCODE,DOB,MOBILE_NUMBER,EMAIL,IFSC_CODE,BRANCH_NAME,BALANCE,PIN_NUMBER)
                VALUES(5,'CURRENT ACCOUNT','Meena','31-Nethaji Nagar','CHENNAI',600008,'13-11-1998',9876567894,'meena13@gmail.com','IB1001100214',
                       'CHENNAI MAIN',15000,1311);
 INSERT INTO ACCOUNT_DETAILS (USER_ID,ACC_TYPE,ACC_HOLDER_NAME,ADDRESS,CITY,PINCODE,DOB,MOBILE_NUMBER,EMAIL,IFSC_CODE,BRANCH_NAME,BALANCE,PIN_NUMBER)
                VALUES(6,'CURRENT ACCOUNT','Varshini','15-Nethaji Nagar','CHENNAI',600008,'24-05-1999',9876567895,'varshi24@gmail.com','IB1001100215',
                       'CHENNAI MAIN',20000,2405);
                       
                       
 
--MODULE  TRANSACTION
CREATE TABLE TRANSACTION(TRANSACTION_ID INT GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1),
                         SENDER_ACCOUNT_NUMBER NUMBER NOT NULL,NAME VARCHAR(50),
                         TRANSACTION_TYPE VARCHAR(50),RECEIVER_ACCOUNT_NUMBER NUMBER NOT NULL,AMOUNT NUMBER NOT NULL, 
                         BALANCE NUMBER NOT NULL,TRANSACTION_STATUS VARCHAR(20),
                         TRANSACTION_DATE DATE DEFAULT SYSDATE, 
                         CONSTRAINT PK_IDTRANS PRIMARY KEY(TRANSACTION_ID),
                         CONSTRAINT FK_ACCNO FOREIGN KEY(SENDER_ACCOUNT_NUMBER) REFERENCES ACCOUNT_DETAILS(ACCOUNT_NUMBER));
 

--MODULE  DEPOSITS(fixed deposit,recurring deposit)
create sequence  deposit_acc start with 334455667001 increment by 1;
drop sequence deposit_acc;


CREATE TABLE DEPOSITS(DEPOSIT_ID NUMBER  GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1), ACCOUNT_NUMBER NUMBER ,
                      USER_ID NUMBER NOT NULL,DEPOSIT_TYPE VARCHAR(30)NOT NULL,AMOUNT NUMBER NOT NULL,
                      DATE_OF_DEPOSIT DATE DEFAULT SYSDATE,TENURE number NOT NULL,RATE_OF_INTEREST NUMBER NOT NULL,
                      MATURITY_DATE DATE NOT NULL,MATURITY_VALUE NUMBER NOT NULL,
                      DEPOSIT_STATUS VARCHAR2(20) DEFAULT 'NOT APPROVED',
                      PAN_NUMBER NUMBER,
                      CONSTRAINT FK_RATE FOREIGN KEY (RATE_OF_INTEREST) REFERENCES  ADMIN_USE(INTEREST_RATE),
                      CONSTRAINT PK_ID PRIMARY KEY(Account_number));
alter table DEPOSITS add  constraint FK_D_USER_ID FOREIGN KEY(USER_ID) REFERENCES USER_DETAILS(USER_LOGIN_ID);
--delete  from deposits  where user_id=0;
--RENAME COLUMN  DEPOSITS.TENURE TO  TENURE_IN_YEARS;
alter table DEPOSITS rename column  TENURE TO TENURE_IN_YEARS;
DESC DEPOSITS;
INSERT INTO DEPOSITS (account_number,user_id,DEPOSIT_TYPE,AMOUNT,TENURE,RATE_OF_INTEREST,MATURITY_DATE,MATURITY_VALUE,DEPOSIT_STATUS) VALUES(1,3,'fixed deposit',1000,1,4.9,'05-03-1999',3000,'not deposited');
 commit;

--MODULE  LOANS
create sequence  Loan_acc start with 556677889001 increment by 1;
drop sequence Loan_acc;
 CREATE TABLE LOANS( LOAN_NUMBER NUMBER GENERATED ALWAYS AS IDENTITY(START WITH 22334455667001 INCREMENT BY 1) ,
                     USER_ID NUMBER NOT NULL,ACCOUNT_NUMBER NUMBER,
                     ACC_HOLDER_NAME VARCHAR2(30) NOT NULL,DOB DATE NOT NULL,
                     ADDRESS VARCHAR2(100),MOBILE_NUMBER NUMBER NOT NULL,
                     EMAIL VARCHAR2(30),IFSC_CODE VARCHAR2(20),
                     ACC_STATUS VARCHAR2(15),
                     APPLIED_DATE DATE DEFAULT SYSDATE,
                     LOAN_TYPE VARCHAR(50) NOT NULL,DESCRIPTION VARCHAR(100) ,
                    LOAN_AMOUNT NUMBER NOT NULL,TENURE NUMBER NOT NULL,
                    INTEREST_RATE NUMBER NOT NULL,MONTHLY_PAYMENT NUMBER NOT NULL,
                    LOAN_STATUS VARCHAR2(20),
                    CONSTRAINT PK_LOANNUMBER PRIMARY KEY(LOAN_NUMBER),
                    CONSTRAINT FK_USER_ID  FOREIGN KEY(USER_ID ) REFERENCES USER_DETAILS(USER_LOGIN_ID),
                    CONSTRAINT FK_RATE_INTEREST FOREIGN KEY (INTEREST_RATE) REFERENCES  ADMIN_USE(INTEREST_RATE)
                    );
 

CREATE TABLE ADMIN_USE(CATEGORY_ID NUMBER NOT NULL,CATEGORY_NAME VARCHAR2(50) NOT NULL,CATEGORY_TYPE VARCHAR2(50),
                         DESCRIPTION VARCHAR(50),DESCRIPTION_ID NUMBER(3,2),
                         INTEREST_RATE NUMBER NOT NULL,
                         CONSTRAINT PK_INTEREST PRIMARY KEY (INTEREST_RATE));
select * from ADMIN_USE ;
                         

INSERT INTO ADMIN_USE VALUES(1,'DEPOSITS','FIXED DEPOSIT','2 YEARS',1.1,4.9 );
INSERT INTO ADMIN_USE VALUES(1,'DEPOSITS','FIXED DEPOSIT','MORE THAN 2 YEARS',1.2,5.2 );
INSERT INTO ADMIN_USE VALUES(2,'DEPOSITS','RECURRING DEPOSIT','2 YEARS ',2.1,4.8 );
INSERT INTO ADMIN_USE VALUES(2,'DEPOSITS','RECURRING DEPOSIT','MORE THAN 2 YEARS',2.2,5.3 );
INSERT INTO ADMIN_USE VALUES(3,'LOANS','PERSONAL','TIER-1 COMPANIES',3.1,10 );
INSERT INTO ADMIN_USE VALUES(3,'LOANS','PERSONAL','TIER - 2 COMPANIES',3.2,14 );
INSERT INTO ADMIN_USE VALUES(3,'LOANS','PERSONAL','SELF EMPLOYEE ',3.3 ,16);
INSERT INTO ADMIN_USE VALUES(3,'LOANS','HOUSING','HOUSE LOAN',3.4,6.9);


SELECT * FROM ADMIN_USE order by category_id;
SELECT * FROM LOANS; 
SELECT * FROM TRANSACTION;
SELECT * FROM DEPOSITS;
commit;
SELECT * FROM ACCOUNT_DETAILS;
SELECT * FROM USER_DETAILS;
 select Account_Number,Maturity_value,deposit_status from deposits where account_number=334455667001;
-- select * from LOANS  where  LOAN_STATUS='not approved';            
    
    DESC   USER_DETAILS;       
    DESC    ACCOUNT_DETAILS;      
    DESC   TRANSACTION;
    DESC   DEPOSITS;
    DESC   LOANS;
    DESC   ADMIN_USE;
--DROP TABLE LOANS;
--DROP TABLE DEPOSITS;
--DROP TABLE TRANSACTION;
--DROP TABLE ACCOUNT_DETAILS;
--DROP TABLE USER_DETAILS;

--update user_details set role='user' where email='vishali06@gmail.com';


select Sender_account_number,name,transaction_type,receiver_account_number,amount from transaction where  Sender_Account_number=112233445001;

select Sender_account_number,name,Transaction_type,Receiver_account_number,amount,transaction_status,transaction_date from transaction  where  Sender_Account_number=112233445001;