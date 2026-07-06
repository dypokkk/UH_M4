--
-- PostgreSQL database dump
--

\restrict UtHro0q9ygj82z9IOMPlPVcGJik0eM772Zod1Bids7py4Z6oQMsbkb2nBYul0KT

-- Dumped from database version 16.14 (Debian 16.14-1.pgdg13+1)
-- Dumped by pg_dump version 16.14 (Ubuntu 16.14-0ubuntu0.24.04.1)

-- Started on 2026-07-06 10:46:25 -05

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

DROP DATABASE bd_dylan_gamero_garabato;
--
-- TOC entry 3502 (class 1262 OID 16389)
-- Name: bd_dylan_gamero_garabato; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE bd_dylan_gamero_garabato WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


\unrestrict UtHro0q9ygj82z9IOMPlPVcGJik0eM772Zod1Bids7py4Z6oQMsbkb2nBYul0KT
\connect bd_dylan_gamero_garabato
\restrict UtHro0q9ygj82z9IOMPlPVcGJik0eM772Zod1Bids7py4Z6oQMsbkb2nBYul0KT

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
-- TOC entry 216 (class 1259 OID 16394)
-- Name: riwi_category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.riwi_category (
    riwi_id integer NOT NULL,
    riwi_name character varying NOT NULL
);


--
-- TOC entry 215 (class 1259 OID 16393)
-- Name: riwi_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.riwi_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 215
-- Name: riwi_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.riwi_category_id_seq OWNED BY public.riwi_category.riwi_id;


--
-- TOC entry 218 (class 1259 OID 16405)
-- Name: riwi_city; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.riwi_city (
    riwi_id integer NOT NULL,
    riwi_name character varying NOT NULL
);


--
-- TOC entry 217 (class 1259 OID 16404)
-- Name: riwi_city_riwi_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.riwi_city_riwi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 217
-- Name: riwi_city_riwi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.riwi_city_riwi_id_seq OWNED BY public.riwi_city.riwi_id;


--
-- TOC entry 230 (class 1259 OID 16504)
-- Name: riwi_movement; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.riwi_movement (
    riwi_id integer NOT NULL,
    riwi_id_warehouse integer NOT NULL,
    riwi_id_product integer NOT NULL,
    riwi_id_order integer NOT NULL,
    riwi_id_movement_type integer NOT NULL,
    riwi_quantity integer NOT NULL,
    riwi_date timestamp without time zone NOT NULL,
    riwi_price integer NOT NULL
);


--
-- TOC entry 229 (class 1259 OID 16503)
-- Name: riwi_movement_riwi_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.riwi_movement_riwi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 229
-- Name: riwi_movement_riwi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.riwi_movement_riwi_id_seq OWNED BY public.riwi_movement.riwi_id;


--
-- TOC entry 226 (class 1259 OID 16466)
-- Name: riwi_movement_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.riwi_movement_type (
    riwi_id integer NOT NULL,
    riwi_name character varying NOT NULL
);


--
-- TOC entry 225 (class 1259 OID 16465)
-- Name: riwi_movement_type_riwi_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.riwi_movement_type_riwi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 225
-- Name: riwi_movement_type_riwi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.riwi_movement_type_riwi_id_seq OWNED BY public.riwi_movement_type.riwi_id;


--
-- TOC entry 228 (class 1259 OID 16477)
-- Name: riwi_order; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.riwi_order (
    riwi_id integer NOT NULL,
    riwi_date timestamp without time zone NOT NULL,
    riwi_id_supplier integer NOT NULL
);


--
-- TOC entry 227 (class 1259 OID 16476)
-- Name: riwi_order_riwi_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.riwi_order_riwi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 227
-- Name: riwi_order_riwi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.riwi_order_riwi_id_seq OWNED BY public.riwi_order.riwi_id;


