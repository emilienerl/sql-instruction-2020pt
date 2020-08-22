select * from customer;

select Name, Sales
	from Customer;
    
select Name, Sales from Customer
	Order by Name;    
    
Select Name, Sales from Customer
	Order by Sales desc;
    
Select Name, Sales from Customer
		where sales > 40000000;
        
Select Name, Sales from Customer
		where sales >= 30000000 and sales < 40000000;        