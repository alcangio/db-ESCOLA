--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.2 (Debian 16.2-1.pgdg120+2)

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
-- Name: aluno; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.aluno (
    id_nome integer NOT NULL,
    nome character varying(50) NOT NULL,
    email character varying(100),
    endereco character varying(255)
);


--
-- Name: aluno_id_nome_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.aluno_id_nome_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: aluno_id_nome_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.aluno_id_nome_seq OWNED BY public.aluno.id_nome;


--
-- Name: demo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.demo (
    id integer NOT NULL,
    name character varying(200) DEFAULT ''::character varying NOT NULL,
    hint text DEFAULT ''::text NOT NULL
);


--
-- Name: demo_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.demo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: demo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.demo_id_seq OWNED BY public.demo.id;


--
-- Name: instrumento; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.instrumento (
    id_instrumento integer NOT NULL,
    nome character varying(8) NOT NULL,
    preco double precision NOT NULL,
    em_promocao boolean
);


--
-- Name: instrumento_id_instrumento_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.instrumento_id_instrumento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: instrumento_id_instrumento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.instrumento_id_instrumento_seq OWNED BY public.instrumento.id_instrumento;


--
-- Name: aluno id_nome; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.aluno ALTER COLUMN id_nome SET DEFAULT nextval('public.aluno_id_nome_seq'::regclass);


--
-- Name: demo id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.demo ALTER COLUMN id SET DEFAULT nextval('public.demo_id_seq'::regclass);


--
-- Name: instrumento id_instrumento; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instrumento ALTER COLUMN id_instrumento SET DEFAULT nextval('public.instrumento_id_instrumento_seq'::regclass);


--
-- Name: aluno aluno_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (id_nome);


--
-- Name: demo demo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.demo
    ADD CONSTRAINT demo_pkey PRIMARY KEY (id);


--
-- Name: instrumento instrumento_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instrumento
    ADD CONSTRAINT instrumento_pkey PRIMARY KEY (id_instrumento);


--
-- PostgreSQL database dump complete
--

