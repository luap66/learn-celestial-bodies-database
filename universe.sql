--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: myuser
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO myuser;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size integer NOT NULL,
    distance integer,
    numplanets integer
);


ALTER TABLE public.galaxy OWNER TO myuser;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO myuser;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    water boolean,
    planet_id integer,
    size integer NOT NULL
);


ALTER TABLE public.moon OWNER TO myuser;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO myuser;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    water boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO myuser;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO myuser;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: spaceship; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.spaceship (
    spaceship_id integer NOT NULL,
    name character varying(255) NOT NULL,
    manufacturer character varying(255) NOT NULL
);


ALTER TABLE public.spaceship OWNER TO myuser;

--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.spaceship_spaceship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spaceship_spaceship_id_seq OWNER TO myuser;

--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.spaceship_spaceship_id_seq OWNED BY public.spaceship.spaceship_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer NOT NULL,
    size integer,
    temperature numeric
);


ALTER TABLE public.star OWNER TO myuser;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO myuser;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: spaceship spaceship_id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.spaceship ALTER COLUMN spaceship_id SET DEFAULT nextval('public.spaceship_spaceship_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: myuser
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 0, 100);
INSERT INTO public.galaxy VALUES (2, 'asd', 234, 23, 23424);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 220000, 2537000, 14);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 60000, 3000000, 10);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 90000, 23000000, 12);
INSERT INTO public.galaxy VALUES (7, 'Sombrero Galaxy', 50000, 28000000, 4);
INSERT INTO public.galaxy VALUES (8, 'Messier 87', 120000, 50000000, 5);
INSERT INTO public.galaxy VALUES (9, 'Pinwheel Galaxy', 85000, 21000000, 7);
INSERT INTO public.galaxy VALUES (10, 'Black Eye Galaxy', 45000, 17000000, 6);
INSERT INTO public.galaxy VALUES (11, 'Cartwheel Galaxy', 70000, 50000000, 3);
INSERT INTO public.galaxy VALUES (12, 'NGC 1300', 80000, 22000000, 9);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: myuser
--

INSERT INTO public.moon VALUES (1, 'dasd', true, 1, 123);
INSERT INTO public.moon VALUES (2, 'ghj', true, 1, 123);
INSERT INTO public.moon VALUES (3, 'gfjhgfj', true, 1, 123);
INSERT INTO public.moon VALUES (4, 'atzkuztskzk', true, 1, 123);
INSERT INTO public.moon VALUES (5, 'atzkuzfgjhgfjfk,stkzk', true, 1, 123);
INSERT INTO public.moon VALUES (6, 'fgj', true, 1, 123);
INSERT INTO public.moon VALUES (7, 'atzkfghjghfjuztkzk', true, 1, 123);
INSERT INTO public.moon VALUES (8, 'atzkfgjlhjluztkzk', true, 1, 123);
INSERT INTO public.moon VALUES (9, 'ahfjkhjftzkuztkzk', true, 1, 123);
INSERT INTO public.moon VALUES (10, 'atzkhjklfuztkzk', true, 1, 123);
INSERT INTO public.moon VALUES (11, 'atzfghjfgfkuztkzk', true, 1, 123);
INSERT INTO public.moon VALUES (12, 'atzkuztkjghfjzk', true, 1, 123);
INSERT INTO public.moon VALUES (13, 'atkjhöözkuztkzk', true, 1, 123);
INSERT INTO public.moon VALUES (14, 'atzkufjhfgjztkzk', true, 1, 123);
INSERT INTO public.moon VALUES (15, 'atzkuhgjlgjklztkzk', true, 1, 123);
INSERT INTO public.moon VALUES (16, 'atzkuzgljöuiötkzk', true, 1, 123);
INSERT INTO public.moon VALUES (17, 'atzkuzgljgtkzk', true, 1, 123);
INSERT INTO public.moon VALUES (18, 'gjlk', true, 1, 123);
INSERT INTO public.moon VALUES (19, 'ghlöiu', true, 1, 123);
INSERT INTO public.moon VALUES (20, 'glhj', true, 1, 123);
INSERT INTO public.moon VALUES (21, 'gjlggug', true, 1, 123);
INSERT INTO public.moon VALUES (22, 'glugzlgb', true, 1, 123);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: myuser
--

INSERT INTO public.planet VALUES (1, 'jhkgj', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (3, 'asd', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (4, 'asdsad', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (5, 'asdasfa', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (6, 'gdfgdfg', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (7, 'jhkf', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (8, 'zrutu', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (9, 'asdfasdfa', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (10, 'asngfs', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (11, 'snfg', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (12, 'nsfgn', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (13, 'zul', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (14, 'sfgnfsn', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (15, 'atzkuztkzk', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (16, 'aulillsngfs', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (17, 'snuilifg', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (18, 'nslifgn', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (19, 'zulil', 'Hallo Beschreibung', true, 1);
INSERT INTO public.planet VALUES (20, 'sflignfsn', 'Hallo Beschreibung', true, 1);


--
-- Data for Name: spaceship; Type: TABLE DATA; Schema: public; Owner: myuser
--

INSERT INTO public.spaceship VALUES (1, 'hello', 'NASA');
INSERT INTO public.spaceship VALUES (2, 'asda', 'NASA');
INSERT INTO public.spaceship VALUES (3, 'adsa<ds', 'NASA');
INSERT INTO public.spaceship VALUES (4, 'asdasd', 'NASA');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: myuser
--

INSERT INTO public.star VALUES (1, 'da', 1, 234234234, 14.0);
INSERT INTO public.star VALUES (10, 'dasddas', 2, 234234234, 14.0);
INSERT INTO public.star VALUES (13, 'asdasdas', 4, 234234234, 14.0);
INSERT INTO public.star VALUES (14, 'zwerzww', 5, 234234234, 14.0);
INSERT INTO public.star VALUES (15, 'hjrt', 5, 234234234, 14.0);
INSERT INTO public.star VALUES (16, 'jhkgj', 6, 234234234, 14.0);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.spaceship_spaceship_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.star_star_id_seq', 16, true);


--
-- Name: galaxy constraint_name; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constraint_name UNIQUE (name);


--
-- Name: star constraint_name2; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constraint_name2 UNIQUE (name);


--
-- Name: planet constraint_name3; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT constraint_name3 UNIQUE (name);


--
-- Name: moon constraint_name4; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT constraint_name4 UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: spaceship spaceship_name_key; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_name_key UNIQUE (name);


--
-- Name: spaceship spaceship_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_pkey PRIMARY KEY (spaceship_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_laststar_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_laststar_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

