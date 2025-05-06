insert into format(format)
values('physical');

insert into format(format)
values
('e-book'),
('audio');


insert into qty(qty)
values 
('1, 20'),
('2, 10'),
('3, 12'),
('4, 18'),
('5, 45'),
('6, 22'),
('7, 14'),
('8, 20'),
('9 ,11'),
('10, 10'),
('11, 27'),
('12, 14'),
('13, 28'),
('14, 16'),
('15, 15');

insert into genre(genre)
values ('fantasy');

insert into genre(genre)
values
('superhero'),
('mystery'),
('psychological thiller'),
('horror'),
('children literature'),
('comedy'),
('action'),
('dark fantasy'),
('adventure'),
('supernaturnal'),
('shonen'),
('historical'),
('martial arts');


insert into publisher(publisher)
values ('bloomsbury')


insert into publisher(publisher)
values
('dc comics'),
('shueisha'),
('scholastic'),
('random house'),
('skybound entertainment'),
('amulet books'),
('hakusensha'),
('naver webtoon'),
('vic medium'),
('harper and brothers');

insert into author(author)
values ('jk. rowling')


insert into author(author)
values
('scott snyder'),
('tsugumi ohba'),
('r.l.stine'),
('dr seuss'),
('robert kirkman'),
('jeff kinney'),
('kentaro miura'),
('lee jong'),
('takehiko iuninoue'),
('geoff johns'),
('e.b. white');


insert into book(
    title,
    author_id,
    publisher_id,
    copyright
    edition,
    edition_year,
    binding,
    rating,
    language,
    num_pages,
)
values
('harry potter and the philosopher stone', 1, 1, 1997, 'lst edition', 1999,'hardback','english', 223);



insert into book(
    title,
    author_id,
    publisher_id,
    copyright
    edition,
    edition_year,
    binding,
    rating,
    language,
    num_pages,
)
values
('absolute batman',	2 , 2, 2024	'1st edition', 2024, 'paperback', 5, 'english', 176),
('deathnote', 3,	3, 2003, '1st edition', 2003,' hardback', 5, 'japanense', 200),
('goosebumps welcome to the deadhouse', 4, 4, 1992, '1st edition	1992',	'paperback', 5,	'english', 123),
('cat in the hat', 5	, 5, 1957,'	1st edition	1957', 'hardback', 5, 'english', 61),
('invincible', 6, 6,	2005, '4th edition', 2023,'paperback', 3,' english',144),
('diary of the wimpy kid', 7,7, 2007, '1st edition', 2007, 'paperback' , 3, 'english' 244),
('berserk', 8, 8	, 1986, '1st edition', 2003, 'paperback', 4, 'japanense' 224),
('green eggs and ham', 4, 5,	1960, '1st edition', 1960,	'hardback',	5,	'english', 62),
('tower of god',	9, 9, null,'2nd edition', 2023,	'e-book', 2, 'korean', 272),
('ordeal', 10, 9, null, null, null, 'e-book', 3,	'english', 90),
('harry potter and the prisoner of azkaban' 1, 1, 1999, '1st edition', 1999,	'hardback', 4,	'english'	435),
('vagabond', 11,	10,	1998, '3rd edition', 2008,	'paperback', 3, 'japanense', 728),
('absolute superman', 12	, 2, 2024, '1st edtion', 2024, 'hardback' 5, 'english',	664),
("charlotte's web", 1952, '4th edition',	2001,	'hardback'	5,	'english '	184);



insert into book_to_genre(book_id, genre_id)
values
(1, 10), (1,1)



insert into book_to_genre(book_id, genre_id)
values
(2, 2), (2, 8),
(3, 3 ), (3, 4),
(4, 5), (4, 6),
(5, 7), (5,6),
(6, 2), (6, 8),
(7, 6), (7,7),
(8, 9), (8, 10), (8, 5), (8, 8),
(9, 6),
(10, 1), (10, 8),(10, 10) (10, 14),
(11, 2), (11, 8), (11, 14) (11, 12),
(12, 1), (12, 10),
(13, 14), (13, 13), (13, 12),
(14, 2), (14, 8),
(15, 6)
;



