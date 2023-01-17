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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    col4 integer,
    col5 integer,
    unique_col integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    col3 character varying(50),
    unique_col integer
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    planet_id integer,
    unique_col integer
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
    distance_from_earth_au numeric(2,1),
    description text NOT NULL,
    has_life boolean,
    star_id integer,
    age_in_million_years integer,
    size_in_km integer,
    is_spherical boolean,
    unique_col integer
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
    description text NOT NULL,
    galaxy_id integer,
    col5 integer,
    unique_col integer
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 'Nuestra galaxia, la segunda mas grande del grupo locaal, posee una masa de 10^12 masas solares, desde el centro de la galaxia hasta el sol, hay alrededor de 25.766 años luz.', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Palo de Hockey', 'Ubicada en la constelacion de Canes Venatici, tiene forma de palo alargado y deformado', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Nube de Magallanes', 'Galaxia enana miembro del grrupo local', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'NGC 4248', 'Galaxia espiral en la constelacion de Canes Venatici', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'NGC 2500', 'Se encuentra en la constelacion de Lynx', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Andromeda', 'Es la galaxia mas grande mas cercana y contiene aproximadamente el mismo numero de estrellas que la via lactea. Se encuentra en la constelacion de Andromeda', NULL, NULL, NULL);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Galaxia en espiral', NULL, NULL);
INSERT INTO public.galaxy_types VALUES (2, 'Galaxias elipticas', NULL, NULL);
INSERT INTO public.galaxy_types VALUES (3, 'Galaxias irregulares', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Luna', 'Satelite natural del planeta tierra', 2, NULL);
INSERT INTO public.moon VALUES (3, 'Ganimedes', 'Satelite natural del planeta Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (4, 'Europa', 'Sexto satelite de Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (5, 'Calisto', 'Tercer satelite mas grande del sistema solar', 3, NULL);
INSERT INTO public.moon VALUES (6, 'Io', 'Tercer satelite de Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (7, 'Fobos', 'Es el mas grande d de los dos satelites de Marte', 7, NULL);
INSERT INTO public.moon VALUES (8, 'Autonoe', 'Satelite irregular de Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (9, 'Deimos', 'Es el mas pequeño y externo de los dos satelites de Marte', 7, NULL);
INSERT INTO public.moon VALUES (10, 'Esponde', 'Es un satelite retrogrado e irregular de Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (11, 'Temisto', 'Es un satelite irregular de Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (12, 'Adrastea', 'Es el segundo satelite natural de Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (13, 'Tebe', 'Es uno de los pequeños satelites interiores de Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (14, 'Leda', 'Es un pequeño satelite irregular de Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (15, 'Dafne', 'Satelite natural descubierto por Carolyn Porco', 9, NULL);
INSERT INTO public.moon VALUES (16, 'Eukelade', 'Satelite irregular de Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (17, 'Himalia', 'Es el satelite irregular mas grande del planeta Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (18, 'Elara', 'Satelite natural de Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (19, 'Ananke', 'Satelite irregular y retrogrado de Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (20, 'Sinope', 'Satelite irregular y retrogrado de Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (21, 'Carme', 'Uno de los muchos satelites irregulares de Jupiter', 3, NULL);
INSERT INTO public.moon VALUES (22, 'Calirroe', 'Uno de los satelites ultraperifericos de Jupiter', 3, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Osiris', NULL, 'Planeta en la constelacion de osiris. Con grandes temperaturas', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Tierra', NULL, 'Planeta natal de los humanos', NULL, 3, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Jupiter', NULL, 'Planeta mas grande del sistema solar', NULL, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Pluton', NULL, 'Antiguo planeta del sistema solar', NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Mercurio', NULL, 'Primer planeta del sistema solaar', NULL, 6, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Venus', NULL, 'Segundo planeta del sistema solar', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Marte', NULL, 'Cuarto planeta del sistema solar', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Ceres', NULL, 'Quinto planeta del sistema solar', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Saturno', NULL, 'Septimo planeta del sistema solar', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Urano', NULL, 'Octavo planeta del sistema solar', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Neptuno', NULL, 'Noveno planeta del sistema solar', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Caronte', NULL, 'Decimo primer planeta del sistema solar', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirio', 'Enana Blanca', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Canopus', 'Supergigante blanco-amarilla', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Arturo', 'Gigante Naranja', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Alfa Centauri', 'Enana Amarilla', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Vega', 'Gigante Blanca', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Rigel', 'Supergigante Azul', 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_unique_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_unique_col_key UNIQUE (unique_col);


--
-- Name: galaxy galaxy_unique_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_col_key UNIQUE (unique_col);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_col_key UNIQUE (unique_col);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_col_key UNIQUE (unique_col);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_col_key UNIQUE (unique_col);


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

