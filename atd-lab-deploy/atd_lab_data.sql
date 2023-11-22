--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.0

-- Started on 2022-08-15 12:37:26 +0630

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
-- TOC entry 4382 (class 0 OID 29036756)
-- Dependencies: 210
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: cfclinwdskmwnj
--

COPY public.alembic_version (version_num) FROM stdin;
05e7bcfb2ade
\.


--
-- TOC entry 4384 (class 0 OID 29036762)
-- Dependencies: 212
-- Data for Name: lab_report; Type: TABLE DATA; Schema: public; Owner: cfclinwdskmwnj
--

COPY public.lab_report (id, created_time, updated_time, patient_id, doctor_name, sample_type, patient_type, test_date, created_user_id, updated_user_id, sample_id) FROM stdin;
\.


--
-- TOC entry 4392 (class 0 OID 29036818)
-- Dependencies: 220
-- Data for Name: lab_result; Type: TABLE DATA; Schema: public; Owner: cfclinwdskmwnj
--

COPY public.lab_result (id, created_time, updated_time, lab_report_id, parameter_name, test_name, parameter_id, unit, result, upper_limit, lower_limit, remark, created_user_id, updated_user_id) FROM stdin;
\.


--
-- TOC entry 4394 (class 0 OID 29036837)
-- Dependencies: 222
-- Data for Name: lab_test; Type: TABLE DATA; Schema: public; Owner: cfclinwdskmwnj
--

COPY public.lab_test (id, created_time, updated_time, name, test_category_id, created_user_id, updated_user_id, test_category_name) FROM stdin;
1	2022-08-13 16:13:25.096559+00	\N	ABO Rh Grouping	1	2	2	Haematology
2	2022-08-13 16:14:17.417622+00	\N	Fasting Glucose	8	2	2	-
3	2022-08-13 16:16:14.247555+00	\N	Random Glucose	8	2	2	-
4	2022-08-13 16:18:29.361209+00	\N	Urea	2	2	2	Renal
5	2022-08-13 16:20:22.104601+00	\N	Sodium	2	2	2	Renal
6	2022-08-13 16:25:02.501464+00	\N	Potassium	2	2	2	Renal
7	2022-08-13 16:27:58.247653+00	\N	Chloride	2	2	2	Renal
8	2022-08-13 16:30:18.304816+00	\N	Bicarbonate	2	2	2	Renal
9	2022-08-13 16:43:34.095147+00	\N	Creatinine	2	2	2	Renal
10	2022-08-13 16:50:06.239233+00	\N	eGFR	2	2	2	Renal
11	2022-08-13 16:51:00.407973+00	\N	Uric Acid	2	2	2	Renal
12	2022-08-15 01:56:13.722494+00	\N	Calcium	2	2	2	Renal
13	2022-08-15 01:58:02.117297+00	\N	Phosphate	2	2	2	Renal
14	2022-08-15 01:58:43.726816+00	\N	Albumin	2	2	2	Renal
15	2022-08-15 02:00:01.015678+00	\N	Total bilirubin	3	2	2	Liver
16	2022-08-15 02:01:45.221411+00	\N	Direct bilirubin	3	2	2	Liver
17	2022-08-15 02:02:55.36013+00	\N	Indirect bilirubin	3	2	2	Liver
18	2022-08-15 02:03:38.062165+00	\N	Alkaline Phosphatase	3	2	2	Liver
19	2022-08-15 02:04:58.104399+00	\N	ALT	3	2	2	Liver
20	2022-08-15 02:06:41.506362+00	\N	AST	3	2	2	Liver
21	2022-08-15 02:08:04.015517+00	\N	GGT	3	2	2	Liver
22	2022-08-15 02:09:51.472068+00	\N	Albumin	3	2	2	Liver
23	2022-08-15 02:10:59.797508+00	\N	Globulin	3	2	2	Liver
25	2022-08-15 02:14:01.138892+00	2022-08-15 02:14:15.35026+00	Triglycerids	4	2	2	Lipid
24	2022-08-15 02:12:40.641728+00	2022-08-15 02:15:10.263729+00	Total Cholestrol	4	2	2	Lipid
26	2022-08-15 02:15:38.932778+00	\N	Chol HDL	4	2	2	Lipid
27	2022-08-15 02:16:48.916664+00	\N	Chol LDL	4	2	2	Lipid
28	2022-08-15 02:18:11.891662+00	\N	Total Protein	5	2	2	Total & Differential Protein
29	2022-08-15 02:19:17.129767+00	\N	Albumin	5	2	2	Total & Differential Protein
30	2022-08-15 02:20:11.177+00	\N	Globulin	5	2	2	Total & Differential Protein
31	2022-08-15 02:21:20.630365+00	\N	Amylase	8	2	2	-
32	2022-08-15 02:22:25.368288+00	\N	Free T3	6	2	2	Thyroid Function Test
33	2022-08-15 02:23:38.508874+00	\N	Free T4	6	2	2	Thyroid Function Test
34	2022-08-15 02:25:20.275956+00	\N	Total T3	6	2	2	Thyroid Function Test
35	2022-08-15 02:25:45.476714+00	\N	Total T4	6	2	2	Thyroid Function Test
36	2022-08-15 02:26:42.679666+00	\N	TSH	6	2	2	Thyroid Function Test
37	2022-08-15 02:28:05.607557+00	\N	AFP	8	2	2	-
38	2022-08-15 02:29:06.262582+00	\N	CEA	8	2	2	-
39	2022-08-15 02:29:44.435778+00	\N	Total PSA	8	2	2	-
40	2022-08-15 02:30:14.147361+00	\N	Free PSA	8	2	2	-
41	2022-08-15 02:30:41.373155+00	\N	CA-125	8	2	2	-
42	2022-08-15 02:31:07.718361+00	\N	CA-153	8	2	2	-
43	2022-08-15 02:34:47.382453+00	\N	Ca-199	8	2	2	-
44	2022-08-15 02:35:20.166515+00	\N	Beta HCG	8	2	2	-
45	2022-08-15 02:36:07.885338+00	\N	Ferritin	8	2	2	-
46	2022-08-15 02:38:17.334463+00	\N	HbA1C	8	2	2	-
47	2022-08-15 02:39:12.079292+00	\N	ASO(Quanti)	8	2	2	-
48	2022-08-15 02:39:52.42972+00	\N	RF(Quanti)	8	2	2	-
49	2022-08-15 02:40:48.936319+00	\N	hs-CRP	8	2	2	-
50	2022-08-15 02:41:34.99303+00	\N	D-Dimer	8	2	2	-
51	2022-08-15 02:42:52.797117+00	\N	HBsAg(Quali)	8	2	2	-
52	2022-08-15 02:43:24.101727+00	\N	HCVAb(Quali)	8	2	2	-
53	2022-08-15 02:43:52.259858+00	\N	HIVAb(Quali)	8	2	2	-
54	2022-08-15 02:44:22.038489+00	\N	Syphillis	8	2	2	-
55	2022-08-15 02:44:57.239915+00	\N	Q.Agglutinin Examination	7	2	2	Widal Test
56	2022-08-15 02:46:46.142196+00	\N	H.Agglutinin Examination	7	2	2	Widal Test
\.


