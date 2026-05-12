--
-- PostgreSQL database dump
--

\restrict Vp9OYGToNmpqgfJiGwyhWJf7eQbzrCyNDU0lm6RRKKoOSdJ6FysAwxqQ2AVZLvh

-- Dumped from database version 18.3 (Ubuntu 18.3-1.pgdg24.04+1)
-- Dumped by pg_dump version 18.3 (Ubuntu 18.3-1.pgdg24.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: calificaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calificaciones (
    cod_cal integer NOT NULL,
    cod_nota integer NOT NULL,
    valor integer,
    fecha date,
    cod_cur integer,
    cod_est integer,
    year integer,
    periodo character(8)
);


ALTER TABLE public.calificaciones OWNER TO postgres;

--
-- Name: calificaciones_cod_cal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.calificaciones_cod_cal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.calificaciones_cod_cal_seq OWNER TO postgres;

--
-- Name: calificaciones_cod_cal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.calificaciones_cod_cal_seq OWNED BY public.calificaciones.cod_cal;


--
-- Name: cursos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cursos (
    cod_cur integer NOT NULL,
    nomb_cur character(50) NOT NULL,
    cod_doc integer
);


ALTER TABLE public.cursos OWNER TO postgres;

--
-- Name: cursos_cod_cur_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cursos_cod_cur_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cursos_cod_cur_seq OWNER TO postgres;

--
-- Name: cursos_cod_cur_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cursos_cod_cur_seq OWNED BY public.cursos.cod_cur;


--
-- Name: docentes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.docentes (
    cod_doc integer NOT NULL,
    nomb_doc character(50) NOT NULL,
    clave integer NOT NULL
);


ALTER TABLE public.docentes OWNER TO postgres;

--
-- Name: docentes_cod_doc_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.docentes_cod_doc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.docentes_cod_doc_seq OWNER TO postgres;

--
-- Name: docentes_cod_doc_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.docentes_cod_doc_seq OWNED BY public.docentes.cod_doc;


--
-- Name: estudiantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estudiantes (
    cod_est integer NOT NULL,
    nomb_est character(50) NOT NULL
);


ALTER TABLE public.estudiantes OWNER TO postgres;

--
-- Name: estudiantes_cod_est_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estudiantes_cod_est_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estudiantes_cod_est_seq OWNER TO postgres;

--
-- Name: estudiantes_cod_est_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estudiantes_cod_est_seq OWNED BY public.estudiantes.cod_est;


--
-- Name: inscripciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inscripciones (
    cod_cur integer NOT NULL,
    cod_est integer NOT NULL,
    year integer NOT NULL,
    periodo character(8) NOT NULL
);


ALTER TABLE public.inscripciones OWNER TO postgres;

--
-- Name: notas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notas (
    cod_nota integer NOT NULL,
    desc_nota character(250) NOT NULL,
    procentaje integer NOT NULL,
    posicion integer NOT NULL,
    cod_cur integer
);


ALTER TABLE public.notas OWNER TO postgres;

--
-- Name: notas_cod_nota_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notas_cod_nota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.notas_cod_nota_seq OWNER TO postgres;

--
-- Name: notas_cod_nota_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notas_cod_nota_seq OWNED BY public.notas.cod_nota;


--
-- Name: calificaciones cod_cal; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones ALTER COLUMN cod_cal SET DEFAULT nextval('public.calificaciones_cod_cal_seq'::regclass);


--
-- Name: cursos cod_cur; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos ALTER COLUMN cod_cur SET DEFAULT nextval('public.cursos_cod_cur_seq'::regclass);


--
-- Name: docentes cod_doc; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docentes ALTER COLUMN cod_doc SET DEFAULT nextval('public.docentes_cod_doc_seq'::regclass);


--
-- Name: estudiantes cod_est; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiantes ALTER COLUMN cod_est SET DEFAULT nextval('public.estudiantes_cod_est_seq'::regclass);


--
-- Name: notas cod_nota; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notas ALTER COLUMN cod_nota SET DEFAULT nextval('public.notas_cod_nota_seq'::regclass);


--
-- Data for Name: calificaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.calificaciones (cod_cal, cod_nota, valor, fecha, cod_cur, cod_est, year, periodo) FROM stdin;
\.


--
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cursos (cod_cur, nomb_cur, cod_doc) FROM stdin;
\.


--
-- Data for Name: docentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.docentes (cod_doc, nomb_doc, clave) FROM stdin;
\.


--
-- Data for Name: estudiantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estudiantes (cod_est, nomb_est) FROM stdin;
\.


--
-- Data for Name: inscripciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inscripciones (cod_cur, cod_est, year, periodo) FROM stdin;
\.


--
-- Data for Name: notas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notas (cod_nota, desc_nota, procentaje, posicion, cod_cur) FROM stdin;
\.


--
-- Name: calificaciones_cod_cal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.calificaciones_cod_cal_seq', 1, false);


--
-- Name: cursos_cod_cur_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cursos_cod_cur_seq', 1, false);


--
-- Name: docentes_cod_doc_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.docentes_cod_doc_seq', 1, false);


--
-- Name: estudiantes_cod_est_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estudiantes_cod_est_seq', 1, false);


--
-- Name: notas_cod_nota_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notas_cod_nota_seq', 1, false);


--
-- Name: calificaciones calificaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones
    ADD CONSTRAINT calificaciones_pkey PRIMARY KEY (cod_cal);


--
-- Name: cursos cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (cod_cur);


--
-- Name: docentes docentes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docentes
    ADD CONSTRAINT docentes_pkey PRIMARY KEY (cod_doc);


--
-- Name: estudiantes estudiantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_pkey PRIMARY KEY (cod_est);


--
-- Name: inscripciones inscripciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_pkey PRIMARY KEY (cod_cur, cod_est, year, periodo);


--
-- Name: notas notas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notas
    ADD CONSTRAINT notas_pkey PRIMARY KEY (cod_nota);


--
-- Name: calificaciones calificaciones_cod_cur_cod_est_year_periodo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones
    ADD CONSTRAINT calificaciones_cod_cur_cod_est_year_periodo_fkey FOREIGN KEY (cod_cur, cod_est, year, periodo) REFERENCES public.inscripciones(cod_cur, cod_est, year, periodo);


--
-- Name: calificaciones calificaciones_cod_nota_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones
    ADD CONSTRAINT calificaciones_cod_nota_fkey FOREIGN KEY (cod_nota) REFERENCES public.notas(cod_nota);


--
-- Name: cursos cursos_cod_doc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_cod_doc_fkey FOREIGN KEY (cod_doc) REFERENCES public.docentes(cod_doc);


--
-- Name: inscripciones inscripciones_cod_cur_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_cod_cur_fkey FOREIGN KEY (cod_cur) REFERENCES public.cursos(cod_cur);


--
-- Name: inscripciones inscripciones_cod_est_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_cod_est_fkey FOREIGN KEY (cod_est) REFERENCES public.estudiantes(cod_est);


--
-- Name: notas notas_cod_cur_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notas
    ADD CONSTRAINT notas_cod_cur_fkey FOREIGN KEY (cod_cur) REFERENCES public.cursos(cod_cur);


--
-- PostgreSQL database dump complete
--

\unrestrict Vp9OYGToNmpqgfJiGwyhWJf7eQbzrCyNDU0lm6RRKKoOSdJ6FysAwxqQ2AVZLvh

