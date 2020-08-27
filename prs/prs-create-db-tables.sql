-- create and select the database
drop database if exists prs;
create database prs;
use prs;

-- create the user table
CREATE TABLE user (
  ID			INT            			PRIMARY KEY  AUTO_INCREMENT,
  UserName      VARCHAR(20)    			 NOT NULL     UNIQUE,
  Password		VARCHAR(10)    			 NOT NULL,
  FirstName		VARCHAR(20)    			 NOT NULL,
  LastName		VARCHAR(20)    			 NOT NULL,
  PhoneNumber	VARCHAR(12)    			 NOT NULL,
  Email			VARCHAR(75)    			 NOT NULL,
  IsReviewer	TinyInt(1)     			 NOT NULL,
  IsAdmin		TinyInt(1)     			 NOT NULL
);

-- create Vendor table
CREATE TABLE vendor (
  ID			INT             PRIMARY KEY  AUTO_INCREMENT,
  Code      	VARCHAR(10)     NOT NULL     UNIQUE,
  Name			VARCHAR(255)    NOT NULL,
  Address		VARCHAR(255)    NOT NULL,
  City			VARCHAR(255)    NOT NULL,
  State			VARCHAR(2)      NOT NULL,
  Zip			VARCHAR(5)      NOT NULL,
  PhoneNumber	VARCHAR(12)     NOT NULL,
  Email			VARCHAR(100)    NOT NULL
);

-- create Request table
CREATE TABLE request (
  ID					INT             PRIMARY KEY  AUTO_INCREMENT,
  UserID      			INT    			UNIQUE,
  Description			VARCHAR(100)    NOT NULL,
  Justification			VARCHAR(255)    NOT NULL,
  DateNeeded			DATE     		NOT NULL,
  DeliveryMode			VARCHAR(25)     NOT NULL,
  Status				VARCHAR(20)     NOT NULL,
  Total					DECIMAL(10,2)   NOT NULL,
  SubmittedDate			DATETIME		NOT NULL,
  ReasonForRejection	VARCHAR(100),
FOREIGN KEY (UserID) REFERENCES user(ID)
);

-- create product table
CREATE TABLE product (
  ID			INT            PRIMARY KEY  AUTO_INCREMENT,
  VendorID      INT    		   NOT NULL,
  PartNumber	VARCHAR(50)    NOT NULL,
  Name			VARCHAR(150)   NOT NULL,
  Price			DECIMAL(10,2)  NOT NULL,
  Unit			VARCHAR(255),
  PhotoPath		VARCHAR(255),
  FOREIGN KEY (VendorID) REFERENCES vendor(ID),
  CONSTRAINT vendor_part unique (VendorID, PartNumber)
);

-- create Purchase Request Line Item table
CREATE TABLE lineitem (
  ID					INT            	PRIMARY KEY  AUTO_INCREMENT,
  RequestID      		INT,    		
  ProductID				INT    			NOT NULL,
  Quantity				INT   			NOT NULL,
FOREIGN KEY (ProductID) REFERENCES product(ID),
FOREIGN KEY (RequestID) REFERENCES request(ID),
CONSTRAINT req_pdt unique (RequestID, ProductID)
);