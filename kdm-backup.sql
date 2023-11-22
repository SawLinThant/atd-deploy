--
-- PostgreSQL database dump
--

-- Dumped from database version 13.13
-- Dumped by pg_dump version 13.13

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

--
-- Name: gender_enum; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.gender_enum AS ENUM (
    'male',
    'female'
);


ALTER TYPE public.gender_enum OWNER TO postgres;

--
-- Name: result_type_enum; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.result_type_enum AS ENUM (
    'text',
    'number'
);


ALTER TYPE public.result_type_enum OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: lab_report; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lab_report (
    id integer NOT NULL,
    created_time timestamp with time zone DEFAULT now(),
    updated_time timestamp with time zone,
    patient_id integer NOT NULL,
    doctor_name character varying,
    sample_type character varying,
    patient_type character varying,
    test_date date,
    created_user_id integer,
    updated_user_id integer,
    sample_id integer
);


ALTER TABLE public.lab_report OWNER TO postgres;

--
-- Name: lab_report_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lab_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lab_report_id_seq OWNER TO postgres;

--
-- Name: lab_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lab_report_id_seq OWNED BY public.lab_report.id;


--
-- Name: lab_result; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lab_result (
    id integer NOT NULL,
    created_time timestamp with time zone DEFAULT now(),
    updated_time timestamp with time zone,
    lab_report_id integer NOT NULL,
    parameter_name character varying,
    test_name character varying,
    parameter_id integer,
    unit character varying,
    result character varying,
    upper_limit double precision,
    lower_limit double precision,
    remark character varying,
    created_user_id integer,
    updated_user_id integer,
    test_id integer
);


ALTER TABLE public.lab_result OWNER TO postgres;

--
-- Name: lab_result_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lab_result_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lab_result_id_seq OWNER TO postgres;

--
-- Name: lab_result_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lab_result_id_seq OWNED BY public.lab_result.id;


--
-- Name: lab_test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lab_test (
    id integer NOT NULL,
    created_time timestamp with time zone DEFAULT now(),
    updated_time timestamp with time zone,
    name character varying NOT NULL,
    test_category_id integer,
    created_user_id integer,
    updated_user_id integer,
    test_category_name character varying,
    show_in_request_form boolean DEFAULT false,
    show_in_report_form boolean DEFAULT false
);


ALTER TABLE public.lab_test OWNER TO postgres;

--
-- Name: lab_test_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lab_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lab_test_id_seq OWNER TO postgres;

--
-- Name: lab_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lab_test_id_seq OWNED BY public.lab_test.id;


--
-- Name: parameter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parameter (
    id integer NOT NULL,
    created_time timestamp with time zone DEFAULT now(),
    updated_time timestamp with time zone,
    name character varying NOT NULL,
    unit character varying NOT NULL,
    lab_test_id integer,
    result_type public.result_type_enum,
    result_default_text json,
    created_user_id integer,
    updated_user_id integer
);


ALTER TABLE public.parameter OWNER TO postgres;

--
-- Name: parameter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parameter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parameter_id_seq OWNER TO postgres;

--
-- Name: parameter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parameter_id_seq OWNED BY public.parameter.id;


--
-- Name: parameter_range; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parameter_range (
    id integer NOT NULL,
    created_time timestamp with time zone DEFAULT now(),
    updated_time timestamp with time zone,
    parameter_id integer,
    upper_limit double precision,
    lower_limit double precision,
    low_remark character varying,
    high_remark character varying,
    normal_remark character varying,
    created_user_id integer,
    updated_user_id integer
);


ALTER TABLE public.parameter_range OWNER TO postgres;

--
-- Name: parameter_range_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parameter_range_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parameter_range_id_seq OWNER TO postgres;

--
-- Name: parameter_range_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parameter_range_id_seq OWNED BY public.parameter_range.id;


--
-- Name: patient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patient (
    id integer NOT NULL,
    created_time timestamp with time zone DEFAULT now(),
    updated_time timestamp with time zone,
    name character varying NOT NULL,
    gender public.gender_enum NOT NULL,
    date_of_birth date,
    age character varying NOT NULL,
    address character varying NOT NULL,
    contact_details character varying NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    patient_id character varying
);


ALTER TABLE public.patient OWNER TO postgres;

--
-- Name: patient_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patient_id_seq OWNER TO postgres;

--
-- Name: patient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patient_id_seq OWNED BY public.patient.id;


--
-- Name: test_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_category (
    id integer NOT NULL,
    created_time timestamp with time zone DEFAULT now(),
    updated_time timestamp with time zone,
    name character varying NOT NULL,
    created_user_id integer,
    updated_user_id integer
);


ALTER TABLE public.test_category OWNER TO postgres;

--
-- Name: test_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.test_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_category_id_seq OWNER TO postgres;

--
-- Name: test_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.test_category_id_seq OWNED BY public.test_category.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL,
    role character varying NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: lab_report id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lab_report ALTER COLUMN id SET DEFAULT nextval('public.lab_report_id_seq'::regclass);


