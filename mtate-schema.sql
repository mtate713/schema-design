toc.dat                                                                                             0000600 0004000 0002000 00000016352 13756045347 0014464 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       :                
    x            postgres    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    13442    postgres    DATABASE     l   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false         �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3017                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false         �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    4         �            1259    24651    interest    TABLE     `   CREATE TABLE public.interest (
    id integer NOT NULL,
    title character varying NOT NULL
);
    DROP TABLE public.interest;
       public         heap    postgres    false    4         �            1259    24649    Interest_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Interest_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Interest_ID_seq";
       public          postgres    false    203    4         �           0    0    Interest_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Interest_ID_seq" OWNED BY public.interest.id;
          public          postgres    false    202         �            1259    24662    location    TABLE     �   CREATE TABLE public.location (
    id integer NOT NULL,
    city character varying NOT NULL,
    state character varying NOT NULL,
    country character varying NOT NULL
);
    DROP TABLE public.location;
       public         heap    postgres    false    4         �            1259    24660    Location_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Location_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Location_ID_seq";
       public          postgres    false    4    205         �           0    0    Location_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Location_ID_seq" OWNED BY public.location.id;
          public          postgres    false    204         �            1259    24646    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    firstname character varying NOT NULL,
    lastname character varying NOT NULL,
    age integer NOT NULL,
    location integer NOT NULL,
    interest integer[]
);
    DROP TABLE public.person;
       public         heap    postgres    false    4         �            1259    24671    Person_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Person_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Person_ID_seq";
       public          postgres    false    4    201         �           0    0    Person_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Person_ID_seq" OWNED BY public.person.id;
          public          postgres    false    206         3           2604    24654    interest id    DEFAULT     l   ALTER TABLE ONLY public.interest ALTER COLUMN id SET DEFAULT nextval('public."Interest_ID_seq"'::regclass);
 :   ALTER TABLE public.interest ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203         4           2604    24665    location id    DEFAULT     l   ALTER TABLE ONLY public.location ALTER COLUMN id SET DEFAULT nextval('public."Location_ID_seq"'::regclass);
 :   ALTER TABLE public.location ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205         2           2604    24673 	   person id    DEFAULT     h   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public."Person_ID_seq"'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    201         �          0    24651    interest 
   TABLE DATA           -   COPY public.interest (id, title) FROM stdin;
    public          postgres    false    203       3008.dat �          0    24662    location 
   TABLE DATA           <   COPY public.location (id, city, state, country) FROM stdin;
    public          postgres    false    205       3010.dat �          0    24646    person 
   TABLE DATA           R   COPY public.person (id, firstname, lastname, age, location, interest) FROM stdin;
    public          postgres    false    201       3006.dat �           0    0    Interest_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Interest_ID_seq"', 7, true);
          public          postgres    false    202         �           0    0    Location_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Location_ID_seq"', 5, true);
          public          postgres    false    204         �           0    0    Person_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Person_ID_seq"', 103, true);
          public          postgres    false    206         8           2606    24659    interest Interest_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.interest
    ADD CONSTRAINT "Interest_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.interest DROP CONSTRAINT "Interest_pkey";
       public            postgres    false    203         :           2606    24670    location Location_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.location
    ADD CONSTRAINT "Location_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.location DROP CONSTRAINT "Location_pkey";
       public            postgres    false    205         6           2606    24681    person Person_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.person
    ADD CONSTRAINT "Person_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.person DROP CONSTRAINT "Person_pkey";
       public            postgres    false    201         ;           2606    24687    person person_location_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_location_fkey FOREIGN KEY (location) REFERENCES public.location(id) NOT VALID;
 E   ALTER TABLE ONLY public.person DROP CONSTRAINT person_location_fkey;
       public          postgres    false    205    2874    201                                                                                                                                                                                                                                                                                              3008.dat                                                                                            0000600 0004000 0002000 00000000107 13756045347 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Video Games
2	Computers
3	Movies
4	Books
5	Sports
6	Music
7	Art
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                         3010.dat                                                                                            0000600 0004000 0002000 00000000201 13756045347 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Memphis	Tennessee	USA
2	New York City	New York	USA
3	Atlanta	Georgia	USA
4	Denver	Colorado	USA
5	Little Rock	Arkansas	USA
\.


                                                                                                                                                                                                                                                                                                                                                                                               3006.dat                                                                                            0000600 0004000 0002000 00000000325 13756045347 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        97	Toyah	Cabrera	28	4	{3,2,5}
98	Orlaith	Meyer	93	5	{3,7,5}
99	Elisa	Fowler	43	3	{2,5,1}
100	Yasser	Rahman	47	4	{5,1,6}
101	Christos	Long	30	2	{7,4,1}
102	Kealan	Craig	23	1	{4,1,6}
103	Esa	Carey	27	2	{2,6,5}
\.


                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000014274 13756045347 0015412 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: interest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.interest (
    id integer NOT NULL,
    title character varying NOT NULL
);


ALTER TABLE public.interest OWNER TO postgres;

--
-- Name: Interest_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Interest_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Interest_ID_seq" OWNER TO postgres;

--
-- Name: Interest_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Interest_ID_seq" OWNED BY public.interest.id;


--
-- Name: location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.location (
    id integer NOT NULL,
    city character varying NOT NULL,
    state character varying NOT NULL,
    country character varying NOT NULL
);


ALTER TABLE public.location OWNER TO postgres;

--
-- Name: Location_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Location_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Location_ID_seq" OWNER TO postgres;

--
-- Name: Location_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Location_ID_seq" OWNED BY public.location.id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    id integer NOT NULL,
    firstname character varying NOT NULL,
    lastname character varying NOT NULL,
    age integer NOT NULL,
    location integer NOT NULL,
    interest integer[]
);


ALTER TABLE public.person OWNER TO postgres;

--
-- Name: Person_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Person_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Person_ID_seq" OWNER TO postgres;

--
-- Name: Person_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Person_ID_seq" OWNED BY public.person.id;


--
-- Name: interest id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interest ALTER COLUMN id SET DEFAULT nextval('public."Interest_ID_seq"'::regclass);


--
-- Name: location id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location ALTER COLUMN id SET DEFAULT nextval('public."Location_ID_seq"'::regclass);


--
-- Name: person id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public."Person_ID_seq"'::regclass);


--
-- Data for Name: interest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.interest (id, title) FROM stdin;
\.
COPY public.interest (id, title) FROM '$$PATH$$/3008.dat';

--
-- Data for Name: location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.location (id, city, state, country) FROM stdin;
\.
COPY public.location (id, city, state, country) FROM '$$PATH$$/3010.dat';

--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person (id, firstname, lastname, age, location, interest) FROM stdin;
\.
COPY public.person (id, firstname, lastname, age, location, interest) FROM '$$PATH$$/3006.dat';

--
-- Name: Interest_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Interest_ID_seq"', 7, true);


--
-- Name: Location_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Location_ID_seq"', 5, true);


--
-- Name: Person_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Person_ID_seq"', 103, true);


--
-- Name: interest Interest_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interest
    ADD CONSTRAINT "Interest_pkey" PRIMARY KEY (id);


--
-- Name: location Location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT "Location_pkey" PRIMARY KEY (id);


--
-- Name: person Person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT "Person_pkey" PRIMARY KEY (id);


--
-- Name: person person_location_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_location_fkey FOREIGN KEY (location) REFERENCES public.location(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    