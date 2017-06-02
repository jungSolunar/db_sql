create table members(
 mno integer not null comment 'member's serial number',
 email varchar(40) not null comment 'member's email',
 pwd varchar(100) not null comment 'member's password',
 mname varchar(50) not null comment 'member's name',
 cre_date datetime not null comment 'member's join date',
 mod_date datetime not null comment 'member's last pwd changed date'
)

alter table members
	add constraint pk_members
		primary key (mno);

create unique index uix_members
	on members( email asc);

alter table members modifiy column mno integer not null auto_increment comment 'member's serial number';


