CREATE DATABASE bd_dylan_gamero_garabato WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';

CREATE TABLE public.riwi_category (
    riwi_id integer NOT NULL,
    riwi_name character varying NOT NULL
);

CREATE SEQUENCE public.riwi_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.riwi_category_id_seq OWNED BY public.riwi_category.riwi_id;

CREATE TABLE public.riwi_city (
    riwi_id integer NOT NULL,
    riwi_name character varying NOT NULL
);

CREATE SEQUENCE public.riwi_city_riwi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.riwi_city_riwi_id_seq OWNED BY public.riwi_city.riwi_id;

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

CREATE SEQUENCE public.riwi_movement_riwi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.riwi_movement_riwi_id_seq OWNED BY public.riwi_movement.riwi_id;

CREATE TABLE public.riwi_movement_type (
    riwi_id integer NOT NULL,
    riwi_name character varying NOT NULL
);

CREATE SEQUENCE public.riwi_movement_type_riwi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.riwi_movement_type_riwi_id_seq OWNED BY public.riwi_movement_type.riwi_id;

CREATE TABLE public.riwi_order (
    riwi_id integer NOT NULL,
    riwi_date timestamp without time zone NOT NULL,
    riwi_id_supplier integer NOT NULL
);

CREATE SEQUENCE public.riwi_order_riwi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.riwi_order_riwi_id_seq OWNED BY public.riwi_order.riwi_id;

CREATE TABLE public.riwi_product (
    riwi_id integer NOT NULL,
    riwi_name character varying NOT NULL,
    riwi_id_category integer NOT NULL
);

CREATE SEQUENCE public.riwi_product_riwi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.riwi_product_riwi_id_seq OWNED BY public.riwi_product.riwi_id;

CREATE TABLE public.riwi_supplier (
    riwi_id integer NOT NULL,
    riwi_name character varying NOT NULL,
    riwi_id_city integer NOT NULL
);

CREATE SEQUENCE public.riwi_supplier_riwi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.riwi_supplier_riwi_id_seq OWNED BY public.riwi_supplier.riwi_id;

CREATE TABLE public.riwi_warehouse (
    riwi_id integer NOT NULL,
    riwi_name character varying NOT NULL,
    riwi_id_city integer NOT NULL
);

CREATE SEQUENCE public.riwi_ware
ALTER TABLE ONLY public.riwi_supplier
    ADD CONSTRAINT riwi_supplier_pk PRIMARY KEY (riwi_id);

ALTER TABLE ONLY public.riwi_warehouse
house_riwi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE ONLY public.riwi_supplier
    ADD CONSTRAINT riwi_supplier_pk PRIMARY KEY (riwi_id);

ALTER TABLE ONLY public.riwi_warehouse

ALTER SEQUENCE public.riwi_warehouse_riwi_id_seq OWNED BY public.riwi_warehouse.riwi_id;

ALTER TABLE ONLY public.riwi_category ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_category_id_seq'::regclass);

ALTER TABLE ONLY public.riwi_city ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_city_riwi_id_seq'::regclass);

ALTER TABLE ONLY public.riwi_movement ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_movement_riwi_id_seq'::regclass);

ALTER TABLE ONLY public.riwi_movement_type ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_movement_type_riwi_id_seq'::regclass);

ALTER TABLE ONLY public.riwi_order ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_order_riwi_id_seq'::regclass);

ALTER TABLE ONLY public.riwi_product ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_product_riwi_id_seq'::regclass);

ALTER TABLE ONLY public.riwi_supplier ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_supplier_riwi_id_seq'::regclass);

ALTER TABLE ONLY public.riwi_warehouse ALTER COLUMN riwi_id SET DEFAULT nextval('public.riwi_warehouse_riwi_id_seq'::regclass);

INSERT INTO public.riwi_category VALUES (1, 'Consumible');
INSERT INTO public.riwi_category VALUES (2, 'Herramienta');
INSERT INTO public.riwi_category VALUES (3, 'Elementos Protección');
INSERT INTO public.riwi_category VALUES (4, 'EPP');

INSERT INTO public.riwi_city VALUES (1, 'Cartagena');
INSERT INTO public.riwi_city VALUES (2, 'Barranquilla');
INSERT INTO public.riwi_city VALUES (3, 'Santa Marta');

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

INSERT INTO public.riwi_movement_type VALUES (1, 'OUT');
INSERT INTO public.riwi_movement_type VALUES (2, 'IN');

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

INSERT INTO public.riwi_product VALUES (1, 'Casco Industrial', 4);
INSERT INTO public.riwi_product VALUES (2, 'Disco de Corte 4.5', 2);
INSERT INTO public.riwi_product VALUES (3, 'Guantes de Nitrilo', 3);
INSERT INTO public.riwi_product VALUES (4, 'Electrodo E6013', 1);
INSERT INTO public.riwi_product VALUES (5, 'Soldadura E6013', 1);