--
-- TOC entry 224 (class 1259 OID 16452)
-- Name: riwi_product; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.riwi_product (
    riwi_id integer NOT NULL,
    riwi_name character varying NOT NULL,
    riwi_id_category integer NOT NULL
);


--
-- TOC entry 223 (class 1259 OID 16451)
-- Name: riwi_product_riwi_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.riwi_product_riwi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 223
-- Name: riwi_product_riwi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.riwi_product_riwi_id_seq OWNED BY public.riwi_product.riwi_id;


--
-- TOC entry 222 (class 1259 OID 16428)
-- Name: riwi_supplier; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.riwi_supplier (
    riwi_id integer NOT NULL,
    riwi_name character varying NOT NULL,
    riwi_id_city integer NOT NULL
);


--
-- TOC entry 221 (class 1259 OID 16427)
-- Name: riwi_supplier_riwi_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.riwi_supplier_riwi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 221
-- Name: riwi_supplier_riwi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.riwi_supplier_riwi_id_seq OWNED BY public.riwi_supplier.riwi_id;


--
-- TOC entry 220 (class 1259 OID 16414)
-- Name: riwi_warehouse; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.riwi_warehouse (
    riwi_id integer NOT NULL,
    riwi_name character varying NOT NULL,
    riwi_id_city integer NOT NULL
);


--
-- TOC entry 219 (class 1259 OID 16413)
-- Name: riwi_warehouse_riwi_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.riwi_warehouse_riwi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 219
-- Name: riwi_warehouse_riwi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.riwi_warehouse_riwi_id_seq OWNED BY public.riwi_warehouse.riwi_id;


--
-- TOC entry 3302 (class 2604 OID 16397)
-- Name: riwi_category riwi_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_category ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_category_id_seq'::regclass);


--
-- TOC entry 3303 (class 2604 OID 16408)
-- Name: riwi_city riwi_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_city ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_city_riwi_id_seq'::regclass);


--
-- TOC entry 3309 (class 2604 OID 16507)
-- Name: riwi_movement riwi_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_movement ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_movement_riwi_id_seq'::regclass);


--
-- TOC entry 3307 (class 2604 OID 16469)
-- Name: riwi_movement_type riwi_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_movement_type ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_movement_type_riwi_id_seq'::regclass);


--
-- TOC entry 3308 (class 2604 OID 16480)
-- Name: riwi_order riwi_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_order ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_order_riwi_id_seq'::regclass);


--
-- TOC entry 3306 (class 2604 OID 16455)
-- Name: riwi_product riwi_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_product ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_product_riwi_id_seq'::regclass);


--
-- TOC entry 3305 (class 2604 OID 16431)
-- Name: riwi_supplier riwi_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_supplier ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_supplier_riwi_id_seq'::regclass);


--
-- TOC entry 3304 (class 2604 OID 16417)
-- Name: riwi_warehouse riwi_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_warehouse ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_warehouse_riwi_id_seq'::regclass);


--
-- TOC entry 3482 (class 0 OID 16394)
-- Dependencies: 216
-- Data for Name: riwi_category; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.riwi_category VALUES (1, 'Consumible');
INSERT INTO public.riwi_category VALUES (2, 'Herramienta');
INSERT INTO public.riwi_category VALUES (3, 'Elementos Protección');
INSERT INTO public.riwi_category VALUES (4, 'EPP');


--
-- TOC entry 3484 (class 0 OID 16405)
-- Dependencies: 218
-- Data for Name: riwi_city; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.riwi_city VALUES (1, 'Cartagena');
INSERT INTO public.riwi_city VALUES (2, 'Barranquilla');
INSERT INTO public.riwi_city VALUES (3, 'Santa Marta');