--
-- TOC entry 4396 (class 0 OID 29036860)
-- Dependencies: 224
-- Data for Name: parameter; Type: TABLE DATA; Schema: public; Owner: cfclinwdskmwnj
--

COPY public.parameter (id, created_time, updated_time, name, unit, lab_test_id, result_type, result_default_text, created_user_id, updated_user_id) FROM stdin;
1	2022-08-13 16:13:46.527468+00	\N	ABO Rh Grouping		1	text	[]	2	2
2	2022-08-13 16:15:16.888861+00	\N	Fasting Glucose	mg/dl	2	number	[]	2	2
3	2022-08-13 16:17:30.280314+00	\N	Random Glucose	mg/dl	3	number	[]	2	2
4	2022-08-13 16:19:29.011674+00	\N	Urea	mmol/L	4	number	[]	2	2
5	2022-08-13 16:22:24.977981+00	\N	Sodium	mmol/L	5	number	[]	2	2
6	2022-08-13 16:26:40.012516+00	\N	Potassium	mmol/L	6	number	[]	2	2
7	2022-08-13 16:28:58.463707+00	\N	Chloride	mmol/L	7	number	[]	2	2
9	2022-08-13 16:32:11.126374+00	\N	Bicarbonate	mmol/L	8	number	[]	2	2
10	2022-08-13 16:49:39.569306+00	\N	Creatinine	mg/dl	9	number	[]	2	2
11	2022-08-13 16:50:25.441077+00	\N	eGFR		10	text	[]	2	2
12	2022-08-15 01:57:41.020029+00	\N	Calcium		12	text	[]	2	2
13	2022-08-15 01:58:19.966545+00	\N	Phosphate		13	text	[]	2	2
14	2022-08-15 01:59:42.03537+00	\N	Albumin	g/l	14	number	[]	2	2
15	2022-08-15 02:01:11.776136+00	\N	Total bilirubin	umol/L	15	number	[]	2	2
16	2022-08-15 02:02:34.211475+00	\N	Direct bilirubin	umol/L	16	number	[]	2	2
17	2022-08-15 02:03:17.363359+00	\N	Indirect bilirubin		17	text	[]	2	2
18	2022-08-15 02:04:23.297163+00	\N	Alkaline Phosphatase	U/L	18	number	[]	2	2
19	2022-08-15 02:06:16.73658+00	\N	ALT	U/L	19	number	[]	2	2
20	2022-08-15 02:07:41.347733+00	\N	AST	U/L	20	number	[]	2	2
21	2022-08-15 02:09:17.918107+00	\N	GGT	U/L	21	number	[]	2	2
22	2022-08-15 02:10:38.675359+00	\N	Albumin	g/l	22	number	[]	2	2
23	2022-08-15 02:12:22.108967+00	\N	Globulin	g/l	23	number	[]	2	2
24	2022-08-15 02:13:39.571958+00	\N	Total Cholestrol	mg/dl	24	number	[]	2	2
25	2022-08-15 02:14:53.416417+00	\N	Triglycerids	mg/dl	25	number	[]	2	2
26	2022-08-15 02:16:22.64482+00	\N	Chol HDL	mg/dl	26	number	[]	2	2
27	2022-08-15 02:17:44.061009+00	\N	Chol LDL	mg/dl	27	number	[]	2	2
28	2022-08-15 02:18:52.498283+00	\N	Total Protein	g/l	28	number	[]	2	2
29	2022-08-15 02:19:54.897475+00	\N	Albumin	g/l	29	number	[]	2	2
30	2022-08-15 02:20:53.070688+00	\N	Globulin	g/l	30	number	[]	2	2
31	2022-08-15 02:22:00.631862+00	\N	Amylase	U/L	31	number	[]	2	2
32	2022-08-15 02:23:13.804003+00	\N	Free T3	pmol/L	32	number	[]	2	2
33	2022-08-15 02:25:30.370413+00	\N	Total T3		34	text	[]	2	2
34	2022-08-15 02:25:58.901382+00	\N	Total T4		35	text	[]	2	2
35	2022-08-15 02:27:36.385692+00	\N	TSH	mIU/L	36	number	[]	2	2
36	2022-08-15 02:28:41.57062+00	\N	AFP	IU/ml	37	number	[]	2	2
37	2022-08-15 02:29:16.217178+00	\N	CEA		38	text	[]	2	2
38	2022-08-15 02:29:54.978275+00	\N	Total PSA		39	text	[]	2	2
39	2022-08-15 02:30:24.718019+00	\N	Free PSA		40	text	[]	2	2
40	2022-08-15 02:30:51.105373+00	\N	CA-125		41	text	[]	2	2
41	2022-08-15 02:31:18.277006+00	\N	CA-153		42	text	[]	2	2
42	2022-08-15 02:34:58.790122+00	\N	Ca-199		43	text	[]	2	2
43	2022-08-15 02:35:46.886521+00	\N	Beta HCG		44	text	[]	2	2
44	2022-08-15 02:37:44.20593+00	\N	Ferritin	ng/ml	45	number	[]	2	2
45	2022-08-15 02:38:50.973851+00	\N	HbA1C	%	46	number	[]	2	2
46	2022-08-15 02:39:20.919262+00	\N	ASO(Quanti)		47	text	[]	2	2
47	2022-08-15 02:40:26.26095+00	\N	RF(Quanti)	IU/ml	48	number	[]	2	2
48	2022-08-15 02:41:17.886907+00	\N	hs-CRP	mg/dl	49	number	[]	2	2
49	2022-08-15 02:41:43.963462+00	\N	D-Dimer		50	text	[]	2	2
50	2022-08-15 02:43:04.665844+00	\N	HBsAg(Quali)		51	text	[]	2	2
51	2022-08-15 02:43:34.488582+00	\N	HCVAb(Quali)		52	text	[]	2	2
52	2022-08-15 02:44:04.404653+00	\N	HIVAb(Quali)		53	text	[]	2	2
53	2022-08-15 02:44:32.855693+00	\N	Syphillis		54	text	[]	2	2
54	2022-08-15 02:45:42.385158+00	\N	S.typhi (O-Ag)		55	text	["Negative From 1/40 dilution"]	2	2
55	2022-08-15 02:46:02.117841+00	\N	S.para typhi A (O-Ag)		55	text	["Negative From 1/40 dilution"]	2	2
56	2022-08-15 02:46:26.559538+00	\N	S.Para typhi B (O-Ag)		55	text	["Negative From 1/40 dilution"]	2	2
57	2022-08-15 02:47:27.363989+00	\N	S.typhi (H-Ag)		56	text	["Negative From 1/40 dilution"]	2	2
58	2022-08-15 02:47:57.099853+00	\N	S.Para typhi A (H-Ag)		56	text	["Negative From 1/40 dilution"]	2	2
59	2022-08-15 02:48:23.657226+00	\N	S.Para typhi B (H-Ag)		56	text	["Negative From 1/40 dilution"]	2	2
\.


