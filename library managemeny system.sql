/*create database library_demo;
show databases;
use library_demo;*/
 CREATE TABLE readers
   (
        reader_id VARCHAR(6),
        fname VARCHAR(30),
        mname VARCHAR(30),
        ltname VARCHAR(30),
        city VARCHAR(15),
        mobileno VARCHAR(10),
        occupation VARCHAR(10),
        dob DATE,
        CONSTRAINT readers_pk PRIMARY KEY(reader_id)
    );
    

INSERT INTO readers VALUES('S1','vinay','kumar','reddy','Telanngana','7095578678','service','2000-10-09'); 
INSERT INTO readers VALUES('S2','Rahul','Dandi','reddy','mumbai','7095578679','Tailor','2000-10-08');    
INSERT INTO readers VALUES('S3','Vimal','kumari','null','Warangal','7095578677','Bussiness','2000-10-07');    
INSERT INTO readers VALUES('S4','Rani','Singh','null','Punjab','7095578676','Marketing','2000-10-06'); 
INSERT INTO readers VALUES('S5','Priya','kumari','reddy','mumbai','7095578678','service','2000-10-09'); 
INSERT INTO readers VALUES('S6','Teja','chowdary','reddy','Patna','7095578679','Doctor','2000-10-08');    
INSERT INTO readers VALUES('S7','Sonu','kumar','reddu','Delhi','7095578677','Teacher','2000-10-07');    
INSERT INTO readers VALUES('S8','viKram','singh','reddy','Rajasthan','7095578676','Engineer','2000-10-06'); 
INSERT INTO readers VALUES('S9','Anmol','kumar','null','Shiridi','7095578678','service','2000-10-09'); 
INSERT INTO readers VALUES('S10','Kiran','kumar','baddam','Nagole','7095578679','Watchman','2000-10-08'); 

select * from readers;


CREATE TABLE book
   (
       bid VARCHAR(6),
       bname VARCHAR(40),
       bdomine VARCHAR(30),
       CONSTRAINT book_bid_pk PRIMARY KEY(bid)
    );
       

INSERT INTO book VALUES('01','Jungle book','story');
INSERT INTO book VALUES('02','it ends with us',' love story');
INSERT INTO book VALUES('03','wings of fire','motivational story');
select * from book;

CREATE TABLE active_readers
   (
      account_id VARCHAR(6),
      reader_id VARCHAR(6),
      bid VARCHAR(6),
      atype VARCHAR(10),
      astatus VARCHAR(10),
      CONSTRAINT activereaders_acnumber_pk PRIMARY KEY(account_id)
      CONSTRAINT account_readerid_fk FOREIGN KEY(reader_id) REFERENCES readers(reader_id)
      CONSTRAINT account_bid_fk FOREIGN KEY(bid) REFERENCES book(bid)
    );

INSERT INTO active_readers VALUES('P1','C1','B1','premium','Active');  
INSERT INTO active_readers VALUES('P2','C2','B2','regular','terminated');  
INSERT INTO active_readers VALUES('P3','C3','B3','premium','Active');  
INSERT INTO active_readers VALUES('P4','C4','B4','regular','terminated');  
INSERT INTO active_readers VALUES('P5','C5','B5','premium','terminated');  
INSERT INTO active_readers VALUES('P6','C6','B6','premium','Active');  
INSERT INTO active_readers VALUES('P7','C7','B7','premium','terminated');  
INSERT INTO active_readers VALUES('P8','C8','B8','regular','terminated');  
INSERT INTO active_readers VALUES('P9','C9','B9','premium','Active');
INSERT INTO active_readers VALUES('P10','C11','B10','regular','Active');  

select * from active_readers; 

select count(account_id) from active_readers where atype="premium";

select count(account_id) from active_readers where atype="regular";


select * from active_readers where astatus='Active';

select * from active_readers where astatus='terminated';

