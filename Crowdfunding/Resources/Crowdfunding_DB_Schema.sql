-- Create Contacts table
create table contacts (
	contact_id integer Primary Key not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(100) not null
);

-- Create Category table
create table category(
	category_id varchar(10) Primary Key not null,
	category varchar(50) not null
);

-- Create Subcategory table
create table subcategory(
	subcategory_id varchar(10) Primary Key not null,
	subcategory varchar(50) not null
);

-- Create Campaign table
create table campaign (
	cf_id int Primary Key not null,
	contact_id int not null,
	company_name varchar(100) not null,
	description text not null,
	goal numeric(10,2) not null,
	pledged numeric (10,2) not null,
	outcome varchar(50) not null,
	backers_count int not null,
	country	varchar(10) not null,
	currency varchar(10) not null,
	launched_date date not null,
	end_date date not null,
	category_id varchar(10) not null,
	subcategory_id varchar(10) not null,

	-- Define foreign Key Relationships / Constraints
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

-- Confirm Table Creation
select * from contacts;
select * from category;
select * from subcategory;
select * from campaign;

-- Process Import Uploads, then reconfirm with above
