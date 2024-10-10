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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    number_of_stars_in_millions integer,
    galaxy_type text,
    galaxy_size text
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
    name character varying(40) NOT NULL,
    planet_id integer,
    moon_size text,
    moon_color text
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
    name character varying(40) NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
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
-- Name: spaceship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spaceship (
    spaceship_id integer NOT NULL,
    name character varying(30),
    number_of_planets_visited integer NOT NULL
);


ALTER TABLE public.spaceship OWNER TO freecodecamp;

--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spaceship_spaceship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spaceship_spaceship_id_seq OWNER TO freecodecamp;

--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spaceship_spaceship_id_seq OWNED BY public.spaceship.spaceship_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    number_of_planets integer,
    galaxy_id integer,
    star_type text
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
-- Name: spaceship spaceship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship ALTER COLUMN spaceship_id SET DEFAULT nextval('public.spaceship_spaceship_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Ghetto Way', 4, 'Swirly', 'Medium');
INSERT INTO public.galaxy VALUES (2, 'Marsandra', 7, 'Elliptical', 'Large');
INSERT INTO public.galaxy VALUES (3, 'Qutro', 2, 'Dense Ball', 'Small');
INSERT INTO public.galaxy VALUES (4, 'Hatr', 6, 'Swirly', 'Medium');
INSERT INTO public.galaxy VALUES (5, 'Far Stray', 8, 'Mothball', 'Large');
INSERT INTO public.galaxy VALUES (6, 'Veveek', 4, 'Elliptical', 'Medium');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Furi', 2, 'Medium', 'White');
INSERT INTO public.moon VALUES (2, 'GLO-56', 1, 'Medium', 'White');
INSERT INTO public.moon VALUES (3, 'GLO-46', 1, 'Medium', 'White');
INSERT INTO public.moon VALUES (4, 'GLO-67', 1, 'Medium', 'White');
INSERT INTO public.moon VALUES (5, 'TLO-47', 2, 'Small', 'Grey');
INSERT INTO public.moon VALUES (6, 'TLO-57', 2, 'Small', 'Grey');
INSERT INTO public.moon VALUES (7, 'TLO-67', 2, 'Small', 'Grey');
INSERT INTO public.moon VALUES (8, 'THO-9', 4, 'Small', 'Red');
INSERT INTO public.moon VALUES (9, 'THO-3', 4, 'Small', 'Red');
INSERT INTO public.moon VALUES (10, 'THO-2', 4, 'Small', 'Red');
INSERT INTO public.moon VALUES (11, 'Golgat', 5, 'Large', 'Blue');
INSERT INTO public.moon VALUES (12, 'Otre', 5, 'Large', 'Blue');
INSERT INTO public.moon VALUES (13, 'Patre', 5, 'Large', 'Blue');
INSERT INTO public.moon VALUES (14, 'TYI-9', 3, 'Medium', 'White');
INSERT INTO public.moon VALUES (15, 'TYI-6', 3, 'Medium', 'White');
INSERT INTO public.moon VALUES (16, 'TYI-3', 3, 'Medium', 'White');
INSERT INTO public.moon VALUES (17, 'TYI-2', 3, 'Medium', 'White');
INSERT INTO public.moon VALUES (18, 'TFG-56', 4, 'Small', 'Grey');
INSERT INTO public.moon VALUES (19, 'TFG-55', 4, 'Small', 'Grey');
INSERT INTO public.moon VALUES (20, 'TFG-25', 4, 'Small', 'Grey');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Folr', 354.4, 'A lush, lively planet', true, true, 2);
INSERT INTO public.planet VALUES (2, 'Gorf', 33.4, 'Home of the Gorks', true, false, 1);
INSERT INTO public.planet VALUES (3, 'Fotyu', 34.5, 'Barren desert world', false, true, 4);
INSERT INTO public.planet VALUES (4, 'Rort', 14.5, 'Water World', true, true, 4);
INSERT INTO public.planet VALUES (5, 'Topre', 44.5, 'Water World', true, true, 3);
INSERT INTO public.planet VALUES (6, 'Tokm', 45.5, 'Manufacturing', true, false, 3);
INSERT INTO public.planet VALUES (7, 'Potre', 15.5, 'Agricultural', true, true, 5);
INSERT INTO public.planet VALUES (8, 'ERRA', 234.42, 'N/A', false, true, 5);
INSERT INTO public.planet VALUES (9, 'IVF-23', 25241.42, 'N/A', true, true, 6);
INSERT INTO public.planet VALUES (10, 'IVF-56', 15241.42, 'N/A', true, true, 6);
INSERT INTO public.planet VALUES (11, 'IVG-89', 1341.54, 'N/A', true, true, 6);
INSERT INTO public.planet VALUES (12, 'IVG-13', 2441.24, 'N/A', false, true, 6);


--
-- Data for Name: spaceship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spaceship VALUES (1, 'Murtem', 4);
INSERT INTO public.spaceship VALUES (2, 'Tako', 6);
INSERT INTO public.spaceship VALUES (3, 'Lolkr', 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Rer', 4, 1, 'Sol');
INSERT INTO public.star VALUES (2, 'Furt', 2, 1, 'White Dwarf');
INSERT INTO public.star VALUES (3, 'Ghurt', 5, 2, 'Red Dwarf');
INSERT INTO public.star VALUES (4, 'For-65', 2, 1, 'Sol');
INSERT INTO public.star VALUES (5, 'IRG-712', 3, 4, 'White Giant');
INSERT INTO public.star VALUES (6, 'Klo-K-8', 3, 2, 'Neutron');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spaceship_spaceship_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: spaceship spaceship_number_of_planets_visited_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_number_of_planets_visited_key UNIQUE (number_of_planets_visited);


--
-- Name: spaceship spaceship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_pkey PRIMARY KEY (spaceship_id);


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