--
-- TOC entry 3496 (class 0 OID 16504)
-- Dependencies: 230
-- Data for Name: riwi_movement; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.riwi_movement VALUES (1, 1, 2, 1, 1, 148, '2026-04-01 00:00:00', 115388);
INSERT INTO public.riwi_movement VALUES (2, 1, 4, 2, 2, 27, '2026-02-14 00:00:00', 35506);
INSERT INTO public.riwi_movement VALUES (3, 1, 3, 3, 2, 70, '2026-01-01 00:00:00', 14290);
INSERT INTO public.riwi_movement VALUES (4, 2, 3, 4, 2, 160, '2026-02-16 00:00:00', 117524);
INSERT INTO public.riwi_movement VALUES (5, 3, 4, 5, 1, 40, '2026-02-28 00:00:00', 139836);
INSERT INTO public.riwi_movement VALUES (6, 3, 2, 2, 1, 130, '2026-03-06 00:00:00', 88512);
INSERT INTO public.riwi_movement VALUES (7, 3, 5, 6, 1, 33, '2026-01-20 00:00:00', 43746);
INSERT INTO public.riwi_movement VALUES (8, 1, 3, 12, 1, 119, '2026-04-13 00:00:00', 23022);
INSERT INTO public.riwi_movement VALUES (9, 3, 3, 7, 2, 185, '2026-04-17 00:00:00', 123653);
INSERT INTO public.riwi_movement VALUES (10, 3, 4, 8, 1, 87, '2026-02-02 00:00:00', 123108);
INSERT INTO public.riwi_movement VALUES (11, 1, 3, 9, 2, 175, '2026-05-23 00:00:00', 39944);
INSERT INTO public.riwi_movement VALUES (12, 3, 2, 10, 1, 199, '2026-03-19 00:00:00', 118291);
INSERT INTO public.riwi_movement VALUES (13, 2, 3, 11, 1, 131, '2026-01-25 00:00:00', 71980);
INSERT INTO public.riwi_movement VALUES (14, 1, 2, 12, 1, 134, '2026-03-15 00:00:00', 89964);
INSERT INTO public.riwi_movement VALUES (15, 3, 2, 13, 2, 124, '2026-03-12 00:00:00', 52910);
INSERT INTO public.riwi_movement VALUES (16, 3, 2, 14, 2, 61, '2026-04-26 00:00:00', 136736);
INSERT INTO public.riwi_movement VALUES (17, 2, 2, 15, 1, 169, '2026-03-03 00:00:00', 18022);
INSERT INTO public.riwi_movement VALUES (18, 1, 1, 16, 1, 192, '2026-03-21 00:00:00', 108802);
INSERT INTO public.riwi_movement VALUES (19, 2, 4, 17, 1, 78, '2026-03-11 00:00:00', 37943);


--
-- TOC entry 3492 (class 0 OID 16466)
-- Dependencies: 226
-- Data for Name: riwi_movement_type; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.riwi_movement_type VALUES (1, 'OUT');
INSERT INTO public.riwi_movement_type VALUES (2, 'IN');


--
-- TOC entry 3494 (class 0 OID 16477)
-- Dependencies: 228
-- Data for Name: riwi_order; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.riwi_order VALUES (1, '2026-04-01 00:00:00', 2);
INSERT INTO public.riwi_order VALUES (2, '2026-02-14 00:00:00', 2);
INSERT INTO public.riwi_order VALUES (3, '2026-01-01 00:00:00', 3);
INSERT INTO public.riwi_order VALUES (4, '2026-02-16 00:00:00', 2);
INSERT INTO public.riwi_order VALUES (5, '2026-02-28 00:00:00', 3);
INSERT INTO public.riwi_order VALUES (6, '2026-01-20 00:00:00', 2);
INSERT INTO public.riwi_order VALUES (7, '2026-04-17 00:00:00', 1);
INSERT INTO public.riwi_order VALUES (8, '2026-02-02 00:00:00', 1);
INSERT INTO public.riwi_order VALUES (9, '2026-05-23 00:00:00', 2);
INSERT INTO public.riwi_order VALUES (10, '2026-03-19 00:00:00', 2);
INSERT INTO public.riwi_order VALUES (11, '2026-01-25 00:00:00', 3);
INSERT INTO public.riwi_order VALUES (12, '2026-03-15 00:00:00', 3);
INSERT INTO public.riwi_order VALUES (13, '2026-03-12 00:00:00', 3);
INSERT INTO public.riwi_order VALUES (14, '2026-04-26 00:00:00', 3);
INSERT INTO public.riwi_order VALUES (15, '2026-03-03 00:00:00', 3);
INSERT INTO public.riwi_order VALUES (16, '2026-03-21 00:00:00', 2);
INSERT INTO public.riwi_order VALUES (17, '2026-03-11 00:00:00', 2);


