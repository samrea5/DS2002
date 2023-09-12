#database and table creation
#create schema stock_db;
#Used the create table function from dropdwon create tables and columns.

#Inputing data into rows
use stock_db;
Insert into tbl_portfolio (ticker,num_shares,date_purchased,purchase_price,current_price) values
("ORCL","5","2023-08-16","115.34","123.13");
Insert into tbl_portfolio (ticker,num_shares,date_purchased,purchase_price,current_price) values
("RKLB","13","2023-08-16","5.88","6.32");
Insert into tbl_portfolio (ticker,num_shares,date_purchased,purchase_price,current_price) values
("ARRY","10","2023-08-16","20.68","23.76");
Insert into tbl_portfolio (ticker,num_shares,date_purchased,purchase_price,current_price) values
("TKO","7","2023-08-16","112.76","99.41");
Insert into tbl_portfolio (ticker,num_shares,date_purchased,purchase_price,current_price) values
("INTC","3","2023-08-16","33.53","38.18");
select * from tbl_portfolio;

Insert into tbl_companies (ticker,company,industry) values
("ORCL","Oracle Corporation","technology");
Insert into tbl_companies (ticker,company,industry) values
("RKLB","Rocket Lab USA, Inc.","Aerospace & Defense");
Insert into tbl_companies (ticker,company,industry) values
("ARRY","Array Technologies, Inc.","Solar");
Insert into tbl_companies (ticker,company,industry) values
("TKO","Endeavor Operating Co LLC","Finance");
Insert into tbl_companies (ticker,company,industry) values
("INTC","Intel Corporation","Semiconductors");
select * from tbl_companies;

#using the data to get current values of stocks owned
select company,tbl_portfolio.ticker,num_shares,(current_price*num_shares) as "value" from tbl_portfolio, tbl_companies where tbl_companies.ticker=tbl_portfolio.ticker;
