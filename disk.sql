--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-11-14 13:14:01 BRST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 16857)
-- Name: disk; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA disk;


ALTER SCHEMA disk OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2159 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = disk, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 184 (class 1259 OID 16870)
-- Name: midia; Type: TABLE; Schema: disk; Owner: postgres
--

CREATE TABLE midia (
    cd_midia character varying
);


ALTER TABLE midia OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16876)
-- Name: palavras; Type: TABLE; Schema: disk; Owner: postgres
--

CREATE TABLE palavras (
    cd_palavra text
);


ALTER TABLE palavras OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16864)
-- Name: postagem; Type: TABLE; Schema: disk; Owner: postgres
--

CREATE TABLE postagem (
    cd_post character varying,
    ds_texto character varying(350)
);


ALTER TABLE postagem OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 16858)
-- Name: usuario; Type: TABLE; Schema: disk; Owner: postgres
--

CREATE TABLE usuario (
    cd_usuario integer,
    ds_email character varying(100),
    ds_senha character varying,
    nm_nome character varying(100)
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 2150 (class 0 OID 16870)
-- Dependencies: 184
-- Data for Name: midia; Type: TABLE DATA; Schema: disk; Owner: postgres
--

COPY midia (cd_midia) FROM stdin;
\.


--
-- TOC entry 2151 (class 0 OID 16876)
-- Dependencies: 185
-- Data for Name: palavras; Type: TABLE DATA; Schema: disk; Owner: postgres
--

COPY palavras (cd_palavra) FROM stdin;
\.


--
-- TOC entry 2149 (class 0 OID 16864)
-- Dependencies: 183
-- Data for Name: postagem; Type: TABLE DATA; Schema: disk; Owner: postgres
--

COPY postagem (cd_post, ds_texto) FROM stdin;
\.


--
-- TOC entry 2148 (class 0 OID 16858)
-- Dependencies: 182
-- Data for Name: usuario; Type: TABLE DATA; Schema: disk; Owner: postgres
--

COPY usuario (cd_usuario, ds_email, ds_senha, nm_nome) FROM stdin;
\.


--
-- TOC entry 2158 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-11-14 13:14:01 BRST

--
-- PostgreSQL database dump complete
--