--
-- TOC entry 3490 (class 0 OID 16452)
-- Dependencies: 224
-- Data for Name: riwi_product; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.riwi_product VALUES (1, 'Casco Industrial', 4);
INSERT INTO public.riwi_product VALUES (2, 'Disco de Corte 4.5', 2);
INSERT INTO public.riwi_product VALUES (3, 'Guantes de Nitrilo', 3);
INSERT INTO public.riwi_product VALUES (4, 'Electrodo E6013', 1);
INSERT INTO public.riwi_product VALUES (5, 'Soldadura E6013', 1);


--
-- TOC entry 3488 (class 0 OID 16428)
-- Dependencies: 222
-- Data for Name: riwi_supplier; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.riwi_supplier VALUES (1, 'Suministros Global S.A.S', 3);
INSERT INTO public.riwi_supplier VALUES (2, 'Aceros del Norte S.A.S', 1);
INSERT INTO public.riwi_supplier VALUES (3, 'Industriales S.A.S', 2);


--
-- TOC entry 3486 (class 0 OID 16414)
-- Dependencies: 220
-- Data for Name: riwi_warehouse; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.riwi_warehouse VALUES (1, 'Bodega Costa', 3);
INSERT INTO public.riwi_warehouse VALUES (2, 'Centro Logistico Norte', 1);
INSERT INTO public.riwi_warehouse VALUES (3, 'Bodega Central', 2);


--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 215
-- Name: riwi_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.riwi_category_id_seq', 4, true);


--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 217
-- Name: riwi_city_riwi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.riwi_city_riwi_id_seq', 3, true);


--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 229
-- Name: riwi_movement_riwi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.riwi_movement_riwi_id_seq', 19, true);


--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 225
-- Name: riwi_movement_type_riwi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.riwi_movement_type_riwi_id_seq', 2, true);


--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 227
-- Name: riwi_order_riwi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.riwi_order_riwi_id_seq', 23, true);


--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 223
-- Name: riwi_product_riwi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.riwi_product_riwi_id_seq', 6, true);


--
-- TOC entry 3517 (class 0 OID 0)
-- Dependencies: 221
-- Name: riwi_supplier_riwi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.riwi_supplier_riwi_id_seq', 3, true);


--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 219
-- Name: riwi_warehouse_riwi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.riwi_warehouse_riwi_id_seq', 3, true);


--
-- TOC entry 3311 (class 2606 OID 16401)
-- Name: riwi_category category_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_category
    ADD CONSTRAINT category_pk PRIMARY KEY (riwi_id);


--
-- TOC entry 3313 (class 2606 OID 16403)
-- Name: riwi_category category_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_category
    ADD CONSTRAINT category_unique UNIQUE (riwi_name);


--
-- TOC entry 3315 (class 2606 OID 16412)
-- Name: riwi_city riwi_city_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_city
    ADD CONSTRAINT riwi_city_pk PRIMARY KEY (riwi_id);


--
-- TOC entry 3329 (class 2606 OID 16509)
-- Name: riwi_movement riwi_movement_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_movement
    ADD CONSTRAINT riwi_movement_pk PRIMARY KEY (riwi_id);


