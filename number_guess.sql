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
-- Name: ranked; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ranked (
    name character varying(25),
    games_played integer,
    best integer
);


ALTER TABLE public.ranked OWNER TO freecodecamp;

--
-- Data for Name: ranked; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ranked VALUES ('user_1725455748629', 2, 73);
INSERT INTO public.ranked VALUES ('user_1725457993146', 5, 144);
INSERT INTO public.ranked VALUES ('user_1725455748630', 5, 64);
INSERT INTO public.ranked VALUES ('user_1725456279068', 2, 414);
INSERT INTO public.ranked VALUES ('user_1725455767771', 2, 30);
INSERT INTO public.ranked VALUES ('user_1725457290069', 2, 700);
INSERT INTO public.ranked VALUES ('user_1725455767772', 5, 132);
INSERT INTO public.ranked VALUES ('user_1725456279069', 5, 28);
INSERT INTO public.ranked VALUES ('user_1725455945379', 2, 83);
INSERT INTO public.ranked VALUES ('user_1725458315667', 1, 293);
INSERT INTO public.ranked VALUES ('user_1725455945380', 5, 208);
INSERT INTO public.ranked VALUES ('user_1725456104555', 2, 271);
INSERT INTO public.ranked VALUES ('user_1725456281820', 2, 157);
INSERT INTO public.ranked VALUES ('user_1725458315667', 1, 344);
INSERT INTO public.ranked VALUES ('user_1725456104556', 5, 70);
INSERT INTO public.ranked VALUES ('user_1725457290070', 5, 18);
INSERT INTO public.ranked VALUES ('user_1725456140262', 2, 41);
INSERT INTO public.ranked VALUES ('user_1725456281821', 5, 274);
INSERT INTO public.ranked VALUES ('user_1725456140263', 5, 65);
INSERT INTO public.ranked VALUES ('user_1725456142467', 2, 164);
INSERT INTO public.ranked VALUES ('user_1725456536134', 2, 390);
INSERT INTO public.ranked VALUES ('user_1725456142468', 5, 211);
INSERT INTO public.ranked VALUES ('user_1725458315666', 1, 209);
INSERT INTO public.ranked VALUES ('user_1725456144415', 2, 290);
INSERT INTO public.ranked VALUES ('user_1725456536136', 5, 20);
INSERT INTO public.ranked VALUES ('user_1725456144416', 5, 96);
INSERT INTO public.ranked VALUES ('user_1725456146363', 2, 575);
INSERT INTO public.ranked VALUES ('user_1725457292387', 2, 36);
INSERT INTO public.ranked VALUES ('user_1725456146364', 5, 32);
INSERT INTO public.ranked VALUES ('user_1725456595515', 2, 278);
INSERT INTO public.ranked VALUES ('user_1725456148482', 2, 637);
INSERT INTO public.ranked VALUES ('user_1725458315666', 1, 65);
INSERT INTO public.ranked VALUES ('user_1725458315667', 1, 352);
INSERT INTO public.ranked VALUES ('user_1725456148483', 5, 72);
INSERT INTO public.ranked VALUES ('user_1725456595516', 5, 205);
INSERT INTO public.ranked VALUES ('user_1725456150570', 2, 55);
INSERT INTO public.ranked VALUES ('user_1725457292388', 5, 54);
INSERT INTO public.ranked VALUES ('user_1725456150571', 5, 278);
INSERT INTO public.ranked VALUES ('user_1725456152754', 2, 353);
INSERT INTO public.ranked VALUES ('user_1725456674589', 2, 153);
INSERT INTO public.ranked VALUES ('user_1725456152755', 5, 166);
INSERT INTO public.ranked VALUES ('user_1725458315667', 1, 766);
INSERT INTO public.ranked VALUES ('user_1725456674590', 5, 54);
INSERT INTO public.ranked VALUES ('user_1725457172722', 1, 655);
INSERT INTO public.ranked VALUES ('user_1725457172722', 1, 650);
INSERT INTO public.ranked VALUES ('user_1725457172721', 1, 311);
INSERT INTO public.ranked VALUES ('user_1725457172721', 1, 609);
INSERT INTO public.ranked VALUES ('user_1725457172722', 1, 878);
INSERT INTO public.ranked VALUES ('user_1725457172722', 1, 907);
INSERT INTO public.ranked VALUES ('user_1725457172722', 1, 469);
INSERT INTO public.ranked VALUES ('user_1725457191309', 1, 25);
INSERT INTO public.ranked VALUES ('user_1725457191309', 1, 375);
INSERT INTO public.ranked VALUES ('user_1725457191308', 1, 472);
INSERT INTO public.ranked VALUES ('user_1725457191308', 1, 280);
INSERT INTO public.ranked VALUES ('user_1725457191309', 1, 557);
INSERT INTO public.ranked VALUES ('user_1725457191309', 1, 663);
INSERT INTO public.ranked VALUES ('user_1725457191309', 1, 20);
INSERT INTO public.ranked VALUES ('user_1725457209313', 2, 416);
INSERT INTO public.ranked VALUES ('user_1725457297997', 2, 399);
INSERT INTO public.ranked VALUES ('user_1725458315667', 1, 307);
INSERT INTO public.ranked VALUES ('user_1725457209314', 5, 250);
INSERT INTO public.ranked VALUES ('user_1725457270451', 2, 715);
INSERT INTO public.ranked VALUES ('user_1725457297998', 5, 201);
INSERT INTO public.ranked VALUES ('Tho', 1, 18);
INSERT INTO public.ranked VALUES ('user_1725457270452', 5, 192);
INSERT INTO public.ranked VALUES ('user_1725457273991', 2, 415);
INSERT INTO public.ranked VALUES ('user_1725457273992', 5, 133);
INSERT INTO public.ranked VALUES ('user_1725457276020', 2, 234);
INSERT INTO public.ranked VALUES ('user_1725457276021', 5, 47);
INSERT INTO public.ranked VALUES ('user_1725458655726', 1, 150);
INSERT INTO public.ranked VALUES ('user_1725457278055', 2, 721);
INSERT INTO public.ranked VALUES ('user_1725457868674', 2, 506);
INSERT INTO public.ranked VALUES ('user_1725457278056', 5, 386);
INSERT INTO public.ranked VALUES ('user_1725458764886', 2, 16);
INSERT INTO public.ranked VALUES ('user_1725457282637', 2, 454);
INSERT INTO public.ranked VALUES ('user_1725457282638', 5, 51);
INSERT INTO public.ranked VALUES ('user_1725458655727', 4, 247);
INSERT INTO public.ranked VALUES ('user_1725457287956', 2, 292);
INSERT INTO public.ranked VALUES ('user_1725457868675', 5, 184);
INSERT INTO public.ranked VALUES ('user_1725457287957', 5, 44);
INSERT INTO public.ranked VALUES ('user_1725458764887', 5, 63);
INSERT INTO public.ranked VALUES ('user_1725457962094', 2, 671);
INSERT INTO public.ranked VALUES ('user_1725459109234', 2, 353);
INSERT INTO public.ranked VALUES ('user_1725457962095', 5, 15);
INSERT INTO public.ranked VALUES ('user_1725458703123', 2, 279);
INSERT INTO public.ranked VALUES ('user_1725458880590', 2, 501);
INSERT INTO public.ranked VALUES ('user_1725458703124', 5, 115);
INSERT INTO public.ranked VALUES ('user_1725457993145', 2, 376);
INSERT INTO public.ranked VALUES ('user_1725459109235', 5, 396);
INSERT INTO public.ranked VALUES ('user_1725458880591', 5, 19);
INSERT INTO public.ranked VALUES ('user_1725458754663', 2, 125);
INSERT INTO public.ranked VALUES ('user_1725458754664', 5, 41);
INSERT INTO public.ranked VALUES ('user_1725459113045', 2, 147);
INSERT INTO public.ranked VALUES ('user_1725458884322', 2, 145);
INSERT INTO public.ranked VALUES ('user_1725458884323', 5, 331);
INSERT INTO public.ranked VALUES ('user_1725459113046', 5, 224);


--
-- PostgreSQL database dump complete
--

