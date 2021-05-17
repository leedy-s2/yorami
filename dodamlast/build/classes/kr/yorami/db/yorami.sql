
drop table parent cascade constraints;
drop table baby cascade constraints;
drop table diary cascade constraints;
drop table lac cascade constraints;
drop table play cascade constraints;

drop sequence b_num_seq;
drop sequence num_seq;
drop sequence l_cnt_seq;


create table parent(
p_id varchar2(20) primary key,
p_pw varchar2(20) not null,
p_name varchar2(20) not null,
p_phone varchar2(20) not null,
p_num varchar2(20)  not null
);

insert into parent values('client', '123', 'mama','010-1111-2222','1');

create table baby(
b_num number primary key,
p_id varchar2(20) not null,
b_name varchar2(20) not null,
b_birth date not null,
b_gender varchar2(10) not null,
b_blood varchar2(10) not null,
b_image varchar2(20),
constraint baby_pid_fk foreign key(p_id)references parent(p_id));
create sequence b_num_seq
      increment by 1
                     start with 1
                     nocache
                     nocycle;


create table diary(
num number primary key,
p_id varchar2(20) not null,
write varchar2(20) not null,
subject varchar2(50) not null,
reg_date date not null,
ref number,
re_step number,
re_level number,
readcount number,
content varchar2(500) not null,
constraint diary_pid_fk foreign key(p_id) references parent(p_id));
create sequence num_seq
      increment by 1
                     start with 1
                     nocache
                     nocycle;


create table lac(
b_num number not null,
l_time date not null,
l_cnt number(20) not null,
l_ml number(20),
constraint cppk foreign key(b_num) references baby(b_num)
);
create sequence l_cnt_seq
      increment by 1
                     start with 1
                     nocache
                     nocycle;
                     
            
                     

create table play(
 state number not null);

insert into play values(0);

select * from baby;

    insert into lac values(21, sysdate, l_cnt_seq.nextval, 0);     
                insert into lac values(2, '2021-05-01', l_cnt_seq.nextval, 10);     
                insert into lac values(2, '2021-05-02', l_cnt_seq.nextval,20);     
                insert into lac values(2, '2021-05-03', l_cnt_seq.nextval, 10);     
                insert into lac values(2, '2021-05-04', l_cnt_seq.nextval, 10);     
                insert into lac values(2, '2021-05-05', l_cnt_seq.nextval, 10);     
                insert into lac values(2, '2021-05-06', l_cnt_seq.nextval, 10);     
                insert into lac values(2, '2021-05-07', l_cnt_seq.nextval, 10);     
                insert into lac values(2, '2021-05-08', l_cnt_seq.nextval, 10);     
                insert into lac values(2, '2021-05-09', l_cnt_seq.nextval, 10);     
                insert into lac values(2, '2021-04-30', l_cnt_seq.nextval, 10);     
                                          
