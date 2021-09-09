--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8
-- Dumped by pg_dump version 12.8

-- Started on 2021-09-09 17:13:27

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
-- TOC entry 205 (class 1259 OID 16416)
-- Name: detalles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalles (
    cantidad integer NOT NULL,
    valor integer NOT NULL,
    id_producto integer NOT NULL,
    id_factura integer NOT NULL
);


ALTER TABLE public.detalles OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16407)
-- Name: empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleados (
    id integer NOT NULL,
    nombre character varying(28) NOT NULL,
    ingreso date NOT NULL
);


ALTER TABLE public.empleados OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16413)
-- Name: facturas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facturas (
    id integer NOT NULL,
    fecha_venta date NOT NULL,
    id_empleado integer NOT NULL
);


ALTER TABLE public.facturas OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16410)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id integer NOT NULL,
    nombre character varying(57) NOT NULL,
    valor integer NOT NULL
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- TOC entry 2826 (class 0 OID 16416)
-- Dependencies: 205
-- Data for Name: detalles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalles (cantidad, valor, id_producto, id_factura) FROM stdin;
8	100000	1502	5
6	500000	1504	4
2	450000	1510	6
1	500000	1504	2
11	50000	1112	5
2	200000	1110	4
2	450000	1088	6
1	200000	1502	2
3	200000	1133	7
11	50000	1137	7
5	450000	1421	20
5	100000	942	21
3	200000	1000	22
3	450000	1502	20
3	100000	985	23
2	500000	1444	22
6	200000	966	1
3	200000	1441	23
11	50000	1426	21
2	450000	1137	1
3	500000	1234	12
5	300000	1504	27
4	450000	1238	24
3	340000	1215	26
1	200000	1257	27
4	100000	1240	24
2	200000	1088	27
2	500000	1242	12
6	50000	1220	25
1	100000	943	27
1	680000	1481	11
2	300000	1431	8
5	770000	1062	10
4	340000	1449	8
7	200000	1074	13
11	690000	1175	14
2	200000	1088	14
6	680000	1242	8
3	680000	1465	10
1	200000	962	8
4	200000	971	20
6	690000	1043	33
2	300000	1384	27
4	340000	1504	33
2	200000	1062	9
3	680000	1248	27
2	690000	1270	1
3	770000	964	1
3	200000	1465	9
2	680000	1225	20
1	200000	1074	17
4	770000	1502	17
9	770000	1441	18
2	680000	1234	19
1	300000	1510	28
10	690000	1242	16
2	200000	1240	28
5	200000	942	19
2	200000	1465	16
3	340000	1504	18
2	300000	1043	31
3	680000	1000	3
2	770000	1242	28
1	300000	1431	31
4	100000	1270	3
2	200000	1240	24
3	300000	1052	3
1	690000	979	28
2	770000	1301	3
2	300000	1411	24
\.


--
-- TOC entry 2823 (class 0 OID 16407)
-- Dependencies: 202
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleados (id, nombre, ingreso) FROM stdin;
117	Maggy B. Hudson	2021-02-03
61	Buffy V. Sears	2020-09-05
321	Francis G. Williamson	2020-12-26
47	Kim W. Daniel	2019-10-31
489	Willow F. Boyer	2019-07-29
488	Arden Z. Leon	2021-06-15
62	Reese V. Bailey	2020-07-05
84	Charles S. Hopper	2020-10-25
341	Uta L. Bishop	2019-09-06
28	Willow X. Sexton	2021-04-29
340	Brody L. Avery	2019-09-16
35	Blaze M. Wilkerson	2021-03-10
46	Blossom X. Bullock	2019-08-31
60	Basil C. Sexton	2020-05-20
339	Galvin H. Erickson	2019-12-28
115	Marny W. Stephens	2020-10-27
487	Kibo S. Ryan	2020-12-20
116	Paki O. Kramer	2020-06-01
59	Yvonne D. Mays	2020-04-14
338	John R. Guerra	2020-04-29
63	Valentine W. Bright	2021-03-09
490	Louis R. Huber	2021-02-10
\.


--
-- TOC entry 2825 (class 0 OID 16413)
-- Dependencies: 204
-- Data for Name: facturas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facturas (id, fecha_venta, id_empleado) FROM stdin;
6	2016-04-17	341
2	2021-07-19	35
4	2018-07-25	339
5	2021-07-19	47
7	2021-09-09	117
8	2021-05-29	84
10	2020-03-03	84
11	2019-11-24	115
13	2021-07-11	59
14	2019-11-17	338
15	2021-02-21	116
16	2016-05-28	487
17	2019-07-23	321
18	2021-02-15	61
19	2021-02-18	489
20	2020-09-02	488
21	2021-02-19	62
22	2016-03-04	341
23	2016-06-22	341
1	2021-06-19	28
24	2018-09-13	339
25	2015-11-12	340
12	2021-05-10	117
26	2016-02-01	340
27	2016-10-06	340
28	2016-09-09	341
3	2021-07-19	46
29	2017-02-20	341
30	2020-10-03	60
31	2019-01-16	339
32	2020-10-21	63
33	2018-04-29	321
34	2017-08-14	487
9	2018-10-01	490
36	2015-10-11	340
\.


--
-- TOC entry 2824 (class 0 OID 16410)
-- Dependencies: 203
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id, nombre, valor) FROM stdin;
\.


-- Completed on 2021-09-09 17:13:30

--
-- PostgreSQL database dump complete
--