--
-- Name: lab_result id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lab_result ALTER COLUMN id SET DEFAULT nextval('public.lab_result_id_seq'::regclass);


--
-- Name: lab_test id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lab_test ALTER COLUMN id SET DEFAULT nextval('public.lab_test_id_seq'::regclass);


--
-- Name: parameter id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameter ALTER COLUMN id SET DEFAULT nextval('public.parameter_id_seq'::regclass);


--
-- Name: parameter_range id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameter_range ALTER COLUMN id SET DEFAULT nextval('public.parameter_range_id_seq'::regclass);


--
-- Name: patient id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patient ALTER COLUMN id SET DEFAULT nextval('public.patient_id_seq'::regclass);


--
-- Name: test_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_category ALTER COLUMN id SET DEFAULT nextval('public.test_category_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
bce82a304e66
\.


--
-- Data for Name: lab_report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lab_report (id, created_time, updated_time, patient_id, doctor_name, sample_type, patient_type, test_date, created_user_id, updated_user_id, sample_id) FROM stdin;
1	2023-10-14 12:09:49.192083+00	\N	1	kim	324	male	\N	1	1	2432
\.


--
-- Data for Name: lab_result; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lab_result (id, created_time, updated_time, lab_report_id, parameter_name, test_name, parameter_id, unit, result, upper_limit, lower_limit, remark, created_user_id, updated_user_id, test_id) FROM stdin;
2	2023-10-14 12:36:30.55856+00	\N	1	Saw Lin Thant	adf	1	adf	adf	\N	\N	ewr	1	1	1
3	2023-10-22 16:30:21.677723+00	\N	1	Saw Lin Thant	adf	1	adf	adf	\N	\N		1	1	1
4	2023-10-22 16:30:26.316603+00	\N	1	Saw Lin Thant	adf	1	adf	adf	\N	\N		1	1	1
16	2023-10-22 17:31:38.548205+00	\N	1	Saw Lin Thant	adf	1	adf	adf	\N	\N		1	1	1
17	2023-10-22 17:31:41.994986+00	\N	1	Saw Lin Thant	adf	1	adf	adf	\N	\N		1	1	1
18	2023-10-22 17:31:45.055609+00	\N	1	Saw Lin Thant	adf	1	adf	adf	\N	\N		1	1	1
19	2023-10-22 17:31:48.007284+00	\N	1	Saw Lin Thant	adf	1	adf	adf	\N	\N		1	1	1
20	2023-10-22 17:31:50.632651+00	\N	1	Saw Lin Thant	adf	1	adf	adf	\N	\N		1	1	1
21	2023-10-22 17:31:54.568392+00	\N	1	Saw Lin Thant	adf	1	adf	adf	\N	\N		1	1	1
22	2023-11-03 13:08:10.692029+00	\N	1	Saw Lin Thant	adf	1	adf	adf	\N	\N	s	1	1	1
23	2023-11-03 13:08:23.029523+00	\N	1	Saw Lin Thant	adf	1	adf	adf	\N	\N	d	1	1	1
24	2023-11-03 13:08:28.449917+00	\N	1	Saw Lin Thant	adf	1	adf	ds	\N	\N	d	1	1	1
25	2023-11-03 13:08:57.146604+00	\N	1	Saw Lin Thant	adf	1	adf	adf	\N	\N		1	1	1
26	2023-11-05 11:10:52.942841+00	\N	1	Saw Lin Thant	adf	1	adf	adf	\N	\N		1	1	1
\.


--
-- Data for Name: lab_test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lab_test (id, created_time, updated_time, name, test_category_id, created_user_id, updated_user_id, test_category_name, show_in_request_form, show_in_report_form) FROM stdin;
1	2023-10-14 12:12:17.054534+00	\N	adf	1	1	1	blood	f	f
\.


--
-- Data for Name: parameter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parameter (id, created_time, updated_time, name, unit, lab_test_id, result_type, result_default_text, created_user_id, updated_user_id) FROM stdin;
1	2023-10-14 12:12:35.244484+00	\N	Saw Lin Thant	adf	1	text	["adf"]	1	1
\.


--
-- Data for Name: parameter_range; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parameter_range (id, created_time, updated_time, parameter_id, upper_limit, lower_limit, low_remark, high_remark, normal_remark, created_user_id, updated_user_id) FROM stdin;
\.


--
-- Data for Name: patient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patient (id, created_time, updated_time, name, gender, date_of_birth, age, address, contact_details, created_user_id, updated_user_id, patient_id) FROM stdin;
1	2023-10-14 12:09:08.947465+00	\N	Saw Lin Thant	male	\N	22	Venue36	12345	1	1	123
2	2023-10-14 12:12:09.728202+00	\N	df	male	\N	22	adf	asf	1	1	saf
\.


--
-- Data for Name: test_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_category (id, created_time, updated_time, name, created_user_id, updated_user_id) FROM stdin;
1	2023-10-14 12:09:23.975037+00	\N	blood	1	1
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, username, password, role) FROM stdin;
1	Andrew	$2b$12$wfBcTXi8x1Hj74UwOfcj0OBnknEDNdAHDIjMCaDF.RuHP8HB9U9by	Admin
\.


