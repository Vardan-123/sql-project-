 name and age of employees 
	--who are getting min salary
	 -- from the range of max and avg salary 
	       -- for the employees whoose salary is greater than 50000 
   --and name has character "A" is mandatory 
   

   	Create table h
 ( 
   Id int, 
   name varchar (100),
   age smallint,
   salary bigint
   )
insert into h
	(id , name , age , salary )
	Values 
    ( 1 ,'sagar',21,50000)
    ( 2 ,'Ram',25,60000)
    ( 3 ,'shyam',25,70000),
	( 4 ,'jogendra',27,80000),
	( 5 ,'kishore',30,100000),
	( 6 ,'ayushi',NULL,50000),
    ( 7 ,'Aman',NULL ,10000),
	( 8 ,'raghuver',NULL ,10000),
	( 9 ,'jaya',NULL ,100000),
	( 10 ,'jiveshu',NULL ,20000)
   Select * from h

   select name, age from h 
   where 
   name like '%A%'
   and salary = (select min(salary) from h 
                 where salary<= (select max(salary) from h where salary>50000
				 and salary >=(select avg(salary) from h where salary >50000)
				 ))
	   



  
    