INSERT INTO public.riwi_supplier VALUES (1, 'Suministros Global S.A.S', 3);
INSERT INTO public.riwi_supplier VALUES (2, 'Aceros del Norte S.A.S', 1);
INSERT INTO public.riwi_supplier VALUES (3, 'Industriales S.A.S', 2);

INSERT INTO public.riwi_warehouse VALUES (1, 'Bodega Costa', 3);
INSERT INTO public.riwi_warehouse VALUES (2, 'Centro Logistico Norte', 1);
INSERT INTO public.riwi_warehouse VALUES (3, 'Bodega Central', 2);


SELECT pg_catalog.setval('public.riwi_category_id_seq', 4, true);

SELECT pg_catalog.setval('public.riwi_city_riwi_id_seq', 3, true);

SELECT pg_catalog.setval('public.riwi_movement_riwi_id_seq', 19, true);

SELECT pg_catalog.setval('public.riwi_movement_type_riwi_id_seq', 2, true);

SELECT pg_catalog.setval('public.riwi_order_riwi_id_seq', 23, true);

SELECT pg_catalog.setval('public.riwi_product_riwi_id_seq', 6, true);

SELECT pg_catalog.setval('public.riwi_supplier_riwi_id_seq', 3, true);

SELECT pg_catalog.setval('public.riwi_warehouse_riwi_id_seq', 3, true);

ALTER TABLE ONLY public.riwi_category
    ADD CONSTRAINT category_pk PRIMARY KEY (riwi_id);

ALTER TABLE ONLY public.riwi_category
    ADD CONSTRAINT category_unique UNIQUE (riwi_name);

ALTER TABLE ONLY public.riwi_city
    ADD CONSTRAINT riwi_city_pk PRIMARY KEY (riwi_id);

ALTER TABLE ONLY public.riwi_movement
    ADD CONSTRAINT riwi_movement_pk PRIMARY KEY (riwi_id);

ALTER TABLE ONLY public.riwi_movement_type
    ADD CONSTRAINT riwi_movement_type_pk PRIMARY KEY (riwi_id);

ALTER TABLE ONLY public.riwi_movement_type
    ADD CONSTRAINT riwi_movement_type_unique UNIQUE (riwi_name);

ALTER TABLE ONLY public.riwi_order
    ADD CONSTRAINT riwi_order_pk PRIMARY KEY (riwi_id);

ALTER TABLE ONLY public.riwi_product
    ADD CONSTRAINT riwi_product_pk PRIMARY KEY (riwi_id);

ALTER TABLE ONLY public.riwi_supplier
    ADD CONSTRAINT riwi_supplier_pk PRIMARY KEY (riwi_id);

ALTER TABLE ONLY public.riwi_warehouse
    ADD CONSTRAINT riwi_warehouse_pk PRIMARY KEY (riwi_id);

ALTER TABLE ONLY public.riwi_movement
    ADD CONSTRAINT riwi_movement_riwi_movement_type_fk FOREIGN KEY (riwi_id_movement_type) REFERENCES public.riwi_movement_type(riwi_id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE ONLY public.riwi_movement
    ADD CONSTRAINT riwi_movement_riwi_order_fk FOREIGN KEY (riwi_id_order) REFERENCES public.riwi_order(riwi_id);

ALTER TABLE ONLY public.riwi_movement
    ADD CONSTRAINT riwi_movement_riwi_product_fk FOREIGN KEY (riwi_id_product) REFERENCES public.riwi_product(riwi_id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE ONLY public.riwi_movement
    ADD CONSTRAINT riwi_movement_riwi_warehouse_fk FOREIGN KEY (riwi_id_warehouse) REFERENCES public.riwi_warehouse(riwi_id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE ONLY public.riwi_order
    ADD CONSTRAINT riwi_order_riwi_supplier_fk FOREIGN KEY (riwi_id_supplier) REFERENCES public.riwi_supplier(riwi_id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE ONLY public.riwi_product
    ADD CONSTRAINT riwi_product_riwi_category_fk FOREIGN KEY (riwi_id_category) REFERENCES public.riwi_category(riwi_id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE ONLY public.riwi_supplier
    ADD CONSTRAINT riwi_supplier_riwi_city_fk FOREIGN KEY (riwi_id_city) REFERENCES public.riwi_city(riwi_id) ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE ONLY public.riwi_warehouse
    ADD CONSTRAINT riwi_warehouse_riwi_city_fk FOREIGN KEY (riwi_id_city) REFERENCES public.riwi_city(riwi_id) ON UPDATE RESTRICT ON DELETE RESTRICT;