--
-- Name: lab_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lab_report_id_seq', 1, true);


--
-- Name: lab_result_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lab_result_id_seq', 26, true);


--
-- Name: lab_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lab_test_id_seq', 1, true);


--
-- Name: parameter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parameter_id_seq', 1, true);


--
-- Name: parameter_range_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parameter_range_id_seq', 1, false);


--
-- Name: patient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patient_id_seq', 2, true);


--
-- Name: test_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_category_id_seq', 1, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 1, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: lab_report lab_report_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lab_report
    ADD CONSTRAINT lab_report_pkey PRIMARY KEY (id);


--
-- Name: lab_result lab_result_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lab_result
    ADD CONSTRAINT lab_result_pkey PRIMARY KEY (id);


--
-- Name: lab_test lab_test_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lab_test
    ADD CONSTRAINT lab_test_pkey PRIMARY KEY (id);


--
-- Name: parameter parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameter
    ADD CONSTRAINT parameter_pkey PRIMARY KEY (id);


--
-- Name: parameter_range parameter_range_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameter_range
    ADD CONSTRAINT parameter_range_pkey PRIMARY KEY (id);


--
-- Name: patient patient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (id);


--
-- Name: test_category test_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_category
    ADD CONSTRAINT test_category_pkey PRIMARY KEY (id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: ix_lab_report_created_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_lab_report_created_user_id ON public.lab_report USING btree (created_user_id);


--
-- Name: ix_lab_report_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_lab_report_id ON public.lab_report USING btree (id);


--
-- Name: ix_lab_report_patient_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_lab_report_patient_id ON public.lab_report USING btree (patient_id);


--
-- Name: ix_lab_report_updated_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_lab_report_updated_user_id ON public.lab_report USING btree (updated_user_id);


--
-- Name: ix_lab_result_created_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_lab_result_created_user_id ON public.lab_result USING btree (created_user_id);


--
-- Name: ix_lab_result_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_lab_result_id ON public.lab_result USING btree (id);


--
-- Name: ix_lab_result_parameter_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_lab_result_parameter_id ON public.lab_result USING btree (parameter_id);


--
-- Name: ix_lab_result_test_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_lab_result_test_id ON public.lab_result USING btree (test_id);


--
-- Name: ix_lab_result_updated_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_lab_result_updated_user_id ON public.lab_result USING btree (updated_user_id);


--
-- Name: ix_lab_test_created_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_lab_test_created_user_id ON public.lab_test USING btree (created_user_id);


--
-- Name: ix_lab_test_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_lab_test_id ON public.lab_test USING btree (id);


--
-- Name: ix_lab_test_test_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_lab_test_test_category_id ON public.lab_test USING btree (test_category_id);


--
-- Name: ix_lab_test_updated_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_lab_test_updated_user_id ON public.lab_test USING btree (updated_user_id);


--
-- Name: ix_parameter_created_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_parameter_created_user_id ON public.parameter USING btree (created_user_id);


--
-- Name: ix_parameter_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_parameter_id ON public.parameter USING btree (id);


--
-- Name: ix_parameter_range_created_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_parameter_range_created_user_id ON public.parameter_range USING btree (created_user_id);


--
-- Name: ix_parameter_range_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_parameter_range_id ON public.parameter_range USING btree (id);


--
-- Name: ix_parameter_range_updated_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_parameter_range_updated_user_id ON public.parameter_range USING btree (updated_user_id);


--
-- Name: ix_parameter_updated_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_parameter_updated_user_id ON public.parameter USING btree (updated_user_id);


--
-- Name: ix_patient_created_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_patient_created_user_id ON public.patient USING btree (created_user_id);


--
-- Name: ix_patient_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_patient_id ON public.patient USING btree (id);


--
-- Name: ix_patient_updated_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_patient_updated_user_id ON public.patient USING btree (updated_user_id);


--
-- Name: ix_test_category_created_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_test_category_created_user_id ON public.test_category USING btree (created_user_id);


--
-- Name: ix_test_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_test_category_id ON public.test_category USING btree (id);


--
-- Name: ix_test_category_updated_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_test_category_updated_user_id ON public.test_category USING btree (updated_user_id);


--
-- Name: ix_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_user_id ON public."user" USING btree (id);


--
-- Name: lab_result lab_result_lab_report_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lab_result
    ADD CONSTRAINT lab_result_lab_report_id_fkey FOREIGN KEY (lab_report_id) REFERENCES public.lab_report(id) ON DELETE CASCADE;


--
-- Name: parameter parameter_lab_test_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameter
    ADD CONSTRAINT parameter_lab_test_id_fkey FOREIGN KEY (lab_test_id) REFERENCES public.lab_test(id) ON DELETE CASCADE;


--
-- Name: parameter_range parameter_range_parameter_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameter_range
    ADD CONSTRAINT parameter_range_parameter_id_fkey FOREIGN KEY (parameter_id) REFERENCES public.parameter(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

