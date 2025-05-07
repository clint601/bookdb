DROP DATABASE IF EXISTS librarydb;
create database librarydb;
use librarydb;

create table format (
    format_id tinyint unsigned auto_increment not null,
    format varchar(20) not null,
    date_created timestamp default current_timestamp,
    last_update timestamp default current_timestamp on update current_timestamp,
    constraint pk_format primary key (format_id)
);

create table genre (
    genre_id tinyint unsigned auto_increment not null,
    genre varchar(50),
    date_created timestamp default current_timestamp,
    last_update timestamp default current_timestamp on update current_timestamp,
    constraint pk_genre primary key (genre_id)
);

create table publisher (
    publisher_id tinyint unsigned auto_increment not null,
    publisher varchar(30),
    date_created timestamp default current_timestamp,
    last_update timestamp default current_timestamp on update current_timestamp,
    constraint pk_publisher primary key (publisher_id)
);

create table author (
    author_id tinyint unsigned auto_increment not null,
    author varchar(20),
    date_created timestamp default current_timestamp,
    last_update timestamp default current_timestamp on update current_timestamp,
    constraint pk_author primary key (author_id)
);

create table book (
    book_id smallint unsigned auto_increment not null,
    title varchar(100) not null,
    author_id tinyint unsigned not null,
    publisher_id tinyint unsigned not null,
    copyright_year year,
    edition enum ('1st edition', '2nd edition', '3rd edition', '4th edition') default '1st edition',
    edition_year year,
    binding enum ('paperback', 'hardback', 'e-book') default 'hardback',
    rating enum ('1','2','3','4','5') default '1',
    language enum  ('english', 'japanese', 'korean') default 'english',
    num_pages smallint unsigned not null,
    qty tinyint unsigned not null,
    cover_image mediumtext,
    date_created timestamp default current_timestamp,
    last_update timestamp default current_timestamp on update current_timestamp,
    constraint pk_book primary key (book_id),
    constraint fk_author foreign key (author_id) references author (author_id),
    constraint fk_publisher foreign key (publisher_id) references publisher (publisher_id)
);

create table book_to_genre (
    book_id smallint unsigned not null,
    genre_id tinyint unsigned not null,
    date_created timestamp default current_timestamp,
    last_update timestamp default current_timestamp on update current_timestamp,
    constraint fk_book_bg foreign key (book_id) references book (book_id),
    constraint fk_genre_bg foreign key (genre_id) references genre (genre_id)
);

-- resetting auto increment
set @num:= 0;
update my_table set id = @num:= (@num + 1);
alter table my_table auto_increment = 1;
