select * from products
where contains(productname, 'tofu')


select * from customers
where contains((companyname, contactname, contacttitle), 'Sales')

select * from customers
where contains((companyname, contactname, contacttitle), 'Ana')

select * from Products
where freetext(Productname, 'chef')

select * from Products
where freetext(Productname, 'chai Ikura')


select * from Products
where freetext(Productname, 'Anton chef ')

select * from Products
where contains(Productname, 'chef AND (Gumbo) ')



select * from customers
where contains(companyname, 'NEAR((Around,Horn),2)')



