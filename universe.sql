--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

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
-- Name: dummy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy (
    dummy_id integer NOT NULL,
    name character varying(20),
    col1 integer NOT NULL,
    col2 integer NOT NULL,
    col3 numeric(4,1),
    col4 text,
    col5 boolean,
    col6 boolean
);


ALTER TABLE public.dummy OWNER TO freecodecamp;

--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy_dummy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy_dummy_id_seq OWNER TO freecodecamp;

--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy_dummy_id_seq OWNED BY public.dummy.dummy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions integer,
    distance_from_earth integer,
    number_of_clusters numeric(4,1),
    description text NOT NULL,
    is_spherical boolean,
    is_sparse boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions integer,
    distance_from_earth integer,
    weight_in_million_kgs numeric(4,1),
    description text NOT NULL,
    is_spherical boolean,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions integer,
    distance_from_earth integer,
    weight_in_million_kgs numeric(4,1),
    description text NOT NULL,
    is_spherical boolean,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions integer,
    distance_from_earth integer,
    weight_in_million_kgs numeric(4,1),
    description text NOT NULL,
    is_spherical boolean,
    is_yellow boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: dummy dummy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy ALTER COLUMN dummy_id SET DEFAULT nextval('public.dummy_dummy_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: dummy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy VALUES (1, 'Dummy', 1, 2, 4.0, 'Dummy', true, true);
INSERT INTO public.dummy VALUES (2, 'Dummy', 1, 2, 4.0, 'Dummy', true, true);
INSERT INTO public.dummy VALUES (3, 'Dummy', 1, 2, 4.0, 'Dummy', true, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 10, 10, 10.0, 'Home Galaxy', true, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 20, 20, 20.0, 'Neighbour Galaxy', true, false);
INSERT INTO public.galaxy VALUES (3, 'Some Unknown Galaxy', 30, 30, 30.0, 'Some unknown galaxy', true, true);
INSERT INTO public.galaxy VALUES (4, 'a', 1, 1, 1.0, 'a', true, true);
INSERT INTO public.galaxy VALUES (5, 'b', 1, 1, 1.0, 'a', true, true);
INSERT INTO public.galaxy VALUES (7, 'c', 1, 1, 1.0, 'a', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon!', 10, 0, 10.0, 'Our very own Moon!', true, true, 1);
INSERT INTO public.moon VALUES (2, 'IO', 10, 101, 10.0, 'Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.moon VALUES (3, 'Europa', 10, 20, 30.0, 'Another Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.moon VALUES (4, 'The Moon', 10, 0, 10.0, 'Our very own Moon!', true, true, 1);
INSERT INTO public.moon VALUES (5, 'IOO', 10, 101, 10.0, 'Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.moon VALUES (6, 'Europ', 10, 20, 30.0, 'Another Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.moon VALUES (8, 'TheMoon', 10, 0, 10.0, 'Our very own Moon!', true, true, 1);
INSERT INTO public.moon VALUES (9, 'IOOO', 10, 101, 10.0, 'Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.moon VALUES (10, 'Euro', 10, 20, 30.0, 'Another Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.moon VALUES (11, 'Moon', 10, 0, 10.0, 'Our very own Moon!', true, true, 1);
INSERT INTO public.moon VALUES (12, 'IOOOO', 10, 101, 10.0, 'Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.moon VALUES (13, 'Eur', 10, 20, 30.0, 'Another Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.moon VALUES (14, 'Moon ', 10, 0, 10.0, 'Our very own Moon!', true, true, 1);
INSERT INTO public.moon VALUES (15, 'IOOOOO', 10, 101, 10.0, 'Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.moon VALUES (16, 'Eu', 10, 20, 30.0, 'Another Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.moon VALUES (17, 'Moon of Earth', 10, 0, 10.0, 'Our very own Moon!', true, true, 1);
INSERT INTO public.moon VALUES (18, 'IOOOOOO', 10, 101, 10.0, 'Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.moon VALUES (19, 'E', 10, 20, 30.0, 'Another Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.moon VALUES (20, 'Moon of Earth!', 10, 0, 10.0, 'Our very own Moon!', true, true, 1);
INSERT INTO public.moon VALUES (21, 'IOOOOOOO', 10, 101, 10.0, 'Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.moon VALUES (22, 'Europa of Jupiter', 10, 20, 30.0, 'Another Moon belonging to Jupiter', true, false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 20, 0, 20.0, 'Our very own planet!', true, true, 3);
INSERT INTO public.planet VALUES (2, 'Saturn', 30, 30, 30.0, 'Planet with rings!', true, false, 3);
INSERT INTO public.planet VALUES (3, 'Jupiter', 40, 40, 40.0, 'The largest planet in the solar system', true, false, 3);
INSERT INTO public.planet VALUES (7, 'Moon of Earth!', 10, 0, 10.0, 'Our very own Moon!', true, true, 4);
INSERT INTO public.planet VALUES (8, 'IOOOOOOO', 10, 101, 10.0, 'Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.planet VALUES (9, 'Europa of Jupiter', 10, 20, 30.0, 'Another Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.planet VALUES (10, 'Moon Earth!', 10, 0, 10.0, 'Our very own Moon!', true, true, 4);
INSERT INTO public.planet VALUES (11, 'IOOOOOO', 10, 101, 10.0, 'Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.planet VALUES (12, 'Europa', 10, 20, 30.0, 'Another Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.planet VALUES (13, 'Moon!', 10, 0, 10.0, 'Our very own Moon!', true, true, 4);
INSERT INTO public.planet VALUES (14, 'IOOOOO', 10, 101, 10.0, 'Moon belonging to Jupiter', true, false, 3);
INSERT INTO public.planet VALUES (15, 'Europ', 10, 20, 30.0, 'Another Moon belonging to Jupiter', true, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Sun', 20, 20, 20.0, 'Our very own star!', true, true, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 30, 30, 30.0, 'Closest star to us, after the Sun', true, true, 1);
INSERT INTO public.star VALUES (5, 'Some Unknown Star', 40, 40, 40.0, 'Some unknown star', true, false, 2);
INSERT INTO public.star VALUES (6, 'c', 1, 1, 1.0, 'a', true, true, 1);
INSERT INTO public.star VALUES (8, 'a', 1, 1, 1.0, 'a', true, true, 1);
INSERT INTO public.star VALUES (9, 'b', 1, 1, 1.0, 'a', true, true, 1);


--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy_dummy_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: dummy dummy_dummy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_dummy_id_key UNIQUE (dummy_id);


--
-- Name: dummy dummy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_pkey PRIMARY KEY (dummy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

