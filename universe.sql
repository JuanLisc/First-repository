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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying(30) NOT NULL,
    "position" text,
    size numeric,
    form text
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroid_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    size numeric,
    name character varying(30) NOT NULL,
    type text,
    discovered_by text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_name_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_name_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_name_seq OWNER TO freecodecamp;

--
-- Name: galaxy_name_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_name_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric,
    movement text,
    is_satelite boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_name_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_name_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_name_seq OWNER TO freecodecamp;

--
-- Name: moon_name_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_name_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    name character varying(30) NOT NULL,
    has_water boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_name_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_name_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_name_seq OWNER TO freecodecamp;

--
-- Name: planet_name_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_name_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    age_in_millions_of_years integer,
    name character varying(30) NOT NULL,
    distribution text,
    composition text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_name_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_name_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_name_seq OWNER TO freecodecamp;

--
-- Name: star_name_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_name_seq OWNED BY public.star.star_id;


--
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_name_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_name_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_name_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_name_seq'::regclass);


--
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, 'Asteroid1', NULL, NULL, NULL);
INSERT INTO public.asteroids VALUES (2, 'Asteroid2', NULL, NULL, NULL);
INSERT INTO public.asteroids VALUES (3, 'Asteroid3', NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1000000, 'Via Lactea', 'espiral', 'Galileo Galilei');
INSERT INTO public.galaxy VALUES (2, 1000000, 'Andromeda', 'espiral', 'Heber D Curtis');
INSERT INTO public.galaxy VALUES (3, 1000000, 'Galaxia E0', 'eliptica', NULL);
INSERT INTO public.galaxy VALUES (4, 1000000, 'Galaxia SO1', 'lenticular', NULL);
INSERT INTO public.galaxy VALUES (5, 1000000, 'Galaxia Irr-I', 'irregular', NULL);
INSERT INTO public.galaxy VALUES (6, 1000000, 'Galaxia Seyfert', 'activa', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Luna2', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Luna3', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Luna4', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Luna5', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Luna6', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Luna7', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Luna8', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Luna9', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Luna10', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Luna11', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Luna12', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Luna13', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Luna14', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Luna15', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Luna16', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Luna17', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Luna18', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Luna19', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Luna20', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 5, 'closest to the sun', false, 'Mercurio', false);
INSERT INTO public.planet VALUES (2, 5, '2nd closest to the sun', false, 'Venus', false);
INSERT INTO public.planet VALUES (3, 5, 'WE LIVE HERE!', true, 'Tierra', true);
INSERT INTO public.planet VALUES (4, 5, 'ssmall, close to earth', false, 'Marte', false);
INSERT INTO public.planet VALUES (5, 5, 'biggest planet', false, 'Jupiter', false);
INSERT INTO public.planet VALUES (6, 5, 'it has a ring around it', false, 'Saturno', true);
INSERT INTO public.planet VALUES (7, 5, 'a bit small and far from the sun', false, 'Urano', false);
INSERT INTO public.planet VALUES (8, 6, 'the first to be found', false, 'Neptuno', false);
INSERT INTO public.planet VALUES (9, 1, 'one of the newest', false, 'Gamma Cephei Ab', false);
INSERT INTO public.planet VALUES (10, 1, 'sounds arabic, extrasolar', false, 'Mu Arae', false);
INSERT INTO public.planet VALUES (11, 1, 'extrasolar', false, '55 Cancri', false);
INSERT INTO public.planet VALUES (12, 1, 'extrasolar', false, 'GJ 436', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 10000, 'Alfa Centauri', 'discos galacticos', '71% hidrogeno, 27% helio', NULL);
INSERT INTO public.star VALUES (2, 10000, 'Westerlund 1', 'cumulos estelares', '71% hidrogeno, 27% helio', NULL);
INSERT INTO public.star VALUES (3, 10000, 'Constelacion Sagitario', 'bulbo galactico', '71% hidrogeno, 27% helio', NULL);
INSERT INTO public.star VALUES (4, 10000, 'Estrella Roja', 'estrella solitaria', '71% hidrogeno, 27% helio', NULL);
INSERT INTO public.star VALUES (5, 10000, 'Estrella de Wolf-Rayet', 'raras', '71% hidrogeno, 27% helio', NULL);
INSERT INTO public.star VALUES (6, 10000, 'Estrellas enanas marrones', 'incompletas', '71% hidrogeno, 27% helio', NULL);


--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroid_id_seq', 1, false);


--
-- Name: galaxy_name_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_name_seq', 1, false);


--
-- Name: moon_name_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_name_seq', 1, false);


--
-- Name: planet_name_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_name_seq', 1, false);


--
-- Name: star_name_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_name_seq', 1, false);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