--
-- TOC entry 4398 (class 0 OID 29036878)
-- Dependencies: 226
-- Data for Name: parameter_range; Type: TABLE DATA; Schema: public; Owner: cfclinwdskmwnj
--

COPY public.parameter_range (id, created_time, updated_time, parameter_id, upper_limit, lower_limit, low_remark, high_remark, normal_remark, created_user_id, updated_user_id) FROM stdin;
1	2022-08-13 16:15:16.888861+00	\N	2	110	65	Low	High	Normal	2	2
2	2022-08-13 16:17:30.280314+00	\N	3	180	75	Low	High	Normal	2	2
3	2022-08-13 16:19:29.011674+00	\N	4	7.5	2.5	Low	High	Normal	2	2
4	2022-08-13 16:22:24.977981+00	\N	5	148	135	Low	High	Normal 	2	2
5	2022-08-13 16:26:40.012516+00	\N	6	5.3	3.5	Low	High	Normal	2	2
6	2022-08-13 16:28:58.463707+00	\N	7	107	98	Low	High	Normal	2	2
7	2022-08-13 16:32:11.126374+00	\N	9	29	22	Low	High	Normal	2	2
8	2022-08-13 16:49:39.569306+00	\N	10	1	0.5	Low	High	Normal	2	2
9	2022-08-13 16:49:39.569306+00	\N	10	1.3	0.7	Low	High	Normal	2	2
10	2022-08-15 01:59:42.03537+00	\N	14	55	37	Low 	High	Normal	2	2
11	2022-08-15 02:01:11.776136+00	\N	15	21	0		High	Normal	2	2
12	2022-08-15 02:02:34.211475+00	\N	16	5.13	0		High	Normal	2	2
13	2022-08-15 02:04:23.297163+00	\N	18	129	35	Low	High	Normal	2	2
14	2022-08-15 02:06:16.73658+00	\N	19	33	0		High	Normal	2	2
15	2022-08-15 02:06:16.73658+00	\N	19	41	0		High	Normal	2	2
16	2022-08-15 02:07:41.347733+00	\N	20	32	0		High	Normal	2	2
17	2022-08-15 02:07:41.347733+00	\N	20	40	0		High	Normal	2	2
18	2022-08-15 02:09:17.918107+00	\N	21	36	5	Low	High	Normal	2	2
19	2022-08-15 02:09:17.918107+00	\N	21	61	8	Low	High	Normal	2	2
20	2022-08-15 02:10:38.675359+00	\N	22	55	31	Low	High	Normal	2	2
21	2022-08-15 02:12:22.108967+00	\N	23	35	20	Low	High	Normal	2	2
22	2022-08-15 02:13:39.571958+00	\N	24	200	0		High	Normal	2	2
23	2022-08-15 02:14:53.416417+00	\N	25	185	35		High	Normal	2	2
24	2022-08-15 02:16:22.64482+00	\N	26	65	35	Low	High	Normal	2	2
25	2022-08-15 02:17:44.061009+00	\N	27	100	0		High	Normal	2	2
26	2022-08-15 02:18:52.498283+00	\N	28	83	60	Low	High	Normal	2	2
27	2022-08-15 02:19:54.897475+00	\N	29	55	37	Low	High	Normal	2	2
28	2022-08-15 02:20:53.070688+00	\N	30	35	20	Low	High	Normal	2	2
29	2022-08-15 02:22:00.631862+00	\N	31	96	0		High	Normal	2	2
30	2022-08-15 02:23:13.804003+00	\N	32	7.1	2.8	Low	High	Normal	2	2
31	2022-08-15 02:27:36.385692+00	\N	35	4.2	0.3	Low	High	Normal	2	2
32	2022-08-15 02:28:41.57062+00	\N	36	6	0		High	Normal	2	2
33	2022-08-15 02:37:44.20593+00	\N	44	150	12	Low	High	Normal	2	2
34	2022-08-15 02:37:44.20593+00	\N	44	200	15	Low	High	Normal	2	2
35	2022-08-15 02:38:50.973851+00	\N	45	6.5	4	Low	High	Normal	2	2
36	2022-08-15 02:40:26.26095+00	\N	47	14	0		High	Normal	2	2
37	2022-08-15 02:41:17.886907+00	\N	48	5	0		High	Normal	2	2
38	2022-08-15 02:42:29.803771+00	\N	49	0.5	0		High	Normal	2	2
\.


