insert into employee(emp_name,emp_position)
values ('John Addams','Soft archi');
insert into employee(emp_name,emp_position)
values ('Kyle Broflovski','Soft engineer'),
('Eric Beck','Soft engineer');
#select * from employee;

insert into bug(bug_name,emp_id,status_bug,priority)
values ('Wrong values',2,true,50),
('Server error',3,true,70);
#select * from bug;

insert into bug_details(screenshot,tag,bug_id)
values ('this.jpg','Found here at line 12 . Please see.',1),
('that.jpg','Found here at line 37 . Be careful.',2);
#select * from bug_details;

insert into product(product_name) values('Speed Soft'),('Archiver soft');
#select * from product;

insert into product_has_bug(bug_id,product_id) values (2,1),(1,2);

#select *from product_has_bug;

insert into comment_thread(thread_name,bug_id) values ('Speed soft mistery bug',2),('Archiver mistery bug',1);
#select * from comment_thread;

insert into commentary(content,thread_id,employee_id) values ('Will check later',1,2),('Found a solution',2,3);
select * from bug;