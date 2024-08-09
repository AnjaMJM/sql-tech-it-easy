--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-08-07 15:25:54

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
-- TOC entry 219 (class 1259 OID 16468)
-- Name: cimodule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cimodule (
    provider character varying(20),
    encoding character varying(20),
    productid integer
);


ALTER TABLE public.cimodule OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16440)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying(20),
    type character varying(20),
    brand character varying(20),
    price integer,
    currentstock integer,
    sold integer,
    datesold date
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16460)
-- Name: remotecontroller; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.remotecontroller (
    smart boolean,
    batterytype character varying(10),
    productid integer
);


ALTER TABLE public.remotecontroller OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16450)
-- Name: television; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.television (
    height numeric,
    width numeric,
    screenquality character varying(50),
    screentype character varying(50),
    wifi boolean,
    smarttv boolean,
    voicecontrol boolean,
    hdr boolean,
    productid integer
);


ALTER TABLE public.television OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16445)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50),
    password character varying(50),
    address character varying(100),
    function character varying(20),
    salaryscale integer,
    vacationdays integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16476)
-- Name: wallbracket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wallbracket (
    adjustable boolean,
    attachment character varying(100),
    height numeric,
    width numeric,
    productid integer
);


ALTER TABLE public.wallbracket OWNER TO postgres;

--
-- TOC entry 4866 (class 0 OID 16468)
-- Dependencies: 219
-- Data for Name: cimodule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cimodule (provider, encoding, productid) FROM stdin;
Ziggo	DVB-C	6
KPN	DVB-T	7
T-Mobile	DVB-C	8
Ziggo	DVB-C	6
KPN	DVB-T	7
T-Mobile	DVB-C	8
\.


--
-- TOC entry 4862 (class 0 OID 16440)
-- Dependencies: 215
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, name, type, brand, price, currentstock, sold, datesold) FROM stdin;
1	Samsung QLED TV	TV	Samsung	1000	10	5	2024-01-15
2	LG OLED TV	TV	LG	1200	7	3	2024-02-10
3	Sony Bravia	TV	Sony	800	15	8	2024-03-20
4	Panasonic 4K	TV	Panasonic	700	12	6	2024-04-05
5	Philips LED TV	TV	Philips	500	20	10	2024-05-12
6	Samsung CI+ Mod	CI Module	Samsung	50	30	15	2024-01-25
7	LG CI+ Module	CI Module	LG	40	25	10	2024-02-15
8	Sony CI+ Module	CI Module	Sony	45	18	12	2024-03-10
9	Samsung Smart Remote	Remote Controller	Samsung	60	40	20	2024-01-20
10	LG Magic Remote	Remote Controller	LG	50	35	18	2024-02-18
11	Sony Remote	Remote Controller	Sony	30	50	25	2024-03-12
12	Vogels Wall Mount	Wall Bracket	Vogels	80	25	10	2024-04-15
13	Hama Wall Bracket	Wall Bracket	Hama	60	30	12	2024-05-18
\.


--
-- TOC entry 4865 (class 0 OID 16460)
-- Dependencies: 218
-- Data for Name: remotecontroller; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.remotecontroller (smart, batterytype, productid) FROM stdin;
t	AA	9
t	AAA	10
f	AAA	11
\.


--
-- TOC entry 4864 (class 0 OID 16450)
-- Dependencies: 217
-- Data for Name: television; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.television (height, width, screenquality, screentype, wifi, smarttv, voicecontrol, hdr, productid) FROM stdin;
70.8	122.6	4K	LED	t	t	t	t	1
71.2	123.0	4K	OLED	t	t	t	t	2
68.5	121.4	4K	LED	t	t	t	t	3
66.9	118.0	4K	LCD	t	f	f	t	4
65.4	110.2	Full HD	LED	f	f	f	f	5
\.


--
-- TOC entry 4863 (class 0 OID 16445)
-- Dependencies: 216
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password, address, function, salaryscale, vacationdays) FROM stdin;
1	hellalangevelden	missboss	zaandam	CFO	10	40
2	pauluslangevelden	salesmasterrr!!!	zaandam	COO	10	40
3	robinlangevelden	backbone001	zaandam	CIO	10	40
\.


--
-- TOC entry 4867 (class 0 OID 16476)
-- Dependencies: 220
-- Data for Name: wallbracket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wallbracket (adjustable, attachment, height, width, productid) FROM stdin;
t	VESA	20.0	30.0	12
t	VESA	25.0	35.0	13
\.


--
-- TOC entry 4708 (class 2606 OID 16444)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 4710 (class 2606 OID 16489)
-- Name: product uq_product_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT uq_product_name UNIQUE (name);


--
-- TOC entry 4712 (class 2606 OID 16487)
-- Name: users uq_user_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT uq_user_name UNIQUE (username);


--
-- TOC entry 4714 (class 2606 OID 16449)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4717 (class 2606 OID 16471)
-- Name: cimodule cimodule_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cimodule
    ADD CONSTRAINT cimodule_productid_fkey FOREIGN KEY (productid) REFERENCES public.product(id);


--
-- TOC entry 4716 (class 2606 OID 16463)
-- Name: remotecontroller remotecontroller_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remotecontroller
    ADD CONSTRAINT remotecontroller_productid_fkey FOREIGN KEY (productid) REFERENCES public.product(id);


--
-- TOC entry 4715 (class 2606 OID 16455)
-- Name: television television_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.television
    ADD CONSTRAINT television_productid_fkey FOREIGN KEY (productid) REFERENCES public.product(id);


--
-- TOC entry 4718 (class 2606 OID 16481)
-- Name: wallbracket wallbracket_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wallbracket
    ADD CONSTRAINT wallbracket_productid_fkey FOREIGN KEY (productid) REFERENCES public.product(id);


-- Completed on 2024-08-07 15:25:54

--
-- PostgreSQL database dump complete
--