--
-- TOC entry 4386 (class 0 OID 29036782)
-- Dependencies: 214
-- Data for Name: patient; Type: TABLE DATA; Schema: public; Owner: cfclinwdskmwnj
--

COPY public.patient (id, created_time, updated_time, name, gender, date_of_birth, age, address, contact_details, created_user_id, updated_user_id) FROM stdin;
\.


--
-- TOC entry 4388 (class 0 OID 29036795)
-- Dependencies: 216
-- Data for Name: test_category; Type: TABLE DATA; Schema: public; Owner: cfclinwdskmwnj
--

COPY public.test_category (id, created_time, updated_time, name, created_user_id, updated_user_id) FROM stdin;
1	2022-08-13 15:53:56.866863+00	\N	Haematology	2	2
2	2022-08-13 15:54:13.649644+00	\N	Renal	2	2
3	2022-08-13 15:54:48.909669+00	\N	Liver	2	2
4	2022-08-13 15:54:59.007496+00	\N	Lipid	2	2
5	2022-08-13 15:55:20.350749+00	2022-08-13 15:56:04.232993+00	Total & Differential Protein	2	2
6	2022-08-13 15:56:58.449273+00	\N	Thyroid Function Test	2	2
7	2022-08-13 15:57:50.281378+00	\N	Widal Test	2	2
8	2022-08-13 16:02:43.905644+00	\N	-	2	2
\.


