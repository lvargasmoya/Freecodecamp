{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 --\
-- PostgreSQL database dump\
--\
\
-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)\
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)\
\
SET statement_timeout = 0;\
SET lock_timeout = 0;\
SET idle_in_transaction_session_timeout = 0;\
SET client_encoding = 'UTF8';\
SET standard_conforming_strings = on;\
SELECT pg_catalog.set_config('search_path', '', false);\
SET check_function_bodies = false;\
SET xmloption = content;\
SET client_min_messages = warning;\
SET row_security = off;\
\
DROP DATABASE universe;\
--\
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp\
--\
\
CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';\
\
\
ALTER DATABASE universe OWNER TO freecodecamp;\
\
\\connect universe\
\
SET statement_timeout = 0;\
SET lock_timeout = 0;\
SET idle_in_transaction_session_timeout = 0;\
SET client_encoding = 'UTF8';\
SET standard_conforming_strings = on;\
SELECT pg_catalog.set_config('search_path', '', false);\
SET check_function_bodies = false;\
SET xmloption = content;\
SET client_min_messages = warning;\
SET row_security = off;\
\
SET default_tablespace = '';\
\
SET default_table_access_method = heap;\
\
--\
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.galaxy (\
    name character varying(255) NOT NULL,\
    has_life boolean,\
    galaxy_type character varying NOT NULL,\
    galaxy_age numeric(8,2),\
    galaxy_id integer NOT NULL\
);\
\
\
ALTER TABLE public.galaxy OWNER TO freecodecamp;\
\
--\
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.galaxy_galaxy_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;\
\
\
--\
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.moon (\
    name character varying(255) NOT NULL,\
    has_life boolean,\
    moon_type character varying NOT NULL,\
    moon_description text,\
    planet_id integer,\
    moon_id integer NOT NULL,\
    moon_age integer\
);\
\
\
ALTER TABLE public.moon OWNER TO freecodecamp;\
\
--\
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.moon_moon_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;\
\
\
--\
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.planet (\
    name character varying(255) NOT NULL,\
    has_life boolean,\
    planet_type character varying NOT NULL,\
    planet_age numeric(8,2),\
    planet_description text,\
    star_id integer,\
    planet_id integer NOT NULL,\
    planet_position integer\
);\
\
\
ALTER TABLE public.planet OWNER TO freecodecamp;\
\
--\
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.planet_planet_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;\
\
\
--\
-- Name: space; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.space (\
    galaxy_id integer NOT NULL,\
    star_id integer NOT NULL,\
    planet_id integer NOT NULL,\
    space_id integer NOT NULL,\
    name character varying(255)\
);\
\
\
ALTER TABLE public.space OWNER TO freecodecamp;\
\
--\
-- Name: space_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.space_galaxy_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.space_galaxy_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: space_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.space_galaxy_id_seq OWNED BY public.space.galaxy_id;\
\
\
--\
-- Name: space_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.space_planet_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.space_planet_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: space_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.space_planet_id_seq OWNED BY public.space.planet_id;\
\
\
--\
-- Name: space_space_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.space_space_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.space_space_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: space_space_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.space_space_id_seq OWNED BY public.space.space_id;\
\
\
--\
-- Name: space_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.space_star_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.space_star_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: space_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.space_star_id_seq OWNED BY public.space.star_id;\
\
\
--\
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.star (\
    name character varying(255) NOT NULL,\
    has_life boolean,\
    star_type character varying NOT NULL,\
    star_age numeric(8,2),\
    galaxy_id integer,\
    star_id integer NOT NULL\
);\
\
\
ALTER TABLE public.star OWNER TO freecodecamp;\
\
--\
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.star_star_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;\
\
\
--\
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);\
\
\
--\
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);\
\
\
--\
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);\
\
\
--\
-- Name: space galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.space ALTER COLUMN galaxy_id SET DEFAULT nextval('public.space_galaxy_id_seq'::regclass);\
\
\
--\
-- Name: space star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.space ALTER COLUMN star_id SET DEFAULT nextval('public.space_star_id_seq'::regclass);\
\
\
--\
-- Name: space planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.space ALTER COLUMN planet_id SET DEFAULT nextval('public.space_planet_id_seq'::regclass);\
\
\
--\
-- Name: space space_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.space ALTER COLUMN space_id SET DEFAULT nextval('public.space_space_id_seq'::regclass);\
\
\
--\
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);\
\
\
--\
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.galaxy VALUES ('Milky Way', true, 'Spiral', 13.60, 1);\
INSERT INTO public.galaxy VALUES ('Andromeda', false, 'Elliptical', 13.00, 2);\
INSERT INTO public.galaxy VALUES ('Triangulumn', true, 'Irregular', 12.00, 3);\
INSERT INTO public.galaxy VALUES ('Centaurus A', false, 'Lenticular', 11.00, 4);\
INSERT INTO public.galaxy VALUES ('Large Megallanic Cloud', true, 'Dwarf', 10.00, 5);\
INSERT INTO public.galaxy VALUES ('Small Megallanic Cloud', false, 'Starburst', 9.00, 6);\
\
\
--\
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.moon VALUES ('Moon', false, 'Rocky', 'It is the only moon of Earth', 13, 1, 5);\
INSERT INTO public.moon VALUES ('Io', false, 'Volcanic', 'Is the innermost of the 4 Galilean moons of Jupiter', 14, 2, 5);\
INSERT INTO public.moon VALUES ('Europa', false, 'Icy', 'Is the smallest of the Galilean moons', 14, 3, 5);\
INSERT INTO public.moon VALUES ('Ganymede', false, 'Icy', 'It is the largest moon of Jupiter', 14, 4, 5);\
INSERT INTO public.moon VALUES ('Callisto', false, 'Icy', 'It is the second-largest moon of Jupiter', 14, 5, 5);\
INSERT INTO public.moon VALUES ('Amalthea', false, 'Rocky', 'It is a small potato-shape moon', 14, 6, 5);\
INSERT INTO public.moon VALUES ('Thebe', false, 'Rocky', 'It is a tiny moon', 14, 7, 5);\
INSERT INTO public.moon VALUES ('Adrastea', false, 'Rocky', 'It is another tiny moon', 14, 8, 5);\
INSERT INTO public.moon VALUES ('Methone', false, 'Icy', 'It is a small moon with a unique horseshoe-shaped', 14, 9, 5);\
INSERT INTO public.moon VALUES ('Metis', false, 'Rocky', 'It is a tiny moon', 14, 10, 5);\
INSERT INTO public.moon VALUES ('Themisto', false, 'Himalia group', 'Small moon', 14, 11, 5);\
INSERT INTO public.moon VALUES ('Leda', false, 'Icy', 'Another small moon', 14, 12, 5);\
INSERT INTO public.moon VALUES ('Himalia', false, 'Icy', 'It is one of the largest moons of Jupiter', 14, 13, 5);\
INSERT INTO public.moon VALUES ('Lysithea', false, 'Icy', 'Another small moon', 14, 14, 5);\
INSERT INTO public.moon VALUES ('Elara', false, 'Icy', 'One of the largest irregular moons', 14, 15, 5);\
INSERT INTO public.moon VALUES ('Ananke', false, 'Icy', 'One of the largest irregular moons', 14, 16, 5);\
INSERT INTO public.moon VALUES ('Carpo', false, 'Icy', 'A member of the Ananke group', 14, 17, 5);\
INSERT INTO public.moon VALUES ('Thelxione', false, 'Icy', 'A member of the Ananke group', 14, 18, 5);\
INSERT INTO public.moon VALUES ('Euanthe', false, 'Icy', 'A member of the Ananke group', 14, 19, 5);\
INSERT INTO public.moon VALUES ('Pasinthee', false, 'Icy', 'A member of the Carpo group', 14, 20, 5);\
INSERT INTO public.moon VALUES ('Callirrhoe', false, 'Icy', 'A member of the Pasiphae group', 14, 21, 5);\
\
\
--\
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.planet VALUES ('Alpha Andromedae b', false, 'Gas giant', 6.00, 'Gas giant planet orbiting Alpha Andromedae', 2, 3, 1);\
INSERT INTO public.planet VALUES ('Alpha Andromedae c', false, 'Super-Earth', 5.00, 'Super Earth planet orbiting Alpha Andromedae', 2, 4, 2);\
INSERT INTO public.planet VALUES ('M31 Nova b', false, 'Exoplanet', 13.80, 'Exoplanet orbiting M31 Nova', 3, 5, 1);\
INSERT INTO public.planet VALUES ('M31 Nova c', false, 'Exoplanet', 13.80, 'Exoplanet orbiting M31 Nova', 3, 6, 2);\
INSERT INTO public.planet VALUES ('V838 Centauri b', false, 'Exoplanet', 13.80, 'Exoplanet orbiting V838 Centauri', 4, 7, 1);\
INSERT INTO public.planet VALUES ('V838 Centauri c', false, 'Exoplanet', 13.80, 'Exoplanet orbiting V838 Centauri', 4, 8, 2);\
INSERT INTO public.planet VALUES ('Canopus b', false, 'Super Earth', 315.00, 'Super Earth orbiting Canopus', 5, 9, 1);\
INSERT INTO public.planet VALUES ('Canopus c', false, 'Gas giant', 315.00, 'Exoplanet orbiting Canopus', 5, 10, 2);\
INSERT INTO public.planet VALUES ('Alpha Centauri A b', false, 'Exoplanet', 4.60, 'Exoplanet orbiting Alpha Centauri A', 6, 11, 1);\
INSERT INTO public.planet VALUES ('Alpha Centauri A c', false, 'Exoplanet', 4.60, 'Exoplanet orbiting Alpha Centauri A', 6, 12, 2);\
INSERT INTO public.planet VALUES ('Earth', true, 'Terrestrial', 4.50, 'It is made of rock and metal', 1, 13, 3);\
INSERT INTO public.planet VALUES ('Jupiter', false, 'Gas giant', 4.50, 'Largest planet of Solar System', 1, 14, 5);\
\
\
--\
-- Data for Name: space; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.space VALUES (1, 1, 13, 7, 'Sideral1');\
INSERT INTO public.space VALUES (1, 1, 14, 8, 'Sideral2');\
INSERT INTO public.space VALUES (2, 2, 3, 9, 'Sideral3');\
INSERT INTO public.space VALUES (3, 3, 5, 10, 'Sideral4');\
\
\
--\
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.star VALUES ('Sun', false, 'G-type main sequence', 4.60, 1, 1);\
INSERT INTO public.star VALUES ('Alpha Andromedae', false, 'F-type main sequence', 6.10, 2, 2);\
INSERT INTO public.star VALUES ('M31 Nova', false, 'Red nova', 13.80, 3, 3);\
INSERT INTO public.star VALUES ('V838 Centauri', false, 'Red variable', 13.80, 4, 4);\
INSERT INTO public.star VALUES ('Canopus', false, 'F-type supergiant', 315.00, 5, 5);\
INSERT INTO public.star VALUES ('Alpha Centauri A', false, 'G-type main sequence', 4.60, 6, 6);\
\
\
--\
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);\
\
\
--\
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);\
\
\
--\
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);\
\
\
--\
-- Name: space_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.space_galaxy_id_seq', 1, false);\
\
\
--\
-- Name: space_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.space_planet_id_seq', 1, false);\
\
\
--\
-- Name: space_space_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.space_space_id_seq', 10, true);\
\
\
--\
-- Name: space_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.space_star_id_seq', 1, false);\
\
\
--\
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);\
\
\
--\
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.galaxy\
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);\
\
\
--\
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.galaxy\
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);\
\
\
--\
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.moon\
    ADD CONSTRAINT moon_name_key UNIQUE (name);\
\
\
--\
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.moon\
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);\
\
\
--\
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.planet\
    ADD CONSTRAINT planet_name_key UNIQUE (name);\
\
\
--\
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.planet\
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);\
\
\
--\
-- Name: space space_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.space\
    ADD CONSTRAINT space_pkey PRIMARY KEY (space_id);\
\
\
--\
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.star\
    ADD CONSTRAINT star_name_key UNIQUE (name);\
\
\
--\
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.star\
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);\
\
\
--\
-- Name: space unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.space\
    ADD CONSTRAINT unique_name UNIQUE (name);\
\
\
--\
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.moon\
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);\
\
\
--\
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.planet\
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);\
\
\
--\
-- Name: space space_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.space\
    ADD CONSTRAINT space_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);\
\
\
--\
-- Name: space space_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.space\
    ADD CONSTRAINT space_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);\
\
\
--\
-- Name: space space_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.space\
    ADD CONSTRAINT space_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);\
\
\
--\
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.star\
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);\
\
\
--\
-- PostgreSQL database dump complete\
--\
\
}