--
-- TOC entry 3323 (class 2606 OID 16473)
-- Name: riwi_movement_type riwi_movement_type_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_movement_type
    ADD CONSTRAINT riwi_movement_type_pk PRIMARY KEY (riwi_id);


--
-- TOC entry 3325 (class 2606 OID 16475)
-- Name: riwi_movement_type riwi_movement_type_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_movement_type
    ADD CONSTRAINT riwi_movement_type_unique UNIQUE (riwi_name);


--
-- TOC entry 3327 (class 2606 OID 16482)
-- Name: riwi_order riwi_order_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_order
    ADD CONSTRAINT riwi_order_pk PRIMARY KEY (riwi_id);


--
-- TOC entry 3321 (class 2606 OID 16459)
-- Name: riwi_product riwi_product_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_product
    ADD CONSTRAINT riwi_product_pk PRIMARY KEY (riwi_id);


--
-- TOC entry 3319 (class 2606 OID 16435)
-- Name: riwi_supplier riwi_supplier_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_supplier
    ADD CONSTRAINT riwi_supplier_pk PRIMARY KEY (riwi_id);


--
-- TOC entry 3317 (class 2606 OID 16421)
-- Name: riwi_warehouse riwi_warehouse_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_warehouse
    ADD CONSTRAINT riwi_warehouse_pk PRIMARY KEY (riwi_id);


--
-- TOC entry 3334 (class 2606 OID 16520)
-- Name: riwi_movement riwi_movement_riwi_movement_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_movement
    ADD CONSTRAINT riwi_movement_riwi_movement_type_fk FOREIGN KEY (riwi_id_movement_type) REFERENCES public.riwi_movement_type(riwi_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 3335 (class 2606 OID 16525)
-- Name: riwi_movement riwi_movement_riwi_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_movement
    ADD CONSTRAINT riwi_movement_riwi_order_fk FOREIGN KEY (riwi_id_order) REFERENCES public.riwi_order(riwi_id);


--
-- TOC entry 3336 (class 2606 OID 16515)
-- Name: riwi_movement riwi_movement_riwi_product_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_movement
    ADD CONSTRAINT riwi_movement_riwi_product_fk FOREIGN KEY (riwi_id_product) REFERENCES public.riwi_product(riwi_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 3337 (class 2606 OID 16510)
-- Name: riwi_movement riwi_movement_riwi_warehouse_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_movement
    ADD CONSTRAINT riwi_movement_riwi_warehouse_fk FOREIGN KEY (riwi_id_warehouse) REFERENCES public.riwi_warehouse(riwi_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 3333 (class 2606 OID 16493)
-- Name: riwi_order riwi_order_riwi_supplier_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_order
    ADD CONSTRAINT riwi_order_riwi_supplier_fk FOREIGN KEY (riwi_id_supplier) REFERENCES public.riwi_supplier(riwi_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 3332 (class 2606 OID 16460)
-- Name: riwi_product riwi_product_riwi_category_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_product
    ADD CONSTRAINT riwi_product_riwi_category_fk FOREIGN KEY (riwi_id_category) REFERENCES public.riwi_category(riwi_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 3331 (class 2606 OID 16441)
-- Name: riwi_supplier riwi_supplier_riwi_city_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_supplier
    ADD CONSTRAINT riwi_supplier_riwi_city_fk FOREIGN KEY (riwi_id_city) REFERENCES public.riwi_city(riwi_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 3330 (class 2606 OID 16446)
-- Name: riwi_warehouse riwi_warehouse_riwi_city_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.riwi_warehouse
    ADD CONSTRAINT riwi_warehouse_riwi_city_fk FOREIGN KEY (riwi_id_city) REFERENCES public.riwi_city(riwi_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


-- Completed on 2026-07-06 10:46:25 -05

--
-- PostgreSQL database dump complete
--

\unrestrict UtHro0q9ygj82z9IOMPlPVcGJik0eM772Zod1Bids7py4Z6oQMsbkb2nBYul0KT