--
-- TOC entry 4390 (class 0 OID 29036808)
-- Dependencies: 218
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: cfclinwdskmwnj
--

COPY public."user" (id, username, password, role) FROM stdin;
1	string	$2b$12$dObAnmP8vyfYb7nO5zeK6u4Ao.t5esJ21wXl5FG.S..MN2.tMGgN2	Admin
2	DokeyBott	$2b$12$na9GZiD2s/cT/OpwWWUZ.exMOrQ8W3qfurVhrZlppbKXEAHG9J0f6	Admin
\.


--
-- TOC entry 4404 (class 0 OID 0)
-- Dependencies: 211
-- Name: lab_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cfclinwdskmwnj
--

SELECT pg_catalog.setval('public.lab_report_id_seq', 1, false);


--
-- TOC entry 4405 (class 0 OID 0)
-- Dependencies: 219
-- Name: lab_result_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cfclinwdskmwnj
--

SELECT pg_catalog.setval('public.lab_result_id_seq', 1, false);


--
-- TOC entry 4406 (class 0 OID 0)
-- Dependencies: 221
-- Name: lab_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cfclinwdskmwnj
--

SELECT pg_catalog.setval('public.lab_test_id_seq', 56, true);


--
-- TOC entry 4407 (class 0 OID 0)
-- Dependencies: 223
-- Name: parameter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cfclinwdskmwnj
--

SELECT pg_catalog.setval('public.parameter_id_seq', 59, true);


--
-- TOC entry 4408 (class 0 OID 0)
-- Dependencies: 225
-- Name: parameter_range_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cfclinwdskmwnj
--

SELECT pg_catalog.setval('public.parameter_range_id_seq', 38, true);


--
-- TOC entry 4409 (class 0 OID 0)
-- Dependencies: 213
-- Name: patient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cfclinwdskmwnj
--

SELECT pg_catalog.setval('public.patient_id_seq', 1, false);


--
-- TOC entry 4410 (class 0 OID 0)
-- Dependencies: 215
-- Name: test_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cfclinwdskmwnj
--

SELECT pg_catalog.setval('public.test_category_id_seq', 8, true);


--
-- TOC entry 4411 (class 0 OID 0)
-- Dependencies: 217
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cfclinwdskmwnj
--

SELECT pg_catalog.setval('public.user_id_seq', 2, true);


-- Completed on 2022-08-15 12:38:05 +0630

--
-- PostgreSQL database dump complete
--

