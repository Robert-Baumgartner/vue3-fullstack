--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: albums; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.albums (
    album_id integer NOT NULL,
    title text NOT NULL,
    artist_id integer,
    cover text
);


ALTER TABLE public.albums OWNER TO postgres;

--
-- Name: artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artists (
    artist_id integer NOT NULL,
    name text,
    description text
);


ALTER TABLE public.artists OWNER TO postgres;

--
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    genre_id integer NOT NULL,
    name character varying(120)
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- Name: media_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.media_types (
    media_type_id integer NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE public.media_types OWNER TO postgres;

--
-- Name: playlist_tracks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.playlist_tracks (
    playlist_id integer NOT NULL,
    track_id integer NOT NULL
);


ALTER TABLE public.playlist_tracks OWNER TO postgres;

--
-- Name: playlists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.playlists (
    playlist_id integer NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE public.playlists OWNER TO postgres;

--
-- Name: tracks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tracks (
    track_id integer NOT NULL,
    name character varying(200) NOT NULL,
    album_id integer,
    media_type_id integer,
    genre_id integer,
    composer character varying(220),
    milliseconds integer NOT NULL,
    bytes integer,
    unit_price numeric(10,2) NOT NULL
);


ALTER TABLE public.tracks OWNER TO postgres;

--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.albums VALUES (60, 'Fireball', 58, 'https://m.media-amazon.com/images/I/51O2VC+oN6L._SL1014_.jpg');
INSERT INTO public.albums VALUES (61, 'Knocking at Your Back Door: The Best Of Deep Purple in the 80''''s', 58, 'https://m.media-amazon.com/images/I/51FVu-IddZL.jpg');
INSERT INTO public.albums VALUES (2, 'Balls to the Wall', 2, 'https://m.media-amazon.com/images/I/71YJ1ToIdkL._SL1225_.jpg');
INSERT INTO public.albums VALUES (5, 'Big Ones', 3, 'https://m.media-amazon.com/images/I/71r8NYkzlnL._SL1100_.jpg');
INSERT INTO public.albums VALUES (3, 'Restless and Wild', 2, 'https://m.media-amazon.com/images/I/615JaYAJxnL._SL1200_.jpg');
INSERT INTO public.albums VALUES (4, 'Let There Be Rock', 1, 'https://m.media-amazon.com/images/I/81AGQUUgwEL._SL1500_.jpg');
INSERT INTO public.albums VALUES (62, 'Machine Head', 58, 'https://m.media-amazon.com/images/I/81np5G0gdUL._SL1400_.jpg');
INSERT INTO public.albums VALUES (59, 'Deep Purple In Rock', 58, 'https://m.media-amazon.com/images/I/81wVX4A3HdL._SL1300_.jpg');
INSERT INTO public.albums VALUES (120, 'Are You Experienced?', 94, 'https://m.media-amazon.com/images/I/7124B8uzhhL._SL1500_.jpg');
INSERT INTO public.albums VALUES (149, 'Garage Inc. (Disc 2)', 50, 'https://m.media-amazon.com/images/I/71pmuPA-BbL._SL1400_.jpg');
INSERT INTO public.albums VALUES (152, 'Master Of Puppets', 50, 'https://m.media-amazon.com/images/I/71sBmJvcIKL._SL1211_.jpg');
INSERT INTO public.albums VALUES (155, 'St. Anger', 50, 'https://m.media-amazon.com/images/I/810bEOUaJDL._SL1400_.jpg');
INSERT INTO public.albums VALUES (154, 'Ride The Lightning', 50, 'https://m.media-amazon.com/images/I/71cr-UivXLL._SL1400_.jpg');
INSERT INTO public.albums VALUES (185, 'Greatest Hits I', 51, 'https://m.media-amazon.com/images/I/71p5I79lz9L._SL1400_.jpg');
INSERT INTO public.albums VALUES (183, 'Dark Side Of The Moon', 120, 'https://m.media-amazon.com/images/I/51UtWpxbNYL._SL1500_.jpg');
INSERT INTO public.albums VALUES (186, 'News Of The World', 51, 'https://m.media-amazon.com/images/I/51NW8MQXqrL._SL1200_.jpg');
INSERT INTO public.albums VALUES (15, 'Alcohol Fueled Brewtality Live! [Disc 2]', 11, 'https://m.media-amazon.com/images/I/71FEgAj2GjL._SL1200_.jpg');
INSERT INTO public.albums VALUES (14, 'Alcohol Fueled Brewtality Live! [Disc 1]', 11, 'https://m.media-amazon.com/images/I/71FEgAj2GjL._SL1200_.jpg');
INSERT INTO public.albums VALUES (13, 'The Best Of Billy Cobham', 10, 'https://m.media-amazon.com/images/I/4128oECAPHL.jpg');
INSERT INTO public.albums VALUES (35, 'Garage Inc. (Disc 1)', 50, 'https://m.media-amazon.com/images/I/71pmuPA-BbL._SL1400_.jpg');
INSERT INTO public.albums VALUES (17, 'Black Sabbath Vol. 4 (Remaster)', 12, 'https://m.media-amazon.com/images/I/61f+3dlJ+zL._SL1400_.jpg');
INSERT INTO public.albums VALUES (16, 'Black Sabbath', 12, 'https://m.media-amazon.com/images/I/81UrulKjM9L._SL1400_.jpg');
INSERT INTO public.albums VALUES (55, 'Chronicle, Vol. 2', 76, 'https://m.media-amazon.com/images/I/916Up+7JpfL._SL1500_.jpg');
INSERT INTO public.albums VALUES (46, 'Supernatural', 59, 'https://m.media-amazon.com/images/I/91z6SsRHMdL._SL1500_.jpg');
INSERT INTO public.albums VALUES (54, 'Chronicle, Vol. 1', 76, 'https://m.media-amazon.com/images/I/91ML36Y33TL._SL1500_.jpg');
INSERT INTO public.albums VALUES (36, 'Greatest Hits II', 51, 'https://m.media-amazon.com/images/I/61twYY0f-jL._SL1400_.jpg');
INSERT INTO public.albums VALUES (235, 'How To Dismantle An Atomic Bomb', 150, 'https://m.media-amazon.com/images/I/71KzhQMMGYL._SL1400_.jpg');
INSERT INTO public.albums VALUES (232, 'Achtung Baby', 150, 'https://m.media-amazon.com/images/I/9159oJWXiVL._SL1500_.jpg');
INSERT INTO public.albums VALUES (237, 'Rattle And Hum', 150, 'https://m.media-amazon.com/images/I/412nBXGOCkL.jpg');
INSERT INTO public.albums VALUES (233, 'All That You Can''''t Leave Behind', 150, 'https://m.media-amazon.com/images/I/91AuoL+mU4L._SL1500_.jpg');
INSERT INTO public.albums VALUES (236, 'Pop', 150, 'https://m.media-amazon.com/images/I/81SpGYq4qiL._SL1400_.jpg');
INSERT INTO public.albums VALUES (245, 'Van Halen III', 152, 'https://m.media-amazon.com/images/I/81xHeELybpL._SL1425_.jpg');
INSERT INTO public.albums VALUES (242, 'Diver Down', 152, 'https://m.media-amazon.com/images/I/61GHjAdyCGL._SL1446_.jpg');
INSERT INTO public.albums VALUES (243, 'The Best Of Van Halen, Vol. I', 152, 'https://m.media-amazon.com/images/I/61cg931WpCL._SL1448_.jpg');
INSERT INTO public.albums VALUES (244, 'Van Halen', 152, 'https://m.media-amazon.com/images/I/71VMc4rJs7L._SL1440_.jpg');
INSERT INTO public.albums VALUES (283, 'Haydn: Symphonies 99 - 104', 217, 'https://m.media-amazon.com/images/I/61yY6Z3HTNL.jpg');
INSERT INTO public.albums VALUES (288, 'Fauré: Requiem, Ravel: Pavane & Others', 222, 'https://m.media-amazon.com/images/I/61KkonV1FKL.jpg');
INSERT INTO public.albums VALUES (282, 'Mozart: Wind Concertos', 216, 'https://m.media-amazon.com/images/I/81TIy1gXXZL._SL1450_.jpg');
INSERT INTO public.albums VALUES (280, 'The World of Classical Favourites', 214, 'https://m.media-amazon.com/images/I/519h0nUxg7L.jpg');
INSERT INTO public.albums VALUES (332, 'The Ultimate Relexation Album', 262, 'https://m.media-amazon.com/images/I/81xYCDYru2L._SL1430_.jpg');
INSERT INTO public.albums VALUES (333, 'Purcell: Music for the Queen Mary', 263, 'https://m.media-amazon.com/images/I/71abtwk0VwL._SL1263_.jpg');
INSERT INTO public.albums VALUES (1, 'For Those About To Rock', 1, 'https://m.media-amazon.com/images/I/71pkgbvLHYL._SX425_.jpg');


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.artists VALUES (150, 'U2', 'U2 are an Irish rock band from Dublin');
INSERT INTO public.artists VALUES (2, 'Accept', 'Accept are a German heavy metal band from the town of Solingen, formed in 1976 by guitarist Wolf Hoffmann and former members Udo Dirkschneider (vocals) and Peter Baltes (bass).');
INSERT INTO public.artists VALUES (3, 'Aerosmith', 'Aerosmith is an American rock band formed in Boston in 1970. The group consists of Steven Tyler (lead vocals), Joe Perry (guitar), Tom Hamilton (bass), Joey Kramer (drums) and Brad Whitford (guitar). Their style, which is rooted in blues-based hard rock, has also incorporated elements of pop rock, heavy metal, and rhythm and blues.');
INSERT INTO public.artists VALUES (1, 'AC/DC', 'AC/DC (stylised as ACϟDC) are an Australian rock band formed in Sydney in 1973 by Scottish-born brothers Malcolm and Angus Young.Their music has been variously described as hard rock, blues rock, and heavy metal,but the band themselves call it simply "rock and roll".');
INSERT INTO public.artists VALUES (214, 'Academy of St. Martin in the Fields & Sir Neville Marriner', 'The Academy of St Martin in the Fields (ASMF) is an English chamber orchestra, based in London.

John Churchill, then Master of Music at the London church of St Martin-in-the-Fields, and Neville Marriner founded the orchestra as "The Academy of St. Martin-in-the-Fields," a small, conductorless string group. The ASMF gave its first concert on 13 November 1959, in the church after which it was named. In 1988, the orchestra dropped the hyphens from its full name.');
INSERT INTO public.artists VALUES (222, 'Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair', 'John Churchill, then Master of Music at the London church of St Martin-in-the-Fields, and Neville Marriner founded the orchestra as "The Academy of St. Martin-in-the-Fields," a small, conductorless string group. The ASMF gave its first concert on 13 November 1959, in the church after which it was named. In 1988, the orchestra dropped the hyphens from its full name.');
INSERT INTO public.artists VALUES (215, 'Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner', 'The Academy of St Martin in the Fields (ASMF) is an English chamber orchestra, based in London.

John Churchill, then Master of Music at the London church of St Martin-in-the-Fields, and Neville Marriner founded the orchestra as "The Academy of St. Martin-in-the-Fields," a small, conductorless string group. The ASMF gave its first concert on 13 November 1959, in the church after which it was named. In 1988, the orchestra dropped the hyphens from its full name.');
INSERT INTO public.artists VALUES (10, 'Billy Cobham', 'William Emanuel Cobham Jr. (born May 16, 1944) is a Panamanian–American jazz drummer who came to prominence in the late 1960s and early 1970s with trumpeter Miles Davis and then with the Mahavishnu Orchestra.');
INSERT INTO public.artists VALUES (11, 'Black Label Society', 'Black Label Society is an American heavy metal band formed in Los Angeles, California in 1998 by guitarist/singer Zakk Wylde. To date, the band has released eleven studio albums, two live albums, two compilation albums, one EP, and three video albums.');
INSERT INTO public.artists VALUES (12, 'Black Sabbath', 'Black Sabbath were an English rock band formed in Birmingham in 1968 by guitarist Tony Iommi, drummer Bill Ward, bassist Geezer Butler and vocalist Ozzy Osbourne. They are often cited as pioneers of heavy metal music.');
INSERT INTO public.artists VALUES (59, 'Santana', 'Carlos Augusto Santana Alves - born July 20, 1947 - is an American guitarist who rose to fame in the late 1960s and early 1970s with his band Santana, which pioneered a fusion of Rock and roll and Latin American jazz.');
INSERT INTO public.artists VALUES (50, 'Metallica', 'Metallica is an American heavy metal band. The band was formed in 1981 in Los Angeles by vocalist/guitarist James Hetfield and drummer Lars Ulrich and has been based in San Francisco for most of its career.');
INSERT INTO public.artists VALUES (58, 'Deep Purple', 'Deep Purple are an English rock band formed in London in 1968. They are considered to be among the pioneers of heavy metal and modern hard rock, but their musical approach has changed over the years.');
INSERT INTO public.artists VALUES (51, 'Queen', 'Queen are a British rock band formed in London in 1970. The band comprised Freddie Mercury (lead vocals, piano), Brian May (guitar, vocals), Roger Taylor (drums, vocals) and John Deacon (bass). ');
INSERT INTO public.artists VALUES (76, 'Creedence Clearwater Revival', 'Creedence Clearwater Revival, also referred to as Creedence and CCR, was an American rock band formed in El Cerrito, California. The band initially consisted of lead vocalist, lead guitarist, and primary songwriter John Fogerty; his brother, rhythm guitarist Tom Fogerty; bassist Stu Cook; and drummer Doug Clifford.');
INSERT INTO public.artists VALUES (94, 'Jimi Hendrix', 'James Marshall "Jimi" Hendrix (born Johnny Allen Hendrix; November 27');
INSERT INTO public.artists VALUES (120, 'Pink Floyd', 'Pink Floyd are an English rock band formed in London in 1965. Gaining an early following as one of the first British psychedelic groups, they were distinguished for their extended compositions, sonic experimentation, philosophical lyrics and elaborate live shows. ');
INSERT INTO public.artists VALUES (137, 'The Black Crowes', 'The Black Crowes are an American rock band formed in Atlanta');
INSERT INTO public.artists VALUES (152, 'Van Halen', 'Van Halen  was an American rock band formed in Pasadena');
INSERT INTO public.artists VALUES (165, 'Jackson Browne', 'Clyde Jackson Browne (born October 9');
INSERT INTO public.artists VALUES (216, 'Berliner Philharmoniker, Claudio Abbado & Sabine Meyer', 'The Berlin Philharmonic (German: Berliner Philharmoniker) is a German orchestra based in Berlin. It is one of the most popular, acclaimed and well-respected orchestras in the world.');
INSERT INTO public.artists VALUES (217, 'Royal Philharmonic Orchestra & Sir Thomas Beecham', 'The Royal Philharmonic Orchestra (RPO) is a British symphony orchestra based in London, that performs and produces primarily classic works.');
INSERT INTO public.artists VALUES (221, 'Sir Georg Solti & Wiener Philharmoniker', 'The Vienna Philharmonic (VPO; German: Wiener Philharmoniker) is an orchestra that was founded in 1842 and is considered to be the finest in the world.');
INSERT INTO public.artists VALUES (263, 'Equale Brass Ensemble, John Eliot Gardiner & Munich Monteverdi Orchestra and Choir', 'The Monteverdi Choir was founded in 1964 by Sir John Eliot Gardiner for a performance of the Vespro della Beata Vergine in King''s College Chapel, Cambridge.');
INSERT INTO public.artists VALUES (265, 'Julian Bream', 'Julian Alexander Bream, CBE (15 July 1933 – 14 August 2020) was an English classical guitarist and lutenist.');
INSERT INTO public.artists VALUES (268, 'Itzhak Perlman', 'Itzhak Perlman (Hebrew: יצחק פרלמן; born August 31');
INSERT INTO public.artists VALUES (262, 'Charles Dutoit & L''Orchestre Symphonique de Montréal', 'The Montreal Symphony Orchestra (French: Orchestre symphonique de Montréal, or OSM) is a Canadian symphony orchestra based in Montreal, Quebec, Canada.');


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.genres VALUES (1, 'Rock');
INSERT INTO public.genres VALUES (2, 'Jazz');
INSERT INTO public.genres VALUES (3, 'Metal');
INSERT INTO public.genres VALUES (4, 'Alternative & Punk');
INSERT INTO public.genres VALUES (5, 'Rock And Roll');
INSERT INTO public.genres VALUES (6, 'Blues');
INSERT INTO public.genres VALUES (7, 'Latin');
INSERT INTO public.genres VALUES (8, 'Reggae');
INSERT INTO public.genres VALUES (9, 'Pop');
INSERT INTO public.genres VALUES (10, 'Soundtrack');
INSERT INTO public.genres VALUES (11, 'Bossa Nova');
INSERT INTO public.genres VALUES (12, 'Easy Listening');
INSERT INTO public.genres VALUES (13, 'Heavy Metal');
INSERT INTO public.genres VALUES (14, 'R&B/Soul');
INSERT INTO public.genres VALUES (15, 'Electronica/Dance');
INSERT INTO public.genres VALUES (16, 'World');
INSERT INTO public.genres VALUES (17, 'Hip Hop/Rap');
INSERT INTO public.genres VALUES (18, 'Science Fiction');
INSERT INTO public.genres VALUES (19, 'TV Shows');
INSERT INTO public.genres VALUES (20, 'Sci Fi & Fantasy');
INSERT INTO public.genres VALUES (21, 'Drama');
INSERT INTO public.genres VALUES (22, 'Comedy');
INSERT INTO public.genres VALUES (23, 'Alternative');
INSERT INTO public.genres VALUES (24, 'Classical');
INSERT INTO public.genres VALUES (25, 'Opera');


--
-- Data for Name: media_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.media_types VALUES (1, 'MPEG audio file');
INSERT INTO public.media_types VALUES (2, 'Protected AAC audio file');
INSERT INTO public.media_types VALUES (3, 'Protected MPEG-4 video file');
INSERT INTO public.media_types VALUES (4, 'Purchased AAC audio file');
INSERT INTO public.media_types VALUES (5, 'AAC audio file');


--
-- Data for Name: playlist_tracks; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.playlist_tracks VALUES (1, 3411);
INSERT INTO public.playlist_tracks VALUES (1, 3419);
INSERT INTO public.playlist_tracks VALUES (1, 3438);
INSERT INTO public.playlist_tracks VALUES (1, 3413);
INSERT INTO public.playlist_tracks VALUES (1, 3487);
INSERT INTO public.playlist_tracks VALUES (1, 3488);
INSERT INTO public.playlist_tracks VALUES (1, 3414);
INSERT INTO public.playlist_tracks VALUES (1, 123);
INSERT INTO public.playlist_tracks VALUES (1, 124);
INSERT INTO public.playlist_tracks VALUES (1, 125);
INSERT INTO public.playlist_tracks VALUES (1, 126);
INSERT INTO public.playlist_tracks VALUES (1, 127);
INSERT INTO public.playlist_tracks VALUES (1, 128);
INSERT INTO public.playlist_tracks VALUES (1, 129);
INSERT INTO public.playlist_tracks VALUES (1, 130);
INSERT INTO public.playlist_tracks VALUES (1, 131);
INSERT INTO public.playlist_tracks VALUES (1, 132);
INSERT INTO public.playlist_tracks VALUES (1, 133);
INSERT INTO public.playlist_tracks VALUES (1, 134);
INSERT INTO public.playlist_tracks VALUES (1, 135);
INSERT INTO public.playlist_tracks VALUES (1, 136);
INSERT INTO public.playlist_tracks VALUES (1, 137);
INSERT INTO public.playlist_tracks VALUES (1, 138);
INSERT INTO public.playlist_tracks VALUES (1, 139);
INSERT INTO public.playlist_tracks VALUES (1, 140);
INSERT INTO public.playlist_tracks VALUES (1, 141);
INSERT INTO public.playlist_tracks VALUES (1, 142);
INSERT INTO public.playlist_tracks VALUES (1, 143);
INSERT INTO public.playlist_tracks VALUES (1, 144);
INSERT INTO public.playlist_tracks VALUES (1, 145);
INSERT INTO public.playlist_tracks VALUES (1, 146);
INSERT INTO public.playlist_tracks VALUES (1, 147);
INSERT INTO public.playlist_tracks VALUES (1, 148);
INSERT INTO public.playlist_tracks VALUES (1, 149);
INSERT INTO public.playlist_tracks VALUES (1, 150);
INSERT INTO public.playlist_tracks VALUES (1, 151);
INSERT INTO public.playlist_tracks VALUES (1, 152);
INSERT INTO public.playlist_tracks VALUES (1, 153);
INSERT INTO public.playlist_tracks VALUES (1, 154);
INSERT INTO public.playlist_tracks VALUES (1, 155);
INSERT INTO public.playlist_tracks VALUES (1, 156);
INSERT INTO public.playlist_tracks VALUES (1, 157);
INSERT INTO public.playlist_tracks VALUES (1, 158);
INSERT INTO public.playlist_tracks VALUES (1, 159);
INSERT INTO public.playlist_tracks VALUES (1, 160);
INSERT INTO public.playlist_tracks VALUES (1, 161);
INSERT INTO public.playlist_tracks VALUES (1, 162);
INSERT INTO public.playlist_tracks VALUES (1, 163);
INSERT INTO public.playlist_tracks VALUES (1, 164);
INSERT INTO public.playlist_tracks VALUES (1, 165);
INSERT INTO public.playlist_tracks VALUES (1, 408);
INSERT INTO public.playlist_tracks VALUES (1, 409);
INSERT INTO public.playlist_tracks VALUES (1, 410);
INSERT INTO public.playlist_tracks VALUES (1, 411);
INSERT INTO public.playlist_tracks VALUES (1, 412);
INSERT INTO public.playlist_tracks VALUES (1, 413);
INSERT INTO public.playlist_tracks VALUES (1, 414);
INSERT INTO public.playlist_tracks VALUES (1, 415);
INSERT INTO public.playlist_tracks VALUES (1, 416);
INSERT INTO public.playlist_tracks VALUES (1, 417);
INSERT INTO public.playlist_tracks VALUES (1, 418);
INSERT INTO public.playlist_tracks VALUES (1, 1813);
INSERT INTO public.playlist_tracks VALUES (1, 1814);
INSERT INTO public.playlist_tracks VALUES (1, 1815);
INSERT INTO public.playlist_tracks VALUES (1, 1816);
INSERT INTO public.playlist_tracks VALUES (1, 1817);
INSERT INTO public.playlist_tracks VALUES (1, 1818);
INSERT INTO public.playlist_tracks VALUES (1, 1819);
INSERT INTO public.playlist_tracks VALUES (1, 1820);
INSERT INTO public.playlist_tracks VALUES (1, 1821);
INSERT INTO public.playlist_tracks VALUES (1, 1822);
INSERT INTO public.playlist_tracks VALUES (1, 1823);
INSERT INTO public.playlist_tracks VALUES (1, 1824);
INSERT INTO public.playlist_tracks VALUES (1, 1825);
INSERT INTO public.playlist_tracks VALUES (1, 1826);
INSERT INTO public.playlist_tracks VALUES (1, 1827);
INSERT INTO public.playlist_tracks VALUES (1, 1828);
INSERT INTO public.playlist_tracks VALUES (1, 1853);
INSERT INTO public.playlist_tracks VALUES (1, 1854);
INSERT INTO public.playlist_tracks VALUES (1, 1855);
INSERT INTO public.playlist_tracks VALUES (1, 1856);
INSERT INTO public.playlist_tracks VALUES (1, 1857);
INSERT INTO public.playlist_tracks VALUES (1, 1858);
INSERT INTO public.playlist_tracks VALUES (1, 1859);
INSERT INTO public.playlist_tracks VALUES (1, 1860);
INSERT INTO public.playlist_tracks VALUES (1, 1874);
INSERT INTO public.playlist_tracks VALUES (1, 1875);
INSERT INTO public.playlist_tracks VALUES (1, 1876);
INSERT INTO public.playlist_tracks VALUES (1, 1877);
INSERT INTO public.playlist_tracks VALUES (1, 1878);
INSERT INTO public.playlist_tracks VALUES (1, 1879);
INSERT INTO public.playlist_tracks VALUES (1, 1880);
INSERT INTO public.playlist_tracks VALUES (1, 1881);
INSERT INTO public.playlist_tracks VALUES (1, 1882);
INSERT INTO public.playlist_tracks VALUES (1, 1883);
INSERT INTO public.playlist_tracks VALUES (1, 1884);
INSERT INTO public.playlist_tracks VALUES (1, 1885);
INSERT INTO public.playlist_tracks VALUES (1, 1886);
INSERT INTO public.playlist_tracks VALUES (1, 1887);
INSERT INTO public.playlist_tracks VALUES (1, 1888);
INSERT INTO public.playlist_tracks VALUES (1, 1889);
INSERT INTO public.playlist_tracks VALUES (1, 1890);
INSERT INTO public.playlist_tracks VALUES (1, 1891);
INSERT INTO public.playlist_tracks VALUES (1, 1892);
INSERT INTO public.playlist_tracks VALUES (1, 1);
INSERT INTO public.playlist_tracks VALUES (1, 6);
INSERT INTO public.playlist_tracks VALUES (1, 7);
INSERT INTO public.playlist_tracks VALUES (1, 8);
INSERT INTO public.playlist_tracks VALUES (1, 9);
INSERT INTO public.playlist_tracks VALUES (1, 10);
INSERT INTO public.playlist_tracks VALUES (1, 11);
INSERT INTO public.playlist_tracks VALUES (1, 12);
INSERT INTO public.playlist_tracks VALUES (1, 13);
INSERT INTO public.playlist_tracks VALUES (1, 14);
INSERT INTO public.playlist_tracks VALUES (1, 15);
INSERT INTO public.playlist_tracks VALUES (1, 16);
INSERT INTO public.playlist_tracks VALUES (1, 17);
INSERT INTO public.playlist_tracks VALUES (1, 18);
INSERT INTO public.playlist_tracks VALUES (1, 19);
INSERT INTO public.playlist_tracks VALUES (1, 20);
INSERT INTO public.playlist_tracks VALUES (1, 21);
INSERT INTO public.playlist_tracks VALUES (1, 22);
INSERT INTO public.playlist_tracks VALUES (1, 2);
INSERT INTO public.playlist_tracks VALUES (1, 3);
INSERT INTO public.playlist_tracks VALUES (1, 4);
INSERT INTO public.playlist_tracks VALUES (1, 5);
INSERT INTO public.playlist_tracks VALUES (1, 23);
INSERT INTO public.playlist_tracks VALUES (1, 24);
INSERT INTO public.playlist_tracks VALUES (1, 25);
INSERT INTO public.playlist_tracks VALUES (1, 26);
INSERT INTO public.playlist_tracks VALUES (1, 27);
INSERT INTO public.playlist_tracks VALUES (1, 28);
INSERT INTO public.playlist_tracks VALUES (1, 29);
INSERT INTO public.playlist_tracks VALUES (1, 30);
INSERT INTO public.playlist_tracks VALUES (1, 31);
INSERT INTO public.playlist_tracks VALUES (1, 32);
INSERT INTO public.playlist_tracks VALUES (1, 33);
INSERT INTO public.playlist_tracks VALUES (1, 34);
INSERT INTO public.playlist_tracks VALUES (1, 35);
INSERT INTO public.playlist_tracks VALUES (1, 36);
INSERT INTO public.playlist_tracks VALUES (1, 37);
INSERT INTO public.playlist_tracks VALUES (1, 675);
INSERT INTO public.playlist_tracks VALUES (1, 676);
INSERT INTO public.playlist_tracks VALUES (1, 677);
INSERT INTO public.playlist_tracks VALUES (1, 678);
INSERT INTO public.playlist_tracks VALUES (1, 679);
INSERT INTO public.playlist_tracks VALUES (1, 680);
INSERT INTO public.playlist_tracks VALUES (1, 681);
INSERT INTO public.playlist_tracks VALUES (1, 682);
INSERT INTO public.playlist_tracks VALUES (1, 683);
INSERT INTO public.playlist_tracks VALUES (1, 684);
INSERT INTO public.playlist_tracks VALUES (1, 685);
INSERT INTO public.playlist_tracks VALUES (1, 686);
INSERT INTO public.playlist_tracks VALUES (1, 687);
INSERT INTO public.playlist_tracks VALUES (1, 688);
INSERT INTO public.playlist_tracks VALUES (1, 689);
INSERT INTO public.playlist_tracks VALUES (1, 690);
INSERT INTO public.playlist_tracks VALUES (1, 691);
INSERT INTO public.playlist_tracks VALUES (1, 692);
INSERT INTO public.playlist_tracks VALUES (1, 693);
INSERT INTO public.playlist_tracks VALUES (1, 694);
INSERT INTO public.playlist_tracks VALUES (1, 695);
INSERT INTO public.playlist_tracks VALUES (1, 696);
INSERT INTO public.playlist_tracks VALUES (1, 697);
INSERT INTO public.playlist_tracks VALUES (1, 698);
INSERT INTO public.playlist_tracks VALUES (1, 699);
INSERT INTO public.playlist_tracks VALUES (1, 700);
INSERT INTO public.playlist_tracks VALUES (1, 701);
INSERT INTO public.playlist_tracks VALUES (1, 702);
INSERT INTO public.playlist_tracks VALUES (1, 703);
INSERT INTO public.playlist_tracks VALUES (1, 704);
INSERT INTO public.playlist_tracks VALUES (1, 705);
INSERT INTO public.playlist_tracks VALUES (1, 706);
INSERT INTO public.playlist_tracks VALUES (1, 707);
INSERT INTO public.playlist_tracks VALUES (1, 708);
INSERT INTO public.playlist_tracks VALUES (1, 709);
INSERT INTO public.playlist_tracks VALUES (1, 710);
INSERT INTO public.playlist_tracks VALUES (1, 711);
INSERT INTO public.playlist_tracks VALUES (1, 712);
INSERT INTO public.playlist_tracks VALUES (1, 713);
INSERT INTO public.playlist_tracks VALUES (1, 714);
INSERT INTO public.playlist_tracks VALUES (1, 754);
INSERT INTO public.playlist_tracks VALUES (1, 755);
INSERT INTO public.playlist_tracks VALUES (1, 756);
INSERT INTO public.playlist_tracks VALUES (1, 757);
INSERT INTO public.playlist_tracks VALUES (1, 758);
INSERT INTO public.playlist_tracks VALUES (1, 759);
INSERT INTO public.playlist_tracks VALUES (1, 760);
INSERT INTO public.playlist_tracks VALUES (1, 761);
INSERT INTO public.playlist_tracks VALUES (1, 762);
INSERT INTO public.playlist_tracks VALUES (1, 763);
INSERT INTO public.playlist_tracks VALUES (1, 764);
INSERT INTO public.playlist_tracks VALUES (1, 765);
INSERT INTO public.playlist_tracks VALUES (1, 766);
INSERT INTO public.playlist_tracks VALUES (1, 767);
INSERT INTO public.playlist_tracks VALUES (1, 768);
INSERT INTO public.playlist_tracks VALUES (1, 769);
INSERT INTO public.playlist_tracks VALUES (1, 770);
INSERT INTO public.playlist_tracks VALUES (1, 771);
INSERT INTO public.playlist_tracks VALUES (1, 772);
INSERT INTO public.playlist_tracks VALUES (1, 773);
INSERT INTO public.playlist_tracks VALUES (1, 774);
INSERT INTO public.playlist_tracks VALUES (1, 775);
INSERT INTO public.playlist_tracks VALUES (1, 776);
INSERT INTO public.playlist_tracks VALUES (1, 777);
INSERT INTO public.playlist_tracks VALUES (1, 778);
INSERT INTO public.playlist_tracks VALUES (1, 779);
INSERT INTO public.playlist_tracks VALUES (1, 780);
INSERT INTO public.playlist_tracks VALUES (1, 781);
INSERT INTO public.playlist_tracks VALUES (1, 782);
INSERT INTO public.playlist_tracks VALUES (1, 783);
INSERT INTO public.playlist_tracks VALUES (1, 784);
INSERT INTO public.playlist_tracks VALUES (1, 785);
INSERT INTO public.playlist_tracks VALUES (1, 1479);
INSERT INTO public.playlist_tracks VALUES (1, 1480);
INSERT INTO public.playlist_tracks VALUES (1, 1481);
INSERT INTO public.playlist_tracks VALUES (1, 1482);
INSERT INTO public.playlist_tracks VALUES (1, 1483);
INSERT INTO public.playlist_tracks VALUES (1, 1484);
INSERT INTO public.playlist_tracks VALUES (1, 1485);
INSERT INTO public.playlist_tracks VALUES (1, 1486);
INSERT INTO public.playlist_tracks VALUES (1, 1487);
INSERT INTO public.playlist_tracks VALUES (1, 1488);
INSERT INTO public.playlist_tracks VALUES (1, 1489);
INSERT INTO public.playlist_tracks VALUES (1, 1490);
INSERT INTO public.playlist_tracks VALUES (1, 1491);
INSERT INTO public.playlist_tracks VALUES (1, 1492);
INSERT INTO public.playlist_tracks VALUES (1, 1493);
INSERT INTO public.playlist_tracks VALUES (1, 1494);
INSERT INTO public.playlist_tracks VALUES (1, 1495);
INSERT INTO public.playlist_tracks VALUES (1, 2229);
INSERT INTO public.playlist_tracks VALUES (1, 2230);
INSERT INTO public.playlist_tracks VALUES (1, 2231);
INSERT INTO public.playlist_tracks VALUES (1, 2232);
INSERT INTO public.playlist_tracks VALUES (1, 2233);
INSERT INTO public.playlist_tracks VALUES (1, 2234);
INSERT INTO public.playlist_tracks VALUES (1, 2235);
INSERT INTO public.playlist_tracks VALUES (1, 2236);
INSERT INTO public.playlist_tracks VALUES (1, 2237);
INSERT INTO public.playlist_tracks VALUES (1, 2254);
INSERT INTO public.playlist_tracks VALUES (1, 2255);
INSERT INTO public.playlist_tracks VALUES (1, 2256);
INSERT INTO public.playlist_tracks VALUES (1, 2257);
INSERT INTO public.playlist_tracks VALUES (1, 2258);
INSERT INTO public.playlist_tracks VALUES (1, 2259);
INSERT INTO public.playlist_tracks VALUES (1, 2260);
INSERT INTO public.playlist_tracks VALUES (1, 2261);
INSERT INTO public.playlist_tracks VALUES (1, 2262);
INSERT INTO public.playlist_tracks VALUES (1, 2263);
INSERT INTO public.playlist_tracks VALUES (1, 2264);
INSERT INTO public.playlist_tracks VALUES (1, 2265);
INSERT INTO public.playlist_tracks VALUES (1, 2266);
INSERT INTO public.playlist_tracks VALUES (1, 2267);
INSERT INTO public.playlist_tracks VALUES (1, 2268);
INSERT INTO public.playlist_tracks VALUES (1, 2269);
INSERT INTO public.playlist_tracks VALUES (1, 2270);
INSERT INTO public.playlist_tracks VALUES (1, 419);
INSERT INTO public.playlist_tracks VALUES (1, 420);
INSERT INTO public.playlist_tracks VALUES (1, 421);
INSERT INTO public.playlist_tracks VALUES (1, 422);
INSERT INTO public.playlist_tracks VALUES (1, 423);
INSERT INTO public.playlist_tracks VALUES (1, 424);
INSERT INTO public.playlist_tracks VALUES (1, 425);
INSERT INTO public.playlist_tracks VALUES (1, 426);
INSERT INTO public.playlist_tracks VALUES (1, 427);
INSERT INTO public.playlist_tracks VALUES (1, 428);
INSERT INTO public.playlist_tracks VALUES (1, 429);
INSERT INTO public.playlist_tracks VALUES (1, 430);
INSERT INTO public.playlist_tracks VALUES (1, 431);
INSERT INTO public.playlist_tracks VALUES (1, 432);
INSERT INTO public.playlist_tracks VALUES (1, 433);
INSERT INTO public.playlist_tracks VALUES (1, 434);
INSERT INTO public.playlist_tracks VALUES (1, 435);
INSERT INTO public.playlist_tracks VALUES (1, 2271);
INSERT INTO public.playlist_tracks VALUES (1, 2272);
INSERT INTO public.playlist_tracks VALUES (1, 2273);
INSERT INTO public.playlist_tracks VALUES (1, 2274);
INSERT INTO public.playlist_tracks VALUES (1, 2275);
INSERT INTO public.playlist_tracks VALUES (1, 2276);
INSERT INTO public.playlist_tracks VALUES (1, 2277);
INSERT INTO public.playlist_tracks VALUES (1, 2278);
INSERT INTO public.playlist_tracks VALUES (1, 2279);
INSERT INTO public.playlist_tracks VALUES (1, 2280);
INSERT INTO public.playlist_tracks VALUES (1, 2281);
INSERT INTO public.playlist_tracks VALUES (1, 570);
INSERT INTO public.playlist_tracks VALUES (1, 573);
INSERT INTO public.playlist_tracks VALUES (1, 577);
INSERT INTO public.playlist_tracks VALUES (1, 580);
INSERT INTO public.playlist_tracks VALUES (1, 581);
INSERT INTO public.playlist_tracks VALUES (1, 571);
INSERT INTO public.playlist_tracks VALUES (1, 579);
INSERT INTO public.playlist_tracks VALUES (1, 582);
INSERT INTO public.playlist_tracks VALUES (1, 572);
INSERT INTO public.playlist_tracks VALUES (1, 575);
INSERT INTO public.playlist_tracks VALUES (1, 578);
INSERT INTO public.playlist_tracks VALUES (1, 574);
INSERT INTO public.playlist_tracks VALUES (1, 576);
INSERT INTO public.playlist_tracks VALUES (1, 2926);
INSERT INTO public.playlist_tracks VALUES (1, 2927);
INSERT INTO public.playlist_tracks VALUES (1, 2928);
INSERT INTO public.playlist_tracks VALUES (1, 2929);
INSERT INTO public.playlist_tracks VALUES (1, 2930);
INSERT INTO public.playlist_tracks VALUES (1, 2931);
INSERT INTO public.playlist_tracks VALUES (1, 2932);
INSERT INTO public.playlist_tracks VALUES (1, 2933);
INSERT INTO public.playlist_tracks VALUES (1, 2934);
INSERT INTO public.playlist_tracks VALUES (1, 2935);
INSERT INTO public.playlist_tracks VALUES (1, 2936);
INSERT INTO public.playlist_tracks VALUES (1, 2937);
INSERT INTO public.playlist_tracks VALUES (1, 2938);
INSERT INTO public.playlist_tracks VALUES (1, 2939);
INSERT INTO public.playlist_tracks VALUES (1, 2940);
INSERT INTO public.playlist_tracks VALUES (1, 2941);
INSERT INTO public.playlist_tracks VALUES (1, 2942);
INSERT INTO public.playlist_tracks VALUES (1, 2943);
INSERT INTO public.playlist_tracks VALUES (1, 2944);
INSERT INTO public.playlist_tracks VALUES (1, 2945);
INSERT INTO public.playlist_tracks VALUES (1, 2946);
INSERT INTO public.playlist_tracks VALUES (1, 2947);
INSERT INTO public.playlist_tracks VALUES (1, 2948);
INSERT INTO public.playlist_tracks VALUES (1, 2964);
INSERT INTO public.playlist_tracks VALUES (1, 2965);
INSERT INTO public.playlist_tracks VALUES (1, 2966);
INSERT INTO public.playlist_tracks VALUES (1, 2967);
INSERT INTO public.playlist_tracks VALUES (1, 2968);
INSERT INTO public.playlist_tracks VALUES (1, 2969);
INSERT INTO public.playlist_tracks VALUES (1, 2970);
INSERT INTO public.playlist_tracks VALUES (1, 2971);
INSERT INTO public.playlist_tracks VALUES (1, 2972);
INSERT INTO public.playlist_tracks VALUES (1, 2973);
INSERT INTO public.playlist_tracks VALUES (1, 2974);
INSERT INTO public.playlist_tracks VALUES (1, 2975);
INSERT INTO public.playlist_tracks VALUES (1, 2976);
INSERT INTO public.playlist_tracks VALUES (1, 2977);
INSERT INTO public.playlist_tracks VALUES (1, 2978);
INSERT INTO public.playlist_tracks VALUES (1, 2979);
INSERT INTO public.playlist_tracks VALUES (1, 2980);
INSERT INTO public.playlist_tracks VALUES (1, 2981);
INSERT INTO public.playlist_tracks VALUES (1, 2982);
INSERT INTO public.playlist_tracks VALUES (1, 2983);
INSERT INTO public.playlist_tracks VALUES (1, 2984);
INSERT INTO public.playlist_tracks VALUES (1, 2985);
INSERT INTO public.playlist_tracks VALUES (1, 2986);
INSERT INTO public.playlist_tracks VALUES (1, 2987);
INSERT INTO public.playlist_tracks VALUES (1, 2988);
INSERT INTO public.playlist_tracks VALUES (1, 2989);
INSERT INTO public.playlist_tracks VALUES (1, 2990);
INSERT INTO public.playlist_tracks VALUES (1, 2991);
INSERT INTO public.playlist_tracks VALUES (1, 2992);
INSERT INTO public.playlist_tracks VALUES (1, 2993);
INSERT INTO public.playlist_tracks VALUES (1, 2994);
INSERT INTO public.playlist_tracks VALUES (1, 2995);
INSERT INTO public.playlist_tracks VALUES (1, 2996);
INSERT INTO public.playlist_tracks VALUES (1, 2997);
INSERT INTO public.playlist_tracks VALUES (1, 2998);
INSERT INTO public.playlist_tracks VALUES (1, 2999);
INSERT INTO public.playlist_tracks VALUES (1, 3000);
INSERT INTO public.playlist_tracks VALUES (1, 3001);
INSERT INTO public.playlist_tracks VALUES (1, 3002);
INSERT INTO public.playlist_tracks VALUES (1, 3003);
INSERT INTO public.playlist_tracks VALUES (1, 3064);
INSERT INTO public.playlist_tracks VALUES (1, 3065);
INSERT INTO public.playlist_tracks VALUES (1, 3066);
INSERT INTO public.playlist_tracks VALUES (1, 3067);
INSERT INTO public.playlist_tracks VALUES (1, 3068);
INSERT INTO public.playlist_tracks VALUES (1, 3069);
INSERT INTO public.playlist_tracks VALUES (1, 3070);
INSERT INTO public.playlist_tracks VALUES (1, 3071);
INSERT INTO public.playlist_tracks VALUES (1, 3072);
INSERT INTO public.playlist_tracks VALUES (1, 3073);
INSERT INTO public.playlist_tracks VALUES (1, 3074);
INSERT INTO public.playlist_tracks VALUES (1, 3075);
INSERT INTO public.playlist_tracks VALUES (1, 3076);
INSERT INTO public.playlist_tracks VALUES (1, 3077);
INSERT INTO public.playlist_tracks VALUES (1, 3078);
INSERT INTO public.playlist_tracks VALUES (1, 3079);
INSERT INTO public.playlist_tracks VALUES (1, 3080);
INSERT INTO public.playlist_tracks VALUES (1, 3052);
INSERT INTO public.playlist_tracks VALUES (1, 3053);
INSERT INTO public.playlist_tracks VALUES (1, 3054);
INSERT INTO public.playlist_tracks VALUES (1, 3055);
INSERT INTO public.playlist_tracks VALUES (1, 3056);
INSERT INTO public.playlist_tracks VALUES (1, 3057);
INSERT INTO public.playlist_tracks VALUES (1, 3058);
INSERT INTO public.playlist_tracks VALUES (1, 3059);
INSERT INTO public.playlist_tracks VALUES (1, 3060);
INSERT INTO public.playlist_tracks VALUES (1, 3061);
INSERT INTO public.playlist_tracks VALUES (1, 3062);
INSERT INTO public.playlist_tracks VALUES (1, 3063);
INSERT INTO public.playlist_tracks VALUES (1, 3081);
INSERT INTO public.playlist_tracks VALUES (1, 3082);
INSERT INTO public.playlist_tracks VALUES (1, 3083);
INSERT INTO public.playlist_tracks VALUES (1, 3084);
INSERT INTO public.playlist_tracks VALUES (1, 3085);
INSERT INTO public.playlist_tracks VALUES (1, 3086);
INSERT INTO public.playlist_tracks VALUES (1, 3087);
INSERT INTO public.playlist_tracks VALUES (1, 3088);
INSERT INTO public.playlist_tracks VALUES (1, 3089);
INSERT INTO public.playlist_tracks VALUES (1, 3090);
INSERT INTO public.playlist_tracks VALUES (1, 3091);
INSERT INTO public.playlist_tracks VALUES (1, 3092);
INSERT INTO public.playlist_tracks VALUES (1, 3093);
INSERT INTO public.playlist_tracks VALUES (1, 3094);
INSERT INTO public.playlist_tracks VALUES (1, 3095);
INSERT INTO public.playlist_tracks VALUES (1, 3096);
INSERT INTO public.playlist_tracks VALUES (1, 3097);
INSERT INTO public.playlist_tracks VALUES (1, 3098);
INSERT INTO public.playlist_tracks VALUES (1, 3099);
INSERT INTO public.playlist_tracks VALUES (1, 3100);
INSERT INTO public.playlist_tracks VALUES (1, 3101);
INSERT INTO public.playlist_tracks VALUES (1, 3102);
INSERT INTO public.playlist_tracks VALUES (1, 3103);
INSERT INTO public.playlist_tracks VALUES (5, 424);
INSERT INTO public.playlist_tracks VALUES (5, 428);
INSERT INTO public.playlist_tracks VALUES (5, 430);
INSERT INTO public.playlist_tracks VALUES (5, 434);
INSERT INTO public.playlist_tracks VALUES (5, 2926);
INSERT INTO public.playlist_tracks VALUES (5, 2927);
INSERT INTO public.playlist_tracks VALUES (5, 2928);
INSERT INTO public.playlist_tracks VALUES (5, 2929);
INSERT INTO public.playlist_tracks VALUES (5, 2930);
INSERT INTO public.playlist_tracks VALUES (5, 2931);
INSERT INTO public.playlist_tracks VALUES (5, 2932);
INSERT INTO public.playlist_tracks VALUES (5, 2933);
INSERT INTO public.playlist_tracks VALUES (5, 2934);
INSERT INTO public.playlist_tracks VALUES (5, 2935);
INSERT INTO public.playlist_tracks VALUES (5, 2936);
INSERT INTO public.playlist_tracks VALUES (5, 2937);
INSERT INTO public.playlist_tracks VALUES (5, 3075);
INSERT INTO public.playlist_tracks VALUES (5, 3076);
INSERT INTO public.playlist_tracks VALUES (5, 768);
INSERT INTO public.playlist_tracks VALUES (5, 769);
INSERT INTO public.playlist_tracks VALUES (5, 770);
INSERT INTO public.playlist_tracks VALUES (5, 771);
INSERT INTO public.playlist_tracks VALUES (5, 772);
INSERT INTO public.playlist_tracks VALUES (5, 773);
INSERT INTO public.playlist_tracks VALUES (5, 774);
INSERT INTO public.playlist_tracks VALUES (5, 775);
INSERT INTO public.playlist_tracks VALUES (5, 776);
INSERT INTO public.playlist_tracks VALUES (5, 777);
INSERT INTO public.playlist_tracks VALUES (5, 778);
INSERT INTO public.playlist_tracks VALUES (5, 3411);
INSERT INTO public.playlist_tracks VALUES (5, 23);
INSERT INTO public.playlist_tracks VALUES (5, 24);
INSERT INTO public.playlist_tracks VALUES (5, 25);
INSERT INTO public.playlist_tracks VALUES (5, 26);
INSERT INTO public.playlist_tracks VALUES (5, 27);
INSERT INTO public.playlist_tracks VALUES (5, 28);
INSERT INTO public.playlist_tracks VALUES (5, 29);
INSERT INTO public.playlist_tracks VALUES (5, 30);
INSERT INTO public.playlist_tracks VALUES (5, 31);
INSERT INTO public.playlist_tracks VALUES (5, 32);
INSERT INTO public.playlist_tracks VALUES (5, 33);
INSERT INTO public.playlist_tracks VALUES (5, 34);
INSERT INTO public.playlist_tracks VALUES (5, 35);
INSERT INTO public.playlist_tracks VALUES (5, 36);
INSERT INTO public.playlist_tracks VALUES (5, 37);
INSERT INTO public.playlist_tracks VALUES (5, 3);
INSERT INTO public.playlist_tracks VALUES (5, 4);
INSERT INTO public.playlist_tracks VALUES (5, 5);
INSERT INTO public.playlist_tracks VALUES (5, 3077);
INSERT INTO public.playlist_tracks VALUES (5, 3078);
INSERT INTO public.playlist_tracks VALUES (5, 3079);
INSERT INTO public.playlist_tracks VALUES (5, 3080);
INSERT INTO public.playlist_tracks VALUES (5, 2975);
INSERT INTO public.playlist_tracks VALUES (5, 2976);
INSERT INTO public.playlist_tracks VALUES (5, 2977);
INSERT INTO public.playlist_tracks VALUES (5, 2978);
INSERT INTO public.playlist_tracks VALUES (5, 2979);
INSERT INTO public.playlist_tracks VALUES (5, 2980);
INSERT INTO public.playlist_tracks VALUES (5, 2981);
INSERT INTO public.playlist_tracks VALUES (5, 2982);
INSERT INTO public.playlist_tracks VALUES (5, 2983);
INSERT INTO public.playlist_tracks VALUES (5, 2984);
INSERT INTO public.playlist_tracks VALUES (5, 2985);
INSERT INTO public.playlist_tracks VALUES (5, 2986);
INSERT INTO public.playlist_tracks VALUES (5, 408);
INSERT INTO public.playlist_tracks VALUES (5, 409);
INSERT INTO public.playlist_tracks VALUES (5, 410);
INSERT INTO public.playlist_tracks VALUES (5, 411);
INSERT INTO public.playlist_tracks VALUES (5, 412);
INSERT INTO public.playlist_tracks VALUES (5, 413);
INSERT INTO public.playlist_tracks VALUES (5, 414);
INSERT INTO public.playlist_tracks VALUES (5, 415);
INSERT INTO public.playlist_tracks VALUES (5, 416);
INSERT INTO public.playlist_tracks VALUES (5, 417);
INSERT INTO public.playlist_tracks VALUES (5, 418);
INSERT INTO public.playlist_tracks VALUES (5, 1813);
INSERT INTO public.playlist_tracks VALUES (5, 1814);
INSERT INTO public.playlist_tracks VALUES (5, 1815);
INSERT INTO public.playlist_tracks VALUES (5, 1816);
INSERT INTO public.playlist_tracks VALUES (5, 1817);
INSERT INTO public.playlist_tracks VALUES (5, 1818);
INSERT INTO public.playlist_tracks VALUES (5, 1819);
INSERT INTO public.playlist_tracks VALUES (5, 1820);
INSERT INTO public.playlist_tracks VALUES (5, 1821);
INSERT INTO public.playlist_tracks VALUES (5, 1822);
INSERT INTO public.playlist_tracks VALUES (5, 1823);
INSERT INTO public.playlist_tracks VALUES (5, 1824);
INSERT INTO public.playlist_tracks VALUES (5, 1825);
INSERT INTO public.playlist_tracks VALUES (5, 1826);
INSERT INTO public.playlist_tracks VALUES (5, 1827);
INSERT INTO public.playlist_tracks VALUES (5, 1828);
INSERT INTO public.playlist_tracks VALUES (5, 3092);
INSERT INTO public.playlist_tracks VALUES (5, 3093);
INSERT INTO public.playlist_tracks VALUES (5, 3094);
INSERT INTO public.playlist_tracks VALUES (5, 3095);
INSERT INTO public.playlist_tracks VALUES (5, 3096);
INSERT INTO public.playlist_tracks VALUES (5, 3097);
INSERT INTO public.playlist_tracks VALUES (5, 3098);
INSERT INTO public.playlist_tracks VALUES (5, 3099);
INSERT INTO public.playlist_tracks VALUES (5, 3100);
INSERT INTO public.playlist_tracks VALUES (5, 3101);
INSERT INTO public.playlist_tracks VALUES (5, 3102);
INSERT INTO public.playlist_tracks VALUES (5, 3103);
INSERT INTO public.playlist_tracks VALUES (5, 570);
INSERT INTO public.playlist_tracks VALUES (5, 573);
INSERT INTO public.playlist_tracks VALUES (5, 577);
INSERT INTO public.playlist_tracks VALUES (5, 580);
INSERT INTO public.playlist_tracks VALUES (5, 581);
INSERT INTO public.playlist_tracks VALUES (5, 571);
INSERT INTO public.playlist_tracks VALUES (5, 579);
INSERT INTO public.playlist_tracks VALUES (5, 582);
INSERT INTO public.playlist_tracks VALUES (5, 572);
INSERT INTO public.playlist_tracks VALUES (5, 575);
INSERT INTO public.playlist_tracks VALUES (5, 578);
INSERT INTO public.playlist_tracks VALUES (5, 574);
INSERT INTO public.playlist_tracks VALUES (5, 576);
INSERT INTO public.playlist_tracks VALUES (5, 3438);
INSERT INTO public.playlist_tracks VALUES (2, 1);
INSERT INTO public.playlist_tracks VALUES (2, 4);
INSERT INTO public.playlist_tracks VALUES (2, 146);
INSERT INTO public.playlist_tracks VALUES (2, 151);
INSERT INTO public.playlist_tracks VALUES (2, 152);
INSERT INTO public.playlist_tracks VALUES (2, 161);
INSERT INTO public.playlist_tracks VALUES (2, 3064);
INSERT INTO public.playlist_tracks VALUES (2, 3065);
INSERT INTO public.playlist_tracks VALUES (2, 3072);
INSERT INTO public.playlist_tracks VALUES (3, 3411);
INSERT INTO public.playlist_tracks VALUES (3, 3413);
INSERT INTO public.playlist_tracks VALUES (3, 3414);
INSERT INTO public.playlist_tracks VALUES (3, 3419);
INSERT INTO public.playlist_tracks VALUES (3, 3438);
INSERT INTO public.playlist_tracks VALUES (4, 2271);
INSERT INTO public.playlist_tracks VALUES (4, 2272);
INSERT INTO public.playlist_tracks VALUES (4, 2230);
INSERT INTO public.playlist_tracks VALUES (4, 2231);


--
-- Data for Name: playlists; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.playlists VALUES (5, '90''s Music');
INSERT INTO public.playlists VALUES (2, 'Rock');
INSERT INTO public.playlists VALUES (3, 'Classic');
INSERT INTO public.playlists VALUES (4, 'Party');
INSERT INTO public.playlists VALUES (1, 'Cross Mix');


--
-- Data for Name: tracks; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tracks VALUES (1, 'For Those About To Rock (We Salute You)', 1, 1, 1, 'Angus Young, Malcolm Young, Brian Johnson', 343719, 11170334, 0.99);
INSERT INTO public.tracks VALUES (2, 'Balls to the Wall', 2, 2, 1, NULL, 342562, 5510424, 0.99);
INSERT INTO public.tracks VALUES (3, 'Fast As a Shark', 3, 2, 1, 'F. Baltes, S. Kaufman, U. Dirkscneider & W. Hoffman', 230619, 3990994, 0.99);
INSERT INTO public.tracks VALUES (4, 'Restless and Wild', 3, 2, 1, 'F. Baltes, R.A. Smith-Diesel, S. Kaufman, U. Dirkscneider & W. Hoffman', 252051, 4331779, 0.99);
INSERT INTO public.tracks VALUES (5, 'Princess of the Dawn', 3, 2, 1, 'Deaffy & R.A. Smith-Diesel', 375418, 6290521, 0.99);
INSERT INTO public.tracks VALUES (6, 'Put The Finger On You', 1, 1, 1, 'Angus Young, Malcolm Young, Brian Johnson', 205662, 6713451, 0.99);
INSERT INTO public.tracks VALUES (7, 'Let''s Get It Up', 1, 1, 1, 'Angus Young, Malcolm Young, Brian Johnson', 233926, 7636561, 0.99);
INSERT INTO public.tracks VALUES (8, 'Inject The Venom', 1, 1, 1, 'Angus Young, Malcolm Young, Brian Johnson', 210834, 6852860, 0.99);
INSERT INTO public.tracks VALUES (9, 'Snowballed', 1, 1, 1, 'Angus Young, Malcolm Young, Brian Johnson', 203102, 6599424, 0.99);
INSERT INTO public.tracks VALUES (10, 'Evil Walks', 1, 1, 1, 'Angus Young, Malcolm Young, Brian Johnson', 263497, 8611245, 0.99);
INSERT INTO public.tracks VALUES (11, 'C.O.D.', 1, 1, 1, 'Angus Young, Malcolm Young, Brian Johnson', 199836, 6566314, 0.99);
INSERT INTO public.tracks VALUES (12, 'Breaking The Rules', 1, 1, 1, 'Angus Young, Malcolm Young, Brian Johnson', 263288, 8596840, 0.99);
INSERT INTO public.tracks VALUES (13, 'Night Of The Long Knives', 1, 1, 1, 'Angus Young, Malcolm Young, Brian Johnson', 205688, 6706347, 0.99);
INSERT INTO public.tracks VALUES (14, 'Spellbound', 1, 1, 1, 'Angus Young, Malcolm Young, Brian Johnson', 270863, 8817038, 0.99);
INSERT INTO public.tracks VALUES (15, 'Go Down', 4, 1, 1, 'AC/DC', 331180, 10847611, 0.99);
INSERT INTO public.tracks VALUES (16, 'Dog Eat Dog', 4, 1, 1, 'AC/DC', 215196, 7032162, 0.99);
INSERT INTO public.tracks VALUES (17, 'Let There Be Rock', 4, 1, 1, 'AC/DC', 366654, 12021261, 0.99);
INSERT INTO public.tracks VALUES (18, 'Bad Boy Boogie', 4, 1, 1, 'AC/DC', 267728, 8776140, 0.99);
INSERT INTO public.tracks VALUES (19, 'Problem Child', 4, 1, 1, 'AC/DC', 325041, 10617116, 0.99);
INSERT INTO public.tracks VALUES (20, 'Overdose', 4, 1, 1, 'AC/DC', 369319, 12066294, 0.99);
INSERT INTO public.tracks VALUES (21, 'Hell Ain''t A Bad Place To Be', 4, 1, 1, 'AC/DC', 254380, 8331286, 0.99);
INSERT INTO public.tracks VALUES (22, 'Whole Lotta Rosie', 4, 1, 1, 'AC/DC', 323761, 10547154, 0.99);
INSERT INTO public.tracks VALUES (23, 'Walk On Water', 5, 1, 1, 'Steven Tyler, Joe Perry, Jack Blades, Tommy Shaw', 295680, 9719579, 0.99);
INSERT INTO public.tracks VALUES (24, 'Love In An Elevator', 5, 1, 1, 'Steven Tyler, Joe Perry', 321828, 10552051, 0.99);
INSERT INTO public.tracks VALUES (25, 'Rag Doll', 5, 1, 1, 'Steven Tyler, Joe Perry, Jim Vallance, Holly Knight', 264698, 8675345, 0.99);
INSERT INTO public.tracks VALUES (26, 'What It Takes', 5, 1, 1, 'Steven Tyler, Joe Perry, Desmond Child', 310622, 10144730, 0.99);
INSERT INTO public.tracks VALUES (27, 'Dude (Looks Like A Lady)', 5, 1, 1, 'Steven Tyler, Joe Perry, Desmond Child', 264855, 8679940, 0.99);
INSERT INTO public.tracks VALUES (28, 'Janie''s Got A Gun', 5, 1, 1, 'Steven Tyler, Tom Hamilton', 330736, 10869391, 0.99);
INSERT INTO public.tracks VALUES (29, 'Cryin''', 5, 1, 1, 'Steven Tyler, Joe Perry, Taylor Rhodes', 309263, 10056995, 0.99);
INSERT INTO public.tracks VALUES (30, 'Amazing', 5, 1, 1, 'Steven Tyler, Richie Supa', 356519, 11616195, 0.99);
INSERT INTO public.tracks VALUES (31, 'Blind Man', 5, 1, 1, 'Steven Tyler, Joe Perry, Taylor Rhodes', 240718, 7877453, 0.99);
INSERT INTO public.tracks VALUES (32, 'Deuces Are Wild', 5, 1, 1, 'Steven Tyler, Jim Vallance', 215875, 7074167, 0.99);
INSERT INTO public.tracks VALUES (33, 'The Other Side', 5, 1, 1, 'Steven Tyler, Jim Vallance', 244375, 7983270, 0.99);
INSERT INTO public.tracks VALUES (34, 'Crazy', 5, 1, 1, 'Steven Tyler, Joe Perry, Desmond Child', 316656, 10402398, 0.99);
INSERT INTO public.tracks VALUES (35, 'Eat The Rich', 5, 1, 1, 'Steven Tyler, Joe Perry, Jim Vallance', 251036, 8262039, 0.99);
INSERT INTO public.tracks VALUES (36, 'Angel', 5, 1, 1, 'Steven Tyler, Desmond Child', 307617, 9989331, 0.99);
INSERT INTO public.tracks VALUES (37, 'Livin'' On The Edge', 5, 1, 1, 'Steven Tyler, Joe Perry, Mark Hudson', 381231, 12374569, 0.99);
INSERT INTO public.tracks VALUES (123, 'Quadrant', 13, 1, 2, 'Billy Cobham', 261851, 8538199, 0.99);
INSERT INTO public.tracks VALUES (124, 'Snoopy''s search-Red baron', 13, 1, 2, 'Billy Cobham', 456071, 15075616, 0.99);
INSERT INTO public.tracks VALUES (125, 'Spanish moss-"A sound portrait"-Spanish moss', 13, 1, 2, 'Billy Cobham', 248084, 8217867, 0.99);
INSERT INTO public.tracks VALUES (126, 'Moon germs', 13, 1, 2, 'Billy Cobham', 294060, 9714812, 0.99);
INSERT INTO public.tracks VALUES (127, 'Stratus', 13, 1, 2, 'Billy Cobham', 582086, 19115680, 0.99);
INSERT INTO public.tracks VALUES (128, 'The pleasant pheasant', 13, 1, 2, 'Billy Cobham', 318066, 10630578, 0.99);
INSERT INTO public.tracks VALUES (129, 'Solo-Panhandler', 13, 1, 2, 'Billy Cobham', 246151, 8230661, 0.99);
INSERT INTO public.tracks VALUES (130, 'Do what cha wanna', 13, 1, 2, 'George Duke', 274155, 9018565, 0.99);
INSERT INTO public.tracks VALUES (131, 'Intro/ Low Down', 14, 1, 3, NULL, 323683, 10642901, 0.99);
INSERT INTO public.tracks VALUES (132, '13 Years Of Grief', 14, 1, 3, NULL, 246987, 8137421, 0.99);
INSERT INTO public.tracks VALUES (133, 'Stronger Than Death', 14, 1, 3, NULL, 300747, 9869647, 0.99);
INSERT INTO public.tracks VALUES (134, 'All For You', 14, 1, 3, NULL, 235833, 7726948, 0.99);
INSERT INTO public.tracks VALUES (135, 'Super Terrorizer', 14, 1, 3, NULL, 319373, 10513905, 0.99);
INSERT INTO public.tracks VALUES (136, 'Phoney Smile Fake Hellos', 14, 1, 3, NULL, 273606, 9011701, 0.99);
INSERT INTO public.tracks VALUES (137, 'Lost My Better Half', 14, 1, 3, NULL, 284081, 9355309, 0.99);
INSERT INTO public.tracks VALUES (138, 'Bored To Tears', 14, 1, 3, NULL, 247327, 8130090, 0.99);
INSERT INTO public.tracks VALUES (139, 'A.N.D.R.O.T.A.Z.', 14, 1, 3, NULL, 266266, 8574746, 0.99);
INSERT INTO public.tracks VALUES (140, 'Born To Booze', 14, 1, 3, NULL, 282122, 9257358, 0.99);
INSERT INTO public.tracks VALUES (141, 'World Of Trouble', 14, 1, 3, NULL, 359157, 11820932, 0.99);
INSERT INTO public.tracks VALUES (142, 'No More Tears', 14, 1, 3, NULL, 555075, 18041629, 0.99);
INSERT INTO public.tracks VALUES (143, 'The Begining... At Last', 14, 1, 3, NULL, 365662, 11965109, 0.99);
INSERT INTO public.tracks VALUES (144, 'Heart Of Gold', 15, 1, 3, NULL, 194873, 6417460, 0.99);
INSERT INTO public.tracks VALUES (145, 'Snowblind', 15, 1, 3, NULL, 420022, 13842549, 0.99);
INSERT INTO public.tracks VALUES (146, 'Like A Bird', 15, 1, 3, NULL, 276532, 9115657, 0.99);
INSERT INTO public.tracks VALUES (147, 'Blood In The Wall', 15, 1, 3, NULL, 284368, 9359475, 0.99);
INSERT INTO public.tracks VALUES (148, 'The Beginning...At Last', 15, 1, 3, NULL, 271960, 8975814, 0.99);
INSERT INTO public.tracks VALUES (149, 'Black Sabbath', 16, 1, 3, NULL, 382066, 12440200, 0.99);
INSERT INTO public.tracks VALUES (150, 'The Wizard', 16, 1, 3, NULL, 264829, 8646737, 0.99);
INSERT INTO public.tracks VALUES (151, 'Behind The Wall Of Sleep', 16, 1, 3, NULL, 217573, 7169049, 0.99);
INSERT INTO public.tracks VALUES (152, 'N.I.B.', 16, 1, 3, NULL, 368770, 12029390, 0.99);
INSERT INTO public.tracks VALUES (153, 'Evil Woman', 16, 1, 3, NULL, 204930, 6655170, 0.99);
INSERT INTO public.tracks VALUES (154, 'Sleeping Village', 16, 1, 3, NULL, 644571, 21128525, 0.99);
INSERT INTO public.tracks VALUES (155, 'Warning', 16, 1, 3, NULL, 212062, 6893363, 0.99);
INSERT INTO public.tracks VALUES (156, 'Wheels Of Confusion / The Straightener', 17, 1, 3, 'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 494524, 16065830, 0.99);
INSERT INTO public.tracks VALUES (157, 'Tomorrow''s Dream', 17, 1, 3, 'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 192496, 6252071, 0.99);
INSERT INTO public.tracks VALUES (158, 'Changes', 17, 1, 3, 'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 286275, 9175517, 0.99);
INSERT INTO public.tracks VALUES (159, 'FX', 17, 1, 3, 'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 103157, 3331776, 0.99);
INSERT INTO public.tracks VALUES (160, 'Supernaut', 17, 1, 3, 'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 285779, 9245971, 0.99);
INSERT INTO public.tracks VALUES (161, 'Snowblind', 17, 1, 3, 'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 331676, 10813386, 0.99);
INSERT INTO public.tracks VALUES (162, 'Cornucopia', 17, 1, 3, 'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 234814, 7653880, 0.99);
INSERT INTO public.tracks VALUES (163, 'Laguna Sunrise', 17, 1, 3, 'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 173087, 5671374, 0.99);
INSERT INTO public.tracks VALUES (164, 'St. Vitus Dance', 17, 1, 3, 'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 149655, 4884969, 0.99);
INSERT INTO public.tracks VALUES (165, 'Under The Sun/Every Day Comes and Goes', 17, 1, 3, 'Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne', 350458, 11360486, 0.99);
INSERT INTO public.tracks VALUES (408, 'Free Speech For The Dumb', 35, 1, 3, 'Molaney/Morris/Roberts/Wainwright', 155428, 5076048, 0.99);
INSERT INTO public.tracks VALUES (409, 'It''s Electric', 35, 1, 3, 'Harris/Tatler', 213995, 6978601, 0.99);
INSERT INTO public.tracks VALUES (410, 'Sabbra Cadabra', 35, 1, 3, 'Black Sabbath', 380342, 12418147, 0.99);
INSERT INTO public.tracks VALUES (411, 'Turn The Page', 35, 1, 3, 'Seger', 366524, 11946327, 0.99);
INSERT INTO public.tracks VALUES (412, 'Die Die My Darling', 35, 1, 3, 'Danzig', 149315, 4867667, 0.99);
INSERT INTO public.tracks VALUES (413, 'Loverman', 35, 1, 3, 'Cave', 472764, 15446975, 0.99);
INSERT INTO public.tracks VALUES (414, 'Mercyful Fate', 35, 1, 3, 'Diamond/Shermann', 671712, 21942829, 0.99);
INSERT INTO public.tracks VALUES (415, 'Astronomy', 35, 1, 3, 'A.Bouchard/J.Bouchard/S.Pearlman', 397531, 13065612, 0.99);
INSERT INTO public.tracks VALUES (416, 'Whiskey In The Jar', 35, 1, 3, 'Traditional', 305005, 9943129, 0.99);
INSERT INTO public.tracks VALUES (417, 'Tuesday''s Gone', 35, 1, 3, 'Collins/Van Zandt', 545750, 17900787, 0.99);
INSERT INTO public.tracks VALUES (418, 'The More I See', 35, 1, 3, 'Molaney/Morris/Roberts/Wainwright', 287973, 9378873, 0.99);
INSERT INTO public.tracks VALUES (419, 'A Kind Of Magic', 36, 1, 1, 'Roger Taylor', 262608, 8689618, 0.99);
INSERT INTO public.tracks VALUES (420, 'Under Pressure', 36, 1, 1, 'Queen & David Bowie', 236617, 7739042, 0.99);
INSERT INTO public.tracks VALUES (421, 'Radio GA GA', 36, 1, 1, 'Roger Taylor', 343745, 11358573, 0.99);
INSERT INTO public.tracks VALUES (422, 'I Want It All', 36, 1, 1, 'Queen', 241684, 7876564, 0.99);
INSERT INTO public.tracks VALUES (423, 'I Want To Break Free', 36, 1, 1, 'John Deacon', 259108, 8552861, 0.99);
INSERT INTO public.tracks VALUES (424, 'Innuendo', 36, 1, 1, 'Queen', 387761, 12664591, 0.99);
INSERT INTO public.tracks VALUES (425, 'It''s A Hard Life', 36, 1, 1, 'Freddie Mercury', 249417, 8112242, 0.99);
INSERT INTO public.tracks VALUES (426, 'Breakthru', 36, 1, 1, 'Queen', 249234, 8150479, 0.99);
INSERT INTO public.tracks VALUES (427, 'Who Wants To Live Forever', 36, 1, 1, 'Brian May', 297691, 9577577, 0.99);
INSERT INTO public.tracks VALUES (428, 'Headlong', 36, 1, 1, 'Queen', 273057, 8921404, 0.99);
INSERT INTO public.tracks VALUES (429, 'The Miracle', 36, 1, 1, 'Queen', 294974, 9671923, 0.99);
INSERT INTO public.tracks VALUES (430, 'I''m Going Slightly Mad', 36, 1, 1, 'Queen', 248032, 8192339, 0.99);
INSERT INTO public.tracks VALUES (431, 'The Invisible Man', 36, 1, 1, 'Queen', 238994, 7920353, 0.99);
INSERT INTO public.tracks VALUES (432, 'Hammer To Fall', 36, 1, 1, 'Brian May', 220316, 7255404, 0.99);
INSERT INTO public.tracks VALUES (433, 'Friends Will Be Friends', 36, 1, 1, 'Freddie Mercury & John Deacon', 248920, 8114582, 0.99);
INSERT INTO public.tracks VALUES (434, 'The Show Must Go On', 36, 1, 1, 'Queen', 263784, 8526760, 0.99);
INSERT INTO public.tracks VALUES (435, 'One Vision', 36, 1, 1, 'Queen', 242599, 7936928, 0.99);
INSERT INTO public.tracks VALUES (570, '(Da Le) Yaleo', 46, 1, 1, 'Santana', 353488, 11769507, 0.99);
INSERT INTO public.tracks VALUES (571, 'Love Of My Life', 46, 1, 1, 'Carlos Santana & Dave Matthews', 347820, 11634337, 0.99);
INSERT INTO public.tracks VALUES (572, 'Put Your Lights On', 46, 1, 1, 'E. Shrody', 285178, 9394769, 0.99);
INSERT INTO public.tracks VALUES (573, 'Africa Bamba', 46, 1, 1, 'I. Toure, S. Tidiane Toure, Carlos Santana & K. Perazzo', 282827, 9492487, 0.99);
INSERT INTO public.tracks VALUES (574, 'Smooth', 46, 1, 1, 'M. Itaal Shur & Rob Thomas', 298161, 9867455, 0.99);
INSERT INTO public.tracks VALUES (575, 'Do You Like The Way', 46, 1, 1, 'L. Hill', 354899, 11741062, 0.99);
INSERT INTO public.tracks VALUES (576, 'Maria Maria', 46, 1, 1, 'W. Jean, J. Duplessis, Carlos Santana, K. Perazzo & R. Rekow', 262635, 8664601, 0.99);
INSERT INTO public.tracks VALUES (577, 'Migra', 46, 1, 1, 'R. Taha, Carlos Santana & T. Lindsay', 329064, 10963305, 0.99);
INSERT INTO public.tracks VALUES (578, 'Corazon Espinado', 46, 1, 1, 'F. Olivera', 276114, 9206802, 0.99);
INSERT INTO public.tracks VALUES (579, 'Wishing It Was', 46, 1, 1, 'Eale-Eye Cherry, M. Simpson, J. King & M. Nishita', 292832, 9771348, 0.99);
INSERT INTO public.tracks VALUES (580, 'El Farol', 46, 1, 1, 'Carlos Santana & KC Porter', 291160, 9599353, 0.99);
INSERT INTO public.tracks VALUES (581, 'Primavera', 46, 1, 1, 'KC Porter & JB Eckl', 378618, 12504234, 0.99);
INSERT INTO public.tracks VALUES (582, 'The Calling', 46, 1, 1, 'Carlos Santana & C. Thompson', 747755, 24703884, 0.99);
INSERT INTO public.tracks VALUES (675, 'Susie Q', 54, 1, 1, 'Hawkins-Lewis-Broadwater', 275565, 9043825, 0.99);
INSERT INTO public.tracks VALUES (676, 'I Put A Spell On You', 54, 1, 1, 'Jay Hawkins', 272091, 8943000, 0.99);
INSERT INTO public.tracks VALUES (677, 'Proud Mary', 54, 1, 1, 'J. C. Fogerty', 189022, 6229590, 0.99);
INSERT INTO public.tracks VALUES (678, 'Bad Moon Rising', 54, 1, 1, 'J. C. Fogerty', 140146, 4609835, 0.99);
INSERT INTO public.tracks VALUES (679, 'Lodi', 54, 1, 1, 'J. C. Fogerty', 191451, 6260214, 0.99);
INSERT INTO public.tracks VALUES (680, 'Green River', 54, 1, 1, 'J. C. Fogerty', 154279, 5105874, 0.99);
INSERT INTO public.tracks VALUES (681, 'Commotion', 54, 1, 1, 'J. C. Fogerty', 162899, 5354252, 0.99);
INSERT INTO public.tracks VALUES (682, 'Down On The Corner', 54, 1, 1, 'J. C. Fogerty', 164858, 5521804, 0.99);
INSERT INTO public.tracks VALUES (683, 'Fortunate Son', 54, 1, 1, 'J. C. Fogerty', 140329, 4617559, 0.99);
INSERT INTO public.tracks VALUES (684, 'Travelin'' Band', 54, 1, 1, 'J. C. Fogerty', 129358, 4270414, 0.99);
INSERT INTO public.tracks VALUES (685, 'Who''ll Stop The Rain', 54, 1, 1, 'J. C. Fogerty', 149394, 4899579, 0.99);
INSERT INTO public.tracks VALUES (686, 'Up Around The Bend', 54, 1, 1, 'J. C. Fogerty', 162429, 5368701, 0.99);
INSERT INTO public.tracks VALUES (687, 'Run Through The Jungle', 54, 1, 1, 'J. C. Fogerty', 186044, 6156567, 0.99);
INSERT INTO public.tracks VALUES (688, 'Lookin'' Out My Back Door', 54, 1, 1, 'J. C. Fogerty', 152946, 5034670, 0.99);
INSERT INTO public.tracks VALUES (689, 'Long As I Can See The Light', 54, 1, 1, 'J. C. Fogerty', 213237, 6924024, 0.99);
INSERT INTO public.tracks VALUES (690, 'I Heard It Through The Grapevine', 54, 1, 1, 'Whitfield-Strong', 664894, 21947845, 0.99);
INSERT INTO public.tracks VALUES (691, 'Have You Ever Seen The Rain?', 54, 1, 1, 'J. C. Fogerty', 160052, 5263675, 0.99);
INSERT INTO public.tracks VALUES (692, 'Hey Tonight', 54, 1, 1, 'J. C. Fogerty', 162847, 5343807, 0.99);
INSERT INTO public.tracks VALUES (693, 'Sweet Hitch-Hiker', 54, 1, 1, 'J. C. Fogerty', 175490, 5716603, 0.99);
INSERT INTO public.tracks VALUES (694, 'Someday Never Comes', 54, 1, 1, 'J. C. Fogerty', 239360, 7945235, 0.99);
INSERT INTO public.tracks VALUES (695, 'Walking On The Water', 55, 1, 1, 'J.C. Fogerty', 281286, 9302129, 0.99);
INSERT INTO public.tracks VALUES (696, 'Suzie-Q, Pt. 2', 55, 1, 1, 'J.C. Fogerty', 244114, 7986637, 0.99);
INSERT INTO public.tracks VALUES (697, 'Born On The Bayou', 55, 1, 1, 'J.C. Fogerty', 316630, 10361866, 0.99);
INSERT INTO public.tracks VALUES (698, 'Good Golly Miss Molly', 55, 1, 1, 'J.C. Fogerty', 163604, 5348175, 0.99);
INSERT INTO public.tracks VALUES (699, 'Tombstone Shadow', 55, 1, 1, 'J.C. Fogerty', 218880, 7209080, 0.99);
INSERT INTO public.tracks VALUES (700, 'Wrote A Song For Everyone', 55, 1, 1, 'J.C. Fogerty', 296385, 9675875, 0.99);
INSERT INTO public.tracks VALUES (701, 'Night Time Is The Right Time', 55, 1, 1, 'J.C. Fogerty', 190119, 6211173, 0.99);
INSERT INTO public.tracks VALUES (702, 'Cotton Fields', 55, 1, 1, 'J.C. Fogerty', 178181, 5919224, 0.99);
INSERT INTO public.tracks VALUES (703, 'It Came Out Of The Sky', 55, 1, 1, 'J.C. Fogerty', 176718, 5807474, 0.99);
INSERT INTO public.tracks VALUES (704, 'Don''t Look Now', 55, 1, 1, 'J.C. Fogerty', 131918, 4366455, 0.99);
INSERT INTO public.tracks VALUES (705, 'The Midnight Special', 55, 1, 1, 'J.C. Fogerty', 253596, 8297482, 0.99);
INSERT INTO public.tracks VALUES (706, 'Before You Accuse Me', 55, 1, 1, 'J.C. Fogerty', 207804, 6815126, 0.99);
INSERT INTO public.tracks VALUES (707, 'My Baby Left Me', 55, 1, 1, 'J.C. Fogerty', 140460, 4633440, 0.99);
INSERT INTO public.tracks VALUES (708, 'Pagan Baby', 55, 1, 1, 'J.C. Fogerty', 385619, 12713813, 0.99);
INSERT INTO public.tracks VALUES (709, '(Wish I Could) Hideaway', 55, 1, 1, 'J.C. Fogerty', 228466, 7432978, 0.99);
INSERT INTO public.tracks VALUES (710, 'It''s Just A Thought', 55, 1, 1, 'J.C. Fogerty', 237374, 7778319, 0.99);
INSERT INTO public.tracks VALUES (711, 'Molina', 55, 1, 1, 'J.C. Fogerty', 163239, 5390811, 0.99);
INSERT INTO public.tracks VALUES (712, 'Born To Move', 55, 1, 1, 'J.C. Fogerty', 342804, 11260814, 0.99);
INSERT INTO public.tracks VALUES (713, 'Lookin'' For A Reason', 55, 1, 1, 'J.C. Fogerty', 209789, 6933135, 0.99);
INSERT INTO public.tracks VALUES (714, 'Hello Mary Lou', 55, 1, 1, 'J.C. Fogerty', 132832, 4476563, 0.99);
INSERT INTO public.tracks VALUES (754, 'Speed King', 59, 1, 1, 'Blackmore, Gillan, Glover, Lord, Paice', 264385, 8587578, 0.99);
INSERT INTO public.tracks VALUES (755, 'Bloodsucker', 59, 1, 1, 'Blackmore, Gillan, Glover, Lord, Paice', 256261, 8344405, 0.99);
INSERT INTO public.tracks VALUES (756, 'Child In Time', 59, 1, 1, 'Blackmore, Gillan, Glover, Lord, Paice', 620460, 20230089, 0.99);
INSERT INTO public.tracks VALUES (757, 'Flight Of The Rat', 59, 1, 1, 'Blackmore, Gillan, Glover, Lord, Paice', 478302, 15563967, 0.99);
INSERT INTO public.tracks VALUES (758, 'Into The Fire', 59, 1, 1, 'Blackmore, Gillan, Glover, Lord, Paice', 210259, 6849310, 0.99);
INSERT INTO public.tracks VALUES (759, 'Living Wreck', 59, 1, 1, 'Blackmore, Gillan, Glover, Lord, Paice', 274886, 8993056, 0.99);
INSERT INTO public.tracks VALUES (760, 'Hard Lovin'' Man', 59, 1, 1, 'Blackmore, Gillan, Glover, Lord, Paice', 431203, 13931179, 0.99);
INSERT INTO public.tracks VALUES (761, 'Fireball', 60, 1, 1, 'Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice', 204721, 6714807, 0.99);
INSERT INTO public.tracks VALUES (762, 'No No No', 60, 1, 1, 'Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice', 414902, 13646606, 0.99);
INSERT INTO public.tracks VALUES (763, 'Strange Kind Of Woman', 60, 1, 1, 'Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice', 247092, 8072036, 0.99);
INSERT INTO public.tracks VALUES (764, 'Anyone''s Daughter', 60, 1, 1, 'Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice', 284682, 9354480, 0.99);
INSERT INTO public.tracks VALUES (765, 'The Mule', 60, 1, 1, 'Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice', 322063, 10638390, 0.99);
INSERT INTO public.tracks VALUES (766, 'Fools', 60, 1, 1, 'Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice', 500427, 16279366, 0.99);
INSERT INTO public.tracks VALUES (767, 'No One Came', 60, 1, 1, 'Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice', 385880, 12643813, 0.99);
INSERT INTO public.tracks VALUES (768, 'Knocking At Your Back Door', 61, 1, 1, 'Richie Blackmore, Ian Gillian, Roger Glover', 424829, 13779332, 0.99);
INSERT INTO public.tracks VALUES (769, 'Bad Attitude', 61, 1, 1, 'Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord', 307905, 10035180, 0.99);
INSERT INTO public.tracks VALUES (770, 'Child In Time (Son Of Aleric - Instrumental)', 61, 1, 1, 'Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice', 602880, 19712753, 0.99);
INSERT INTO public.tracks VALUES (771, 'Nobody''s Home', 61, 1, 1, 'Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice', 243017, 7929493, 0.99);
INSERT INTO public.tracks VALUES (772, 'Black Night', 61, 1, 1, 'Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice', 368770, 12058906, 0.99);
INSERT INTO public.tracks VALUES (773, 'Perfect Strangers', 61, 1, 1, 'Richie Blackmore, Ian Gillian, Roger Glover', 321149, 10445353, 0.99);
INSERT INTO public.tracks VALUES (774, 'The Unwritten Law', 61, 1, 1, 'Richie Blackmore, Ian Gillian, Roger Glover, Ian Paice', 295053, 9740361, 0.99);
INSERT INTO public.tracks VALUES (775, 'Call Of The Wild', 61, 1, 1, 'Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord', 293851, 9575295, 0.99);
INSERT INTO public.tracks VALUES (776, 'Hush', 61, 1, 1, 'South', 213054, 6944928, 0.99);
INSERT INTO public.tracks VALUES (777, 'Smoke On The Water', 61, 1, 1, 'Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice', 464378, 15180849, 0.99);
INSERT INTO public.tracks VALUES (778, 'Space Trucking', 61, 1, 1, 'Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice', 341185, 11122183, 0.99);
INSERT INTO public.tracks VALUES (779, 'Highway Star', 62, 1, 1, 'Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover', 368770, 12012452, 0.99);
INSERT INTO public.tracks VALUES (780, 'Maybe I''m A Leo', 62, 1, 1, 'Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover', 290455, 9502646, 0.99);
INSERT INTO public.tracks VALUES (781, 'Pictures Of Home', 62, 1, 1, 'Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover', 303777, 9903835, 0.99);
INSERT INTO public.tracks VALUES (782, 'Never Before', 62, 1, 1, 'Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover', 239830, 7832790, 0.99);
INSERT INTO public.tracks VALUES (783, 'Smoke On The Water', 62, 1, 1, 'Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover', 340871, 11246496, 0.99);
INSERT INTO public.tracks VALUES (784, 'Lazy', 62, 1, 1, 'Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover', 442096, 14397671, 0.99);
INSERT INTO public.tracks VALUES (785, 'Space Truckin''', 62, 1, 1, 'Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover', 272796, 8981030, 0.99);
INSERT INTO public.tracks VALUES (1479, 'Foxy Lady', 120, 1, 1, 'Jimi Hendrix', 199340, 6480896, 0.99);
INSERT INTO public.tracks VALUES (1480, 'Manic Depression', 120, 1, 1, 'Jimi Hendrix', 222302, 7289272, 0.99);
INSERT INTO public.tracks VALUES (1481, 'Red House', 120, 1, 1, 'Jimi Hendrix', 224130, 7285851, 0.99);
INSERT INTO public.tracks VALUES (1482, 'Can You See Me', 120, 1, 1, 'Jimi Hendrix', 153077, 4987068, 0.99);
INSERT INTO public.tracks VALUES (1483, 'Love Or Confusion', 120, 1, 1, 'Jimi Hendrix', 193123, 6329408, 0.99);
INSERT INTO public.tracks VALUES (1484, 'I Don''t Live Today', 120, 1, 1, 'Jimi Hendrix', 235311, 7661214, 0.99);
INSERT INTO public.tracks VALUES (1485, 'May This Be Love', 120, 1, 1, 'Jimi Hendrix', 191216, 6240028, 0.99);
INSERT INTO public.tracks VALUES (1486, 'Fire', 120, 1, 1, 'Jimi Hendrix', 164989, 5383075, 0.99);
INSERT INTO public.tracks VALUES (1487, 'Third Stone From The Sun', 120, 1, 1, 'Jimi Hendrix', 404453, 13186975, 0.99);
INSERT INTO public.tracks VALUES (1488, 'Remember', 120, 1, 1, 'Jimi Hendrix', 168150, 5509613, 0.99);
INSERT INTO public.tracks VALUES (1489, 'Are You Experienced?', 120, 1, 1, 'Jimi Hendrix', 254537, 8292497, 0.99);
INSERT INTO public.tracks VALUES (1490, 'Hey Joe', 120, 1, 1, 'Billy Roberts', 210259, 6870054, 0.99);
INSERT INTO public.tracks VALUES (1491, 'Stone Free', 120, 1, 1, 'Jimi Hendrix', 216293, 7002331, 0.99);
INSERT INTO public.tracks VALUES (1492, 'Purple Haze', 120, 1, 1, 'Jimi Hendrix', 171572, 5597056, 0.99);
INSERT INTO public.tracks VALUES (1493, '51st Anniversary', 120, 1, 1, 'Jimi Hendrix', 196388, 6398044, 0.99);
INSERT INTO public.tracks VALUES (1494, 'The Wind Cries Mary', 120, 1, 1, 'Jimi Hendrix', 200463, 6540638, 0.99);
INSERT INTO public.tracks VALUES (1495, 'Highway Chile', 120, 1, 1, 'Jimi Hendrix', 212453, 6887949, 0.99);
INSERT INTO public.tracks VALUES (1813, 'Helpless', 149, 1, 3, 'Harris/Tatler', 398315, 12977902, 0.99);
INSERT INTO public.tracks VALUES (1814, 'The Small Hours', 149, 1, 3, 'Holocaust', 403435, 13215133, 0.99);
INSERT INTO public.tracks VALUES (1815, 'The Wait', 149, 1, 3, 'Killing Joke', 295418, 9688418, 0.99);
INSERT INTO public.tracks VALUES (1816, 'Crash Course In Brain Surgery', 149, 1, 3, 'Bourge/Phillips/Shelley', 190406, 6233729, 0.99);
INSERT INTO public.tracks VALUES (1817, 'Last Caress/Green Hell', 149, 1, 3, 'Danzig', 209972, 6854313, 0.99);
INSERT INTO public.tracks VALUES (1818, 'Am I Evil?', 149, 1, 3, 'Harris/Tatler', 470256, 15387219, 0.99);
INSERT INTO public.tracks VALUES (1819, 'Blitzkrieg', 149, 1, 3, 'Jones/Sirotto/Smith', 216685, 7090018, 0.99);
INSERT INTO public.tracks VALUES (1820, 'Breadfan', 149, 1, 3, 'Bourge/Phillips/Shelley', 341551, 11100130, 0.99);
INSERT INTO public.tracks VALUES (1821, 'The Prince', 149, 1, 3, 'Harris/Tatler', 265769, 8624492, 0.99);
INSERT INTO public.tracks VALUES (1822, 'Stone Cold Crazy', 149, 1, 3, 'Deacon/May/Mercury/Taylor', 137717, 4514830, 0.99);
INSERT INTO public.tracks VALUES (1823, 'So What', 149, 1, 3, 'Culmer/Exalt', 189152, 6162894, 0.99);
INSERT INTO public.tracks VALUES (1824, 'Killing Time', 149, 1, 3, 'Sweet Savage', 183693, 6021197, 0.99);
INSERT INTO public.tracks VALUES (1825, 'Overkill', 149, 1, 3, 'Clarke/Kilmister/Tayler', 245133, 7971330, 0.99);
INSERT INTO public.tracks VALUES (1826, 'Damage Case', 149, 1, 3, 'Clarke/Farren/Kilmister/Tayler', 220212, 7212997, 0.99);
INSERT INTO public.tracks VALUES (1827, 'Stone Dead Forever', 149, 1, 3, 'Clarke/Kilmister/Tayler', 292127, 9556060, 0.99);
INSERT INTO public.tracks VALUES (1828, 'Too Late Too Late', 149, 1, 3, 'Clarke/Kilmister/Tayler', 192052, 6276291, 0.99);
INSERT INTO public.tracks VALUES (1853, 'Battery', 152, 1, 3, 'J.Hetfield/L.Ulrich', 312424, 10229577, 0.99);
INSERT INTO public.tracks VALUES (1854, 'Master Of Puppets', 152, 1, 3, 'K.Hammett', 515239, 16893720, 0.99);
INSERT INTO public.tracks VALUES (1855, 'The Thing That Should Not Be', 152, 1, 3, 'K.Hammett', 396199, 12952368, 0.99);
INSERT INTO public.tracks VALUES (1856, 'Welcome Home (Sanitarium)', 152, 1, 3, 'K.Hammett', 387186, 12679965, 0.99);
INSERT INTO public.tracks VALUES (1857, 'Disposable Heroes', 152, 1, 3, 'J.Hetfield/L.Ulrich', 496718, 16135560, 0.99);
INSERT INTO public.tracks VALUES (1858, 'Leper Messiah', 152, 1, 3, 'C.Burton', 347428, 11310434, 0.99);
INSERT INTO public.tracks VALUES (1859, 'Orion', 152, 1, 3, 'K.Hammett', 500062, 16378477, 0.99);
INSERT INTO public.tracks VALUES (1860, 'Damage Inc.', 152, 1, 3, 'K.Hammett', 330919, 10725029, 0.99);
INSERT INTO public.tracks VALUES (1874, 'Fight Fire With Fire', 154, 1, 3, 'Metallica', 285753, 9420856, 0.99);
INSERT INTO public.tracks VALUES (1875, 'Ride The Lightning', 154, 1, 3, 'Metallica', 397740, 13055884, 0.99);
INSERT INTO public.tracks VALUES (1876, 'For Whom The Bell Tolls', 154, 1, 3, 'Metallica', 311719, 10159725, 0.99);
INSERT INTO public.tracks VALUES (1877, 'Fade To Black', 154, 1, 3, 'Metallica', 414824, 13531954, 0.99);
INSERT INTO public.tracks VALUES (1878, 'Trapped Under Ice', 154, 1, 3, 'Metallica', 244532, 7975942, 0.99);
INSERT INTO public.tracks VALUES (1879, 'Escape', 154, 1, 3, 'Metallica', 264359, 8652332, 0.99);
INSERT INTO public.tracks VALUES (1880, 'Creeping Death', 154, 1, 3, 'Metallica', 396878, 12955593, 0.99);
INSERT INTO public.tracks VALUES (1881, 'The Call Of Ktulu', 154, 1, 3, 'Metallica', 534883, 17486240, 0.99);
INSERT INTO public.tracks VALUES (1882, 'Frantic', 155, 1, 3, 'Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich', 350458, 11510849, 0.99);
INSERT INTO public.tracks VALUES (1883, 'St. Anger', 155, 1, 3, 'Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich', 441234, 14363779, 0.99);
INSERT INTO public.tracks VALUES (1884, 'Some Kind Of Monster', 155, 1, 3, 'Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich', 505626, 16557497, 0.99);
INSERT INTO public.tracks VALUES (1885, 'Dirty Window', 155, 1, 3, 'Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich', 324989, 10670604, 0.99);
INSERT INTO public.tracks VALUES (1886, 'Invisible Kid', 155, 1, 3, 'Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich', 510197, 16591800, 0.99);
INSERT INTO public.tracks VALUES (1887, 'My World', 155, 1, 3, 'Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich', 345626, 11253756, 0.99);
INSERT INTO public.tracks VALUES (1888, 'Shoot Me Again', 155, 1, 3, 'Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich', 430210, 14093551, 0.99);
INSERT INTO public.tracks VALUES (1889, 'Sweet Amber', 155, 1, 3, 'Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich', 327235, 10616595, 0.99);
INSERT INTO public.tracks VALUES (1890, 'The Unnamed Feeling', 155, 1, 3, 'Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich', 429479, 14014582, 0.99);
INSERT INTO public.tracks VALUES (1891, 'Purify', 155, 1, 3, 'Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich', 314017, 10232537, 0.99);
INSERT INTO public.tracks VALUES (1892, 'All Within My Hands', 155, 1, 3, 'Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich', 527986, 17162741, 0.99);
INSERT INTO public.tracks VALUES (2229, 'Speak To Me/Breathe', 183, 1, 1, 'Mason/Waters, Gilmour, Wright', 234213, 7631305, 0.99);
INSERT INTO public.tracks VALUES (2230, 'On The Run', 183, 1, 1, 'Gilmour, Waters', 214595, 7206300, 0.99);
INSERT INTO public.tracks VALUES (2231, 'Time', 183, 1, 1, 'Mason, Waters, Wright, Gilmour', 425195, 13955426, 0.99);
INSERT INTO public.tracks VALUES (2232, 'The Great Gig In The Sky', 183, 1, 1, 'Wright, Waters', 284055, 9147563, 0.99);
INSERT INTO public.tracks VALUES (2233, 'Money', 183, 1, 1, 'Waters', 391888, 12930070, 0.99);
INSERT INTO public.tracks VALUES (2234, 'Us And Them', 183, 1, 1, 'Waters, Wright', 461035, 15000299, 0.99);
INSERT INTO public.tracks VALUES (2235, 'Any Colour You Like', 183, 1, 1, 'Gilmour, Mason, Wright, Waters', 205740, 6707989, 0.99);
INSERT INTO public.tracks VALUES (2236, 'Brain Damage', 183, 1, 1, 'Waters', 230556, 7497655, 0.99);
INSERT INTO public.tracks VALUES (2237, 'Eclipse', 183, 1, 1, 'Waters', 125361, 4065299, 0.99);
INSERT INTO public.tracks VALUES (2254, 'Bohemian Rhapsody', 185, 1, 1, 'Mercury, Freddie', 358948, 11619868, 0.99);
INSERT INTO public.tracks VALUES (2255, 'Another One Bites The Dust', 185, 1, 1, 'Deacon, John', 216946, 7172355, 0.99);
INSERT INTO public.tracks VALUES (2256, 'Killer Queen', 185, 1, 1, 'Mercury, Freddie', 182099, 5967749, 0.99);
INSERT INTO public.tracks VALUES (2257, 'Fat Bottomed Girls', 185, 1, 1, 'May, Brian', 204695, 6630041, 0.99);
INSERT INTO public.tracks VALUES (2258, 'Bicycle Race', 185, 1, 1, 'Mercury, Freddie', 183823, 6012409, 0.99);
INSERT INTO public.tracks VALUES (2259, 'You''re My Best Friend', 185, 1, 1, 'Deacon, John', 172225, 5602173, 0.99);
INSERT INTO public.tracks VALUES (2260, 'Don''t Stop Me Now', 185, 1, 1, 'Mercury, Freddie', 211826, 6896666, 0.99);
INSERT INTO public.tracks VALUES (2261, 'Save Me', 185, 1, 1, 'May, Brian', 228832, 7444624, 0.99);
INSERT INTO public.tracks VALUES (2262, 'Crazy Little Thing Called Love', 185, 1, 1, 'Mercury, Freddie', 164231, 5435501, 0.99);
INSERT INTO public.tracks VALUES (2263, 'Somebody To Love', 185, 1, 1, 'Mercury, Freddie', 297351, 9650520, 0.99);
INSERT INTO public.tracks VALUES (2264, 'Now I''m Here', 185, 1, 1, 'May, Brian', 255346, 8328312, 0.99);
INSERT INTO public.tracks VALUES (2265, 'Good Old-Fashioned Lover Boy', 185, 1, 1, 'Mercury, Freddie', 175960, 5747506, 0.99);
INSERT INTO public.tracks VALUES (2266, 'Play The Game', 185, 1, 1, 'Mercury, Freddie', 213368, 6915832, 0.99);
INSERT INTO public.tracks VALUES (2267, 'Flash', 185, 1, 1, 'May, Brian', 168489, 5464986, 0.99);
INSERT INTO public.tracks VALUES (2268, 'Seven Seas Of Rhye', 185, 1, 1, 'Mercury, Freddie', 170553, 5539957, 0.99);
INSERT INTO public.tracks VALUES (2269, 'We Will Rock You', 185, 1, 1, 'Deacon, John/May, Brian', 122880, 4026955, 0.99);
INSERT INTO public.tracks VALUES (2270, 'We Are The Champions', 185, 1, 1, 'Mercury, Freddie', 180950, 5880231, 0.99);
INSERT INTO public.tracks VALUES (2271, 'We Will Rock You', 186, 1, 1, 'May', 122671, 4026815, 0.99);
INSERT INTO public.tracks VALUES (2272, 'We Are The Champions', 186, 1, 1, 'Mercury', 182883, 5939794, 0.99);
INSERT INTO public.tracks VALUES (2273, 'Sheer Heart Attack', 186, 1, 1, 'Taylor', 207386, 6642685, 0.99);
INSERT INTO public.tracks VALUES (2274, 'All Dead, All Dead', 186, 1, 1, 'May', 190119, 6144878, 0.99);
INSERT INTO public.tracks VALUES (2275, 'Spread Your Wings', 186, 1, 1, 'Deacon', 275356, 8936992, 0.99);
INSERT INTO public.tracks VALUES (2276, 'Fight From The Inside', 186, 1, 1, 'Taylor', 184737, 6078001, 0.99);
INSERT INTO public.tracks VALUES (2277, 'Get Down, Make Love', 186, 1, 1, 'Mercury', 231235, 7509333, 0.99);
INSERT INTO public.tracks VALUES (2278, 'Sleep On The Sidewalk', 186, 1, 1, 'May', 187428, 6099840, 0.99);
INSERT INTO public.tracks VALUES (2279, 'Who Needs You', 186, 1, 1, 'Deacon', 186958, 6292969, 0.99);
INSERT INTO public.tracks VALUES (2280, 'It''s Late', 186, 1, 1, 'May', 386194, 12519388, 0.99);
INSERT INTO public.tracks VALUES (2281, 'My Melancholy Blues', 186, 1, 1, 'Mercury', 206471, 6691838, 0.99);
INSERT INTO public.tracks VALUES (2926, 'Zoo Station', 232, 1, 1, 'U2', 276349, 9056902, 0.99);
INSERT INTO public.tracks VALUES (2927, 'Even Better Than The Real Thing', 232, 1, 1, 'U2', 221361, 7279392, 0.99);
INSERT INTO public.tracks VALUES (2928, 'One', 232, 1, 1, 'U2', 276192, 9158892, 0.99);
INSERT INTO public.tracks VALUES (2929, 'Until The End Of The World', 232, 1, 1, 'U2', 278700, 9132485, 0.99);
INSERT INTO public.tracks VALUES (2930, 'Who''s Gonna Ride Your Wild Horses', 232, 1, 1, 'U2', 316551, 10304369, 0.99);
INSERT INTO public.tracks VALUES (2931, 'So Cruel', 232, 1, 1, 'U2', 349492, 11527614, 0.99);
INSERT INTO public.tracks VALUES (2932, 'The Fly', 232, 1, 1, 'U2', 268982, 8825399, 0.99);
INSERT INTO public.tracks VALUES (2933, 'Mysterious Ways', 232, 1, 1, 'U2', 243826, 8062057, 0.99);
INSERT INTO public.tracks VALUES (2934, 'Tryin'' To Throw Your Arms Around The World', 232, 1, 1, 'U2', 232463, 7612124, 0.99);
INSERT INTO public.tracks VALUES (2935, 'Ultraviolet (Light My Way)', 232, 1, 1, 'U2', 330788, 10754631, 0.99);
INSERT INTO public.tracks VALUES (2936, 'Acrobat', 232, 1, 1, 'U2', 270288, 8824723, 0.99);
INSERT INTO public.tracks VALUES (2937, 'Love Is Blindness', 232, 1, 1, 'U2', 263497, 8531766, 0.99);
INSERT INTO public.tracks VALUES (2938, 'Beautiful Day', 233, 1, 1, 'Adam Clayton, Bono, Larry Mullen, The Edge', 248163, 8056723, 0.99);
INSERT INTO public.tracks VALUES (2939, 'Stuck In A Moment You Can''t Get Out Of', 233, 1, 1, 'Adam Clayton, Bono, Larry Mullen, The Edge', 272378, 8997366, 0.99);
INSERT INTO public.tracks VALUES (2940, 'Elevation', 233, 1, 1, 'Adam Clayton, Bono, Larry Mullen, The Edge', 227552, 7479414, 0.99);
INSERT INTO public.tracks VALUES (2941, 'Walk On', 233, 1, 1, 'Adam Clayton, Bono, Larry Mullen, The Edge', 296280, 9800861, 0.99);
INSERT INTO public.tracks VALUES (2942, 'Kite', 233, 1, 1, 'Adam Clayton, Bono, Larry Mullen, The Edge', 266893, 8765761, 0.99);
INSERT INTO public.tracks VALUES (2943, 'In A Little While', 233, 1, 1, 'Adam Clayton, Bono, Larry Mullen, The Edge', 219271, 7189647, 0.99);
INSERT INTO public.tracks VALUES (2944, 'Wild Honey', 233, 1, 1, 'Adam Clayton, Bono, Larry Mullen, The Edge', 226768, 7466069, 0.99);
INSERT INTO public.tracks VALUES (2945, 'Peace On Earth', 233, 1, 1, 'Adam Clayton, Bono, Larry Mullen, The Edge', 288496, 9476171, 0.99);
INSERT INTO public.tracks VALUES (2946, 'When I Look At The World', 233, 1, 1, 'Adam Clayton, Bono, Larry Mullen, The Edge', 257776, 8500491, 0.99);
INSERT INTO public.tracks VALUES (2947, 'New York', 233, 1, 1, 'Adam Clayton, Bono, Larry Mullen, The Edge', 330370, 10862323, 0.99);
INSERT INTO public.tracks VALUES (2948, 'Grace', 233, 1, 1, 'Adam Clayton, Bono, Larry Mullen, The Edge', 330657, 10877148, 0.99);
INSERT INTO public.tracks VALUES (2964, 'Vertigo', 235, 1, 1, 'Adam Clayton, Bono, Larry Mullen & The Edge', 194612, 6329502, 0.99);
INSERT INTO public.tracks VALUES (2965, 'Miracle Drug', 235, 1, 1, 'Adam Clayton, Bono, Larry Mullen & The Edge', 239124, 7760916, 0.99);
INSERT INTO public.tracks VALUES (2966, 'Sometimes You Can''t Make It On Your Own', 235, 1, 1, 'Adam Clayton, Bono, Larry Mullen & The Edge', 308976, 10112863, 0.99);
INSERT INTO public.tracks VALUES (2967, 'Love And Peace Or Else', 235, 1, 1, 'Adam Clayton, Bono, Larry Mullen & The Edge', 290690, 9476723, 0.99);
INSERT INTO public.tracks VALUES (2968, 'City Of Blinding Lights', 235, 1, 1, 'Adam Clayton, Bono, Larry Mullen & The Edge', 347951, 11432026, 0.99);
INSERT INTO public.tracks VALUES (2969, 'All Because Of You', 235, 1, 1, 'Adam Clayton, Bono, Larry Mullen & The Edge', 219141, 7198014, 0.99);
INSERT INTO public.tracks VALUES (2970, 'A Man And A Woman', 235, 1, 1, 'Adam Clayton, Bono, Larry Mullen & The Edge', 270132, 8938285, 0.99);
INSERT INTO public.tracks VALUES (2971, 'Crumbs From Your Table', 235, 1, 1, 'Adam Clayton, Bono, Larry Mullen & The Edge', 303568, 9892349, 0.99);
INSERT INTO public.tracks VALUES (2972, 'One Step Closer', 235, 1, 1, 'Adam Clayton, Bono, Larry Mullen & The Edge', 231680, 7512912, 0.99);
INSERT INTO public.tracks VALUES (2973, 'Original Of The Species', 235, 1, 1, 'Adam Clayton, Bono, Larry Mullen & The Edge', 281443, 9230041, 0.99);
INSERT INTO public.tracks VALUES (2974, 'Yahweh', 235, 1, 1, 'Adam Clayton, Bono, Larry Mullen & The Edge', 262034, 8636998, 0.99);
INSERT INTO public.tracks VALUES (2975, 'Discotheque', 236, 1, 1, 'Bono, The Edge, Adam Clayton, and Larry Mullen', 319582, 10442206, 0.99);
INSERT INTO public.tracks VALUES (2976, 'Do You Feel Loved', 236, 1, 1, 'Bono, The Edge, Adam Clayton, and Larry Mullen', 307539, 10122694, 0.99);
INSERT INTO public.tracks VALUES (2977, 'Mofo', 236, 1, 1, 'Bono, The Edge, Adam Clayton, and Larry Mullen', 349178, 11583042, 0.99);
INSERT INTO public.tracks VALUES (2978, 'If God Will Send His Angels', 236, 1, 1, 'Bono, The Edge, Adam Clayton, and Larry Mullen', 322533, 10563329, 0.99);
INSERT INTO public.tracks VALUES (2979, 'Staring At The Sun', 236, 1, 1, 'Bono, The Edge, Adam Clayton, and Larry Mullen', 276924, 9082838, 0.99);
INSERT INTO public.tracks VALUES (2980, 'Last Night On Earth', 236, 1, 1, 'Bono, The Edge, Adam Clayton, and Larry Mullen', 285753, 9401017, 0.99);
INSERT INTO public.tracks VALUES (2981, 'Gone', 236, 1, 1, 'Bono, The Edge, Adam Clayton, and Larry Mullen', 266866, 8746301, 0.99);
INSERT INTO public.tracks VALUES (2982, 'Miami', 236, 1, 1, 'Bono, The Edge, Adam Clayton, and Larry Mullen', 293041, 9741603, 0.99);
INSERT INTO public.tracks VALUES (2983, 'The Playboy Mansion', 236, 1, 1, 'Bono, The Edge, Adam Clayton, and Larry Mullen', 280555, 9274144, 0.99);
INSERT INTO public.tracks VALUES (2984, 'If You Wear That Velvet Dress', 236, 1, 1, 'Bono, The Edge, Adam Clayton, and Larry Mullen', 315167, 10227333, 0.99);
INSERT INTO public.tracks VALUES (2985, 'Please', 236, 1, 1, 'Bono, The Edge, Adam Clayton, and Larry Mullen', 302602, 9909484, 0.99);
INSERT INTO public.tracks VALUES (2986, 'Wake Up Dead Man', 236, 1, 1, 'Bono, The Edge, Adam Clayton, and Larry Mullen', 292832, 9515903, 0.99);
INSERT INTO public.tracks VALUES (2987, 'Helter Skelter', 237, 1, 1, 'Lennon, John/McCartney, Paul', 187350, 6097636, 0.99);
INSERT INTO public.tracks VALUES (2988, 'Van Diemen''s Land', 237, 1, 1, 'Bono/Clayton, Adam/Mullen Jr., Larry/The Edge', 186044, 5990280, 0.99);
INSERT INTO public.tracks VALUES (2989, 'Desire', 237, 1, 1, 'Bono/Clayton, Adam/Mullen Jr., Larry/The Edge', 179226, 5874535, 0.99);
INSERT INTO public.tracks VALUES (2990, 'Hawkmoon 269', 237, 1, 1, 'Bono/Clayton, Adam/Mullen Jr., Larry/The Edge', 382458, 12494987, 0.99);
INSERT INTO public.tracks VALUES (2991, 'All Along The Watchtower', 237, 1, 1, 'Dylan, Bob', 264568, 8623572, 0.99);
INSERT INTO public.tracks VALUES (2992, 'I Still Haven''t Found What I''m Looking for', 237, 1, 1, 'Bono/Clayton, Adam/Mullen Jr., Larry/The Edge', 353567, 11542247, 0.99);
INSERT INTO public.tracks VALUES (2993, 'Freedom For My People', 237, 1, 1, 'Mabins, Macie/Magee, Sterling/Robinson, Bobby', 38164, 1249764, 0.99);
INSERT INTO public.tracks VALUES (2994, 'Silver And Gold', 237, 1, 1, 'Bono/Clayton, Adam/Mullen Jr., Larry/The Edge', 349831, 11450194, 0.99);
INSERT INTO public.tracks VALUES (2995, 'Pride (In The Name Of Love)', 237, 1, 1, 'Bono/Clayton, Adam/Mullen Jr., Larry/The Edge', 267807, 8806361, 0.99);
INSERT INTO public.tracks VALUES (2996, 'Angel Of Harlem', 237, 1, 1, 'Bono/Clayton, Adam/Mullen Jr., Larry/The Edge', 229276, 7498022, 0.99);
INSERT INTO public.tracks VALUES (2997, 'Love Rescue Me', 237, 1, 1, 'Bono/Clayton, Adam/Dylan, Bob/Mullen Jr., Larry/The Edge', 384522, 12508716, 0.99);
INSERT INTO public.tracks VALUES (2998, 'When Love Comes To Town', 237, 1, 1, 'Bono/Clayton, Adam/Mullen Jr., Larry/The Edge', 255869, 8340954, 0.99);
INSERT INTO public.tracks VALUES (2999, 'Heartland', 237, 1, 1, 'Bono/Clayton, Adam/Mullen Jr., Larry/The Edge', 303360, 9867748, 0.99);
INSERT INTO public.tracks VALUES (3000, 'God Part II', 237, 1, 1, 'Bono/Clayton, Adam/Mullen Jr., Larry/The Edge', 195604, 6497570, 0.99);
INSERT INTO public.tracks VALUES (3001, 'The Star Spangled Banner', 237, 1, 1, 'Hendrix, Jimi', 43232, 1385810, 0.99);
INSERT INTO public.tracks VALUES (3002, 'Bullet The Blue Sky', 237, 1, 1, 'Bono/Clayton, Adam/Mullen Jr., Larry/The Edge', 337005, 10993607, 0.99);
INSERT INTO public.tracks VALUES (3003, 'All I Want Is You', 237, 1, 1, 'Bono/Clayton, Adam/Mullen Jr., Larry/The Edge', 390243, 12729820, 0.99);
INSERT INTO public.tracks VALUES (3052, 'Where Have All The Good Times Gone?', 242, 1, 1, 'Ray Davies', 186723, 6063937, 0.99);
INSERT INTO public.tracks VALUES (3053, 'Hang ''Em High', 242, 1, 1, 'Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony', 210259, 6872314, 0.99);
INSERT INTO public.tracks VALUES (3054, 'Cathedral', 242, 1, 1, 'Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony', 82860, 2650998, 0.99);
INSERT INTO public.tracks VALUES (3055, 'Secrets', 242, 1, 1, 'Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony', 206968, 6803255, 0.99);
INSERT INTO public.tracks VALUES (3056, 'Intruder', 242, 1, 1, 'Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony', 100153, 3282142, 0.99);
INSERT INTO public.tracks VALUES (3057, '(Oh) Pretty Woman', 242, 1, 1, 'Bill Dees/Roy Orbison', 174680, 5665828, 0.99);
INSERT INTO public.tracks VALUES (3058, 'Dancing In The Street', 242, 1, 1, 'Ivy Jo Hunter/Marvin Gaye/William Stevenson', 225985, 7461499, 0.99);
INSERT INTO public.tracks VALUES (3059, 'Little Guitars (Intro)', 242, 1, 1, 'Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony', 42240, 1439530, 0.99);
INSERT INTO public.tracks VALUES (3060, 'Little Guitars', 242, 1, 1, 'Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony', 228806, 7453043, 0.99);
INSERT INTO public.tracks VALUES (3061, 'Big Bad Bill (Is Sweet William Now)', 242, 1, 1, 'Jack Yellen/Milton Ager', 165146, 5489609, 0.99);
INSERT INTO public.tracks VALUES (3062, 'The Full Bug', 242, 1, 1, 'Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony', 201116, 6551013, 0.99);
INSERT INTO public.tracks VALUES (3063, 'Happy Trails', 242, 1, 1, 'Dale Evans', 65488, 2111141, 0.99);
INSERT INTO public.tracks VALUES (3064, 'Eruption', 243, 1, 1, 'Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony', 102164, 3272891, 0.99);
INSERT INTO public.tracks VALUES (3065, 'Ain''t Talkin'' ''bout Love', 243, 1, 1, 'Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony', 228336, 7569506, 0.99);
INSERT INTO public.tracks VALUES (3066, 'Runnin'' With The Devil', 243, 1, 1, 'Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony', 215902, 7061901, 0.99);
INSERT INTO public.tracks VALUES (3067, 'Dance the Night Away', 243, 1, 1, 'Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony', 185965, 6087433, 0.99);
INSERT INTO public.tracks VALUES (3068, 'And the Cradle Will Rock...', 243, 1, 1, 'Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony', 213968, 7011402, 0.99);
INSERT INTO public.tracks VALUES (3069, 'Unchained', 243, 1, 1, 'Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony', 208953, 6777078, 0.99);
INSERT INTO public.tracks VALUES (3070, 'Jump', 243, 1, 1, 'Edward Van Halen, Alex Van Halen, David Lee Roth', 241711, 7911090, 0.99);
INSERT INTO public.tracks VALUES (3071, 'Panama', 243, 1, 1, 'Edward Van Halen, Alex Van Halen, David Lee Roth', 211853, 6921784, 0.99);
INSERT INTO public.tracks VALUES (3072, 'Why Can''t This Be Love', 243, 1, 1, 'Van Halen', 227761, 7457655, 0.99);
INSERT INTO public.tracks VALUES (3073, 'Dreams', 243, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar', 291813, 9504119, 0.99);
INSERT INTO public.tracks VALUES (3074, 'When It''s Love', 243, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar', 338991, 11049966, 0.99);
INSERT INTO public.tracks VALUES (3075, 'Poundcake', 243, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar', 321854, 10366978, 0.99);
INSERT INTO public.tracks VALUES (3076, 'Right Now', 243, 1, 1, 'Van Halen', 321828, 10503352, 0.99);
INSERT INTO public.tracks VALUES (3077, 'Can''t Stop Loving You', 243, 1, 1, 'Van Halen', 248502, 8107896, 0.99);
INSERT INTO public.tracks VALUES (3078, 'Humans Being', 243, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar', 308950, 10014683, 0.99);
INSERT INTO public.tracks VALUES (3079, 'Can''t Get This Stuff No More', 243, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, David Lee Roth', 315376, 10355753, 0.99);
INSERT INTO public.tracks VALUES (3080, 'Me Wise Magic', 243, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, David Lee Roth', 366053, 12013467, 0.99);
INSERT INTO public.tracks VALUES (3081, 'Runnin'' With The Devil', 244, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth', 216032, 7056863, 0.99);
INSERT INTO public.tracks VALUES (3082, 'Eruption', 244, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth', 102556, 3286026, 0.99);
INSERT INTO public.tracks VALUES (3083, 'You Really Got Me', 244, 1, 1, 'Ray Davies', 158589, 5194092, 0.99);
INSERT INTO public.tracks VALUES (3084, 'Ain''t Talkin'' ''Bout Love', 244, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth', 230060, 7617284, 0.99);
INSERT INTO public.tracks VALUES (3085, 'I''m The One', 244, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth', 226507, 7373922, 0.99);
INSERT INTO public.tracks VALUES (3086, 'Jamie''s Cryin''', 244, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth', 210546, 6946086, 0.99);
INSERT INTO public.tracks VALUES (3087, 'Atomic Punk', 244, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth', 182073, 5908861, 0.99);
INSERT INTO public.tracks VALUES (3088, 'Feel Your Love Tonight', 244, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth', 222850, 7293608, 0.99);
INSERT INTO public.tracks VALUES (3089, 'Little Dreamer', 244, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth', 203258, 6648122, 0.99);
INSERT INTO public.tracks VALUES (3090, 'Ice Cream Man', 244, 1, 1, 'John Brim', 200306, 6573145, 0.99);
INSERT INTO public.tracks VALUES (3091, 'On Fire', 244, 1, 1, 'Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth', 180636, 5879235, 0.99);
INSERT INTO public.tracks VALUES (3092, 'Neworld', 245, 1, 1, 'Van Halen', 105639, 3495897, 0.99);
INSERT INTO public.tracks VALUES (3093, 'Without You', 245, 1, 1, 'Van Halen', 390295, 12619558, 0.99);
INSERT INTO public.tracks VALUES (3094, 'One I Want', 245, 1, 1, 'Van Halen', 330788, 10743970, 0.99);
INSERT INTO public.tracks VALUES (3095, 'From Afar', 245, 1, 1, 'Van Halen', 324414, 10524554, 0.99);
INSERT INTO public.tracks VALUES (3096, 'Dirty Water Dog', 245, 1, 1, 'Van Halen', 327392, 10709202, 0.99);
INSERT INTO public.tracks VALUES (3097, 'Once', 245, 1, 1, 'Van Halen', 462837, 15378082, 0.99);
INSERT INTO public.tracks VALUES (3098, 'Fire in the Hole', 245, 1, 1, 'Van Halen', 331728, 10846768, 0.99);
INSERT INTO public.tracks VALUES (3099, 'Josephina', 245, 1, 1, 'Van Halen', 342491, 11161521, 0.99);
INSERT INTO public.tracks VALUES (3100, 'Year to the Day', 245, 1, 1, 'Van Halen', 514612, 16621333, 0.99);
INSERT INTO public.tracks VALUES (3101, 'Primary', 245, 1, 1, 'Van Halen', 86987, 2812555, 0.99);
INSERT INTO public.tracks VALUES (3102, 'Ballot or the Bullet', 245, 1, 1, 'Van Halen', 342282, 11212955, 0.99);
INSERT INTO public.tracks VALUES (3103, 'How Many Say I', 245, 1, 1, 'Van Halen', 363937, 11716855, 0.99);
INSERT INTO public.tracks VALUES (3411, 'Solomon HWV 67: The Arrival of the Queen of Sheba', 280, 2, 24, 'George Frideric Handel', 197135, 3247914, 0.99);
INSERT INTO public.tracks VALUES (3413, 'Concerto for Clarinet in A Major, K. 622: II. Adagio', 282, 2, 24, 'Wolfgang Amadeus Mozart', 394482, 6474980, 0.99);
INSERT INTO public.tracks VALUES (3414, 'Symphony No. 104 in D Major "London": IV. Finale: Spiritoso', 283, 4, 24, 'Franz Joseph Haydn', 306687, 10085867, 0.99);
INSERT INTO public.tracks VALUES (3419, 'Requiem, Op.48: 4. Pie Jesu', 288, 2, 24, 'Gabriel Fauré', 258924, 4314850, 0.99);
INSERT INTO public.tracks VALUES (3438, 'Fantasia On Greensleeves', 280, 2, 24, 'Ralph Vaughan Williams', 268066, 4513190, 0.99);
INSERT INTO public.tracks VALUES (3487, '3 Gymnopédies: No.1 - Lent Et Grave, No.3 - Lent Et Douloureux', 332, 2, 24, 'Erik Satie', 385506, 6458501, 0.99);
INSERT INTO public.tracks VALUES (3488, 'Music for the Funeral of Queen Mary: VI. "Thou Knowest, Lord, the Secrets of Our Hearts"', 333, 2, 24, 'Henry Purcell', 142081, 2365930, 0.99);


--
-- Name: playlist_tracks PK_PlaylistTrack; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlist_tracks
    ADD CONSTRAINT "PK_PlaylistTrack" PRIMARY KEY (playlist_id, track_id);


--
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (album_id);


--
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (artist_id);


--
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genre_id);


--
-- Name: media_types media_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media_types
    ADD CONSTRAINT media_types_pkey PRIMARY KEY (media_type_id);


--
-- Name: playlists playlists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlists
    ADD CONSTRAINT playlists_pkey PRIMARY KEY (playlist_id);


--
-- Name: tracks tracks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tracks
    ADD CONSTRAINT tracks_pkey PRIMARY KEY (track_id);


--
-- Name: albums albums_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artists(artist_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: playlist_tracks playlist_tracks_playlist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlist_tracks
    ADD CONSTRAINT playlist_tracks_playlist_id_fkey FOREIGN KEY (playlist_id) REFERENCES public.playlists(playlist_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: playlist_tracks playlist_tracks_track_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlist_tracks
    ADD CONSTRAINT playlist_tracks_track_id_fkey FOREIGN KEY (track_id) REFERENCES public.tracks(track_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tracks tracks_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tracks
    ADD CONSTRAINT tracks_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.albums(album_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tracks tracks_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tracks
    ADD CONSTRAINT tracks_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genres(genre_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tracks tracks_media_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tracks
    ADD CONSTRAINT tracks_media_type_id_fkey FOREIGN KEY (media_type_id) REFERENCES public.media_types(media_type_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

