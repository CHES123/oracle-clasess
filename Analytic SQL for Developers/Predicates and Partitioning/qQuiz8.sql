create table t ( c1 varchar2(10), c2 varchar2(10));

insert into t values ('Ax','ax');
insert into t values ('Ax','ay');
insert into t values ('Ax','az'); 
insert into t values ('Bs','ba'); 
insert into t values ('Bs','bb'); 
insert into t values ('Bs','bc'); 
insert into t values ('Bs','bd'); 
insert into t values ('Cv','c1'); 
insert into t values ('Cv','c2'); 
insert into t values ('Cv','c3'); 
insert into t values ('Cv','c4'); 
insert into t values ('Da','dw'); 

--I want a report that ranks the C1 column over the entire table, and ranks the C2 column within its logical parent C1 value. Mark a choice as correct if the following ---output will be displayed after execution:


select 
C1, dense_rank() over(order by c1) c1_index,
C2, row_number() over(partition by c1 order by c2) c2_index_for_c1

from t
