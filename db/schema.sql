drop database if exists booksdb;
create database booksdb;
use booksdb;

create table format(
format_id tinyint unsigned auto_increment not null,
format varchar(30) not null,
data_created timestamp default current_timestamp,
data_updated timestamp default current_timestamp on update current_timestamp,
constraint pk_format primary key (format_id),
);



create table genre (
    genre_id tinyint unsigned auto_increment not null,
    genre varchar(60) unsigned not null,
    data_created timestamp default current_timestamp,
    data_updated timestamp default current_timestamp on update current_timestamp,
    constraint pk_genre primary key (genre_id),
);


create table publisher (
    publisher_id tinyint unsigned auto_increment not null,
    publisher varchar(30) unsigned not null,
    data_created timestamp default current_timestamp,
    data_updated timestamp default current_timestamp on update current_timestamp,
    constraint pk_publisher primary key (publisher_id),
);



create table author (
    author_id tinyint unsigned auto_increment not null,
    author varchar(25) unsigned not null,
    data_created timestamp default current_timestamp,
    data_updated timestamp default current_timestamp on update current_timestamp,
    constraint pk_author primary key (author_id),
);



create table book (
    book_id smallint unsigned auto_increment not null,
    title varchar(100) unsigned not null,
    publisher_id tinyint unsigned not null,
    copyright year,
    edition enum ('1st editon', '2nd editon', '3rd editon', '4th editon') default  '1st editon',
    edition_year year,
    binding enum('paperback', 'hardback','e-book') default 'paperback',
    rating enum('1', '2', '3', '4', '5') default '1',
    language enum ('english','japanense','korean') default 'english',
    num_pages smallint not null,
    qty tinyint unsigned not null
    data_created timestamp default current_timestamp,
    data_updated timestamp default current_timestamp on update current_timestamp,
    constraint pk_book primary key (book_id),
    constraint fk_author foreign key (author_id)
    references publisher (publisher_id),
    constraint fk_publisher foreign key (publisher_id)
    references author (author_id),
);


create table book_to_genre(
    book_id smallint unsigned not null,
    genre_id smallint unsigned not null,
    data_created timestamp default current_timestamp,
    data_updated timestamp default current_timestamp on update current_timestamp,
    constraint fk_book_bg foreign key (book_id)
    references book (book_id),
    constraint fk_genre_bg foreign key (genre_id)
    references genre (genre_id)
);