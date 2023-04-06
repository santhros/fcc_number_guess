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
-- Name: number_guess; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.number_guess (
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.number_guess OWNER TO freecodecamp;

--
-- Data for Name: number_guess; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.number_guess VALUES ('JORGE', 3, 5);
INSERT INTO public.number_guess VALUES ('IVAN', 2, 9);
INSERT INTO public.number_guess VALUES ('user_1680775770307', 2, 611);
INSERT INTO public.number_guess VALUES ('user_1680775418390', 2, 412);
INSERT INTO public.number_guess VALUES ('user_1680775687781', 2, 516);
INSERT INTO public.number_guess VALUES ('user_1680775418391', 5, 132);
INSERT INTO public.number_guess VALUES ('user_1680775429965', 2, 807);
INSERT INTO public.number_guess VALUES ('user_1680775687782', 5, 34);
INSERT INTO public.number_guess VALUES ('user_1680775429966', 5, 378);
INSERT INTO public.number_guess VALUES ('user_1680775509287', 2, 757);
INSERT INTO public.number_guess VALUES ('user_1680775770308', 5, 91);
INSERT INTO public.number_guess VALUES ('user_1680775509288', 5, 117);
INSERT INTO public.number_guess VALUES ('user_1680775696663', 2, 581);
INSERT INTO public.number_guess VALUES ('user_1680775543592', 2, 493);
INSERT INTO public.number_guess VALUES ('user_1680775543593', 5, 12);
INSERT INTO public.number_guess VALUES ('user_1680775696664', 5, 116);
INSERT INTO public.number_guess VALUES ('user_1680775579962', 2, 378);
INSERT INTO public.number_guess VALUES ('user_1680775579963', 5, 231);
INSERT INTO public.number_guess VALUES ('user_1680775587867', 2, 867);
INSERT INTO public.number_guess VALUES ('user_1680775700507', 2, 351);
INSERT INTO public.number_guess VALUES ('user_1680775777155', 2, 355);
INSERT INTO public.number_guess VALUES ('user_1680775587868', 5, 412);
INSERT INTO public.number_guess VALUES ('user_1680775594987', 2, 125);
INSERT INTO public.number_guess VALUES ('user_1680775700508', 5, 88);
INSERT INTO public.number_guess VALUES ('user_1680775594988', 5, 417);
INSERT INTO public.number_guess VALUES ('user_1680775600597', 2, 433);
INSERT INTO public.number_guess VALUES ('user_1680775707266', 2, 180);
INSERT INTO public.number_guess VALUES ('user_1680775600598', 5, 61);
INSERT INTO public.number_guess VALUES ('user_1680775777156', 5, 96);
INSERT INTO public.number_guess VALUES ('user_1680775606081', 2, 410);
INSERT INTO public.number_guess VALUES ('user_1680775707267', 5, 92);
INSERT INTO public.number_guess VALUES ('user_1680775606082', 5, 135);
INSERT INTO public.number_guess VALUES ('user_1680775611417', 2, 505);
INSERT INTO public.number_guess VALUES ('user_1680775611418', 5, 23);
INSERT INTO public.number_guess VALUES ('user_1680775712032', 2, 143);
INSERT INTO public.number_guess VALUES ('user_1680775616007', 2, 258);
INSERT INTO public.number_guess VALUES ('user_1680775781151', 2, 152);
INSERT INTO public.number_guess VALUES ('user_1680775616008', 5, 107);
INSERT INTO public.number_guess VALUES ('user_1680775712033', 5, 38);
INSERT INTO public.number_guess VALUES ('user_1680775635704', 2, 291);
INSERT INTO public.number_guess VALUES ('user_1680775635705', 5, 63);
INSERT INTO public.number_guess VALUES ('user_1680775640011', 2, 637);
INSERT INTO public.number_guess VALUES ('user_1680775715563', 2, 21);
INSERT INTO public.number_guess VALUES ('user_1680775640012', 5, 216);
INSERT INTO public.number_guess VALUES ('user_1680775781152', 5, 391);
INSERT INTO public.number_guess VALUES ('user_1680775715564', 5, 203);
INSERT INTO public.number_guess VALUES ('user_1680775723742', 2, 498);
INSERT INTO public.number_guess VALUES ('user_1680775723743', 5, 553);
INSERT INTO public.number_guess VALUES ('user_1680775785611', 2, 904);
INSERT INTO public.number_guess VALUES ('user_1680775730411', 2, 684);
INSERT INTO public.number_guess VALUES ('user_1680775730412', 5, 84);
INSERT INTO public.number_guess VALUES ('user_1680775785612', 5, 212);
INSERT INTO public.number_guess VALUES ('user_1680775736772', 2, 705);
INSERT INTO public.number_guess VALUES ('user_1680775736773', 5, 64);
INSERT INTO public.number_guess VALUES ('user_1680775745854', 2, 40);
INSERT INTO public.number_guess VALUES ('user_1680775800677', 2, 200);
INSERT INTO public.number_guess VALUES ('user_1680775745855', 5, 27);
INSERT INTO public.number_guess VALUES ('user_1680775752864', 2, 730);
INSERT INTO public.number_guess VALUES ('user_1680775800678', 5, 163);
INSERT INTO public.number_guess VALUES ('user_1680775752865', 5, 7);
INSERT INTO public.number_guess VALUES ('user_1680775756791', 2, 581);
INSERT INTO public.number_guess VALUES ('user_1680775756792', 5, 96);
INSERT INTO public.number_guess VALUES ('user_1680775765556', 2, 672);
INSERT INTO public.number_guess VALUES ('user_1680775765557', 5, 106);


--
-- Name: number_guess number_guess_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.number_guess
    ADD CONSTRAINT number_guess_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

