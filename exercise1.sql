create database if not exists trigger1;
use trigger1;
create table if not exists trigger_ex
(
`name` varchar(30),
mail_id varchar(30),
ph_no varchar(30),
address varchar(50),
user_sys varchar(30),
time_sys varchar(30),
salary decimal(10,2),
insentive decimal(10,2),
final_salary decimal(10,2)
);

delimiter $$
create trigger final_sal_count1
before insert
on trigger_ex for each row 
begin
    set new.final_salary = new.salary+new.insentive;
end $$

insert into trigger_ex(`name`,mail_id,ph_no,address,user_sys,time_sys,salary,insentive) values("xyz","abc@gmail.com","1234","vadodara","localhost","2024-07-23",10000.00,2000.00);
insert into trigger_ex(`name`,mail_id,ph_no,address,user_sys,time_sys,salary,insentive) values("abc","abc@gmail.com","23456","vadodara","localhost","2024-07-23",18000.00,1500.00);
insert into trigger_ex(`name`,mail_id,ph_no,address,user_sys,time_sys,salary,insentive) values("mno","mno@gmail.com","523456","vadodara","localhost","2024-07-23",22000.00,1200.00);

select * from trigger_ex;