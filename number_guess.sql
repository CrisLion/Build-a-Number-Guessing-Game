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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: scores; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.scores (
    scores_id integer NOT NULL,
    username character varying(22),
    games_played integer DEFAULT 0,
    best_game integer DEFAULT 0
);


ALTER TABLE public.scores OWNER TO freecodecamp;

--
-- Name: scores_scores_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.scores_scores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scores_scores_id_seq OWNER TO freecodecamp;

--
-- Name: scores_scores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.scores_scores_id_seq OWNED BY public.scores.scores_id;


--
-- Name: scores scores_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scores ALTER COLUMN scores_id SET DEFAULT nextval('public.scores_scores_id_seq'::regclass);


--
-- Data for Name: scores; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.scores VALUES (2, 'user_1672011023369', 0, 0);
INSERT INTO public.scores VALUES (3, 'user_1672011023368', 0, 0);
INSERT INTO public.scores VALUES (4, 'user_1672011400937', 0, 0);
INSERT INTO public.scores VALUES (5, 'user_1672011400936', 0, 0);
INSERT INTO public.scores VALUES (6, 'user_1672011628290', 0, 0);
INSERT INTO public.scores VALUES (7, 'user_1672011628289', 0, 0);
INSERT INTO public.scores VALUES (8, 'user_1672011798086', 0, 0);
INSERT INTO public.scores VALUES (9, 'user_1672011798085', 0, 0);
INSERT INTO public.scores VALUES (10, '525', 0, 0);
INSERT INTO public.scores VALUES (11, 'user_1672012437912', 0, 0);
INSERT INTO public.scores VALUES (12, 'user_1672012437911', 0, 0);
INSERT INTO public.scores VALUES (13, 'user_1672012641377', 0, 0);
INSERT INTO public.scores VALUES (14, 'user_1672012641376', 0, 0);
INSERT INTO public.scores VALUES (15, 'user_1672012681326', 0, 0);
INSERT INTO public.scores VALUES (16, 'user_1672012681325', 0, 0);
INSERT INTO public.scores VALUES (17, 'user_1672013290458', 0, 0);
INSERT INTO public.scores VALUES (18, 'user_1672013290457', 0, 0);
INSERT INTO public.scores VALUES (1, 'Cris', 1, 12);
INSERT INTO public.scores VALUES (20, 'user_1672013395103', 1, 903);
INSERT INTO public.scores VALUES (19, 'user_1672013395104', 1, 846);
INSERT INTO public.scores VALUES (22, 'user_1672013484522', 1, 511);
INSERT INTO public.scores VALUES (21, 'user_1672013484523', 1, 491);
INSERT INTO public.scores VALUES (24, 'user_1672013537827', 1, 895);
INSERT INTO public.scores VALUES (23, 'user_1672013537828', 1, 698);
INSERT INTO public.scores VALUES (26, 'user_1672013582634', 1, 420);
INSERT INTO public.scores VALUES (25, 'user_1672013582635', 1, 448);
INSERT INTO public.scores VALUES (28, 'user_1672013595064', 1, 223);
INSERT INTO public.scores VALUES (27, 'user_1672013595065', 1, 679);


--
-- Name: scores_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.scores_scores_id_seq', 28, true);


--
-- Name: scores scores_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scores
    ADD CONSTRAINT scores_pkey PRIMARY KEY (scores_id);


--
-- PostgreSQL database dump complete
--


