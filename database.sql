--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character(100)
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    name character(100),
    phone character(20),
    email character(50),
    address character(100),
    gender character(10)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: farms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.farms (
    id integer NOT NULL,
    name character(50),
    owner character(50),
    address character(100),
    product_id integer,
    phone character(20)
);


ALTER TABLE public.farms OWNER TO postgres;

--
-- Name: farms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.farms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.farms_id_seq OWNER TO postgres;

--
-- Name: farms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.farms_id_seq OWNED BY public.farms.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character(100),
    amount integer,
    price integer,
    description text,
    brand_id integer,
    category_id integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: farms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.farms ALTER COLUMN id SET DEFAULT nextval('public.farms_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name) FROM stdin;
1	ngu coc                                                                                             
2	rau cu                                                                                              
3	hoa qua                                                                                             
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, name, phone, email, address, gender) FROM stdin;
4	Gregorio Fourcade                                                                                   	183-691-5235        	gfourcade0@upenn.edu                              	5792 Hollow Ridge Alley                                                                             	Male      
5	Earle Dosdell                                                                                       	389-902-6091        	edosdell1@addtoany.com                            	636 Sommers Avenue                                                                                  	Male      
6	Elvera Naughton                                                                                     	613-846-4607        	enaughton2@auda.org.au                            	7 Hayes Avenue                                                                                      	Female    
7	Malynda Ingerman                                                                                    	133-309-7405        	mingerman3@amazon.co.jp                           	5 Oneill Plaza                                                                                      	Female    
8	Hilde Grimsey                                                                                       	262-782-0332        	hgrimsey4@yahoo.com                               	2243 Dayton Circle                                                                                  	Female    
9	Perry Rudyard                                                                                       	235-539-2853        	prudyard5@cam.ac.uk                               	74 Morrow Way                                                                                       	Male      
10	Dilan Woolmore                                                                                      	874-618-6003        	dwoolmore6@myspace.com                            	222 Gulseth Junction                                                                                	Male      
11	Devonne Menendes                                                                                    	660-694-0792        	dmenendes7@furl.net                               	162 Di Loreto Pass                                                                                  	Female    
12	Lothaire Ganderton                                                                                  	825-969-5959        	lganderton8@photobucket.com                       	69323 Redwing Junction                                                                              	Male      
13	Tobie Feldman                                                                                       	350-891-6094        	tfeldman9@nbcnews.com                             	3 Arrowood Avenue                                                                                   	Male      
14	Pavlov Polden                                                                                       	659-473-7552        	ppoldena@cdc.gov                                  	33 Arkansas Court                                                                                   	Male      
15	Arin Rilton                                                                                         	779-845-3039        	ariltonb@multiply.com                             	127 Dwight Street                                                                                   	Male      
16	Bob Johnigan                                                                                        	461-101-7744        	bjohniganc@imageshack.us                          	22 Rowland Center                                                                                   	Male      
17	Cyndi Gulliman                                                                                      	561-327-4363        	cgullimand@dropbox.com                            	7 Chinook Alley                                                                                     	Female    
18	Nigel Blaszczyk                                                                                     	451-579-3539        	nblaszczyke@hibu.com                              	28 Springs Circle                                                                                   	Male      
19	Del Saundercock                                                                                     	337-232-5557        	dsaundercockf@fema.gov                            	26 Messerschmidt Park                                                                               	Female    
20	Fan Batram                                                                                          	568-534-5550        	fbatramg@google.nl                                	910 Quincy Avenue                                                                                   	Female    
21	Georgette Blonfield                                                                                 	288-554-7749        	gblonfieldh@acquirethisname.com                   	91083 Granby Center                                                                                 	Female    
22	Sapphira Carnduff                                                                                   	376-801-0479        	scarnduffi@jigsy.com                              	4 Orin Point                                                                                        	Female    
23	Hilary Del Dello                                                                                    	915-902-5632        	hdelj@thetimes.co.uk                              	05237 Sunbrook Hill                                                                                 	Male      
24	Lauritz Pauly                                                                                       	314-585-9683        	lpaulyk@wix.com                                   	5534 Thierer Crossing                                                                               	Male      
25	Stormy Bramhall                                                                                     	875-337-8498        	sbramhalll@dedecms.com                            	71092 Oak Place                                                                                     	Female    
26	Bald Clemo                                                                                          	491-912-8088        	bclemom@home.pl                                   	970 Moose Plaza                                                                                     	Male      
27	Cher Deeble                                                                                         	879-542-7760        	cdeeblen@rediff.com                               	928 Rutledge Lane                                                                                   	Female    
28	Wakefield Camellini                                                                                 	553-791-7538        	wcamellinio@sakura.ne.jp                          	93042 Morrow Hill                                                                                   	Male      
29	Ynez Tizard                                                                                         	243-932-9790        	ytizardp@amazon.com                               	389 Warrior Court                                                                                   	Female    
30	Trev Rengger                                                                                        	933-858-5704        	trenggerq@hao123.com                              	49149 Cherokee Park                                                                                 	Male      
31	Adria Simenot                                                                                       	973-911-8908        	asimenotr@quantcast.com                           	52695 Sachs Trail                                                                                   	Female    
32	Zack Butlin                                                                                         	173-146-2312        	zbutlins@admin.ch                                 	915 East Trail                                                                                      	Male      
33	Coletta Browett                                                                                     	768-927-9882        	cbrowettt@google.cn                               	1 Anhalt Street                                                                                     	Female    
\.


--
-- Data for Name: farms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.farms (id, name, owner, address, product_id, phone) FROM stdin;
1	Mertz-Steuber                                     	Karlyn Pappin                                     	0 Dunning Trail                                                                                     	19	\N
2	Kuhic Inc                                         	Kaylil Lody                                       	01 Rigney Court                                                                                     	6	\N
3	Gutmann Inc                                       	Weider Holworth                                   	0 Banding Street                                                                                    	8	\N
4	Homenick, Smith and Johnston                      	Nicolea Swaby                                     	690 Kedzie Terrace                                                                                  	15	\N
5	Crist, Halvorson and Rogahn                       	Wolf Deacock                                      	48 Oneill Circle                                                                                    	8	\N
6	Parisian LLC                                      	Gusella Trimming                                  	71721 Coleman Place                                                                                 	1	\N
7	Jakubowski Group                                  	Morry Thurnham                                    	4044 Namekagon Way                                                                                  	26	\N
8	Larson, Roob and Bergnaum                         	Birdie Whittington                                	23 Dixon Place                                                                                      	8	\N
9	Brakus-Larkin                                     	Obed Hubatsch                                     	31 Canary Street                                                                                    	14	\N
10	Leffler, Daniel and Cassin                        	Kermit Drayson                                    	15948 Sauthoff Parkway                                                                              	14	\N
11	Aufderhar-Kuhic                                   	Cariotta Calliss                                  	0 Anniversary Lane                                                                                  	17	\N
12	Kihn-Hegmann                                      	Margret Boller                                    	9 Mcguire Hill                                                                                      	21	\N
13	Buckridge-Hermiston                               	Archie Verny                                      	25 Warrior Circle                                                                                   	27	\N
14	Greenholt, West and Abshire                       	Marline Mattiello                                 	80367 Ryan Center                                                                                   	17	\N
15	Koch-Gulgowski                                    	Tansy Hallgath                                    	21 Esker Trail                                                                                      	15	\N
16	Goldner, O'Connell and Walsh                      	Rossie Fearon                                     	02912 Lakeland Street                                                                               	2	\N
17	Bergnaum Group                                    	Aharon Lacroix                                    	74 Susan Point                                                                                      	2	\N
18	Swift Group                                       	Francklyn Grissett                                	1 Butterfield Avenue                                                                                	16	\N
19	Larson, Durgan and Bradtke                        	Kasper Plowman                                    	00147 Loomis Terrace                                                                                	13	\N
20	Reilly, Bednar and Huel                           	Pearl Rosi                                        	93847 Calypso Trail                                                                                 	2	\N
21	Lubowitz and Sons                                 	Renae Robilliard                                  	8 Marcy Junction                                                                                    	7	\N
22	Rau, Ferry and Brown                              	Melonie Bierton                                   	2 Valley Edge Avenue                                                                                	15	\N
23	Wiegand Group                                     	Sawyer Shorton                                    	770 Glacier Hill Pass                                                                               	6	\N
24	Heaney, Mitchell and Hettinger                    	Margarita Klampk                                  	98 Carioca Pass                                                                                     	1	\N
25	Aufderhar-Barton                                  	Helen-elizabeth Gulliver                          	83041 Londonderry Parkway                                                                           	25	\N
26	Anderson LLC                                      	Adrian Muirden                                    	538 Russell Drive                                                                                   	30	\N
27	Becker, Vandervort and Schiller                   	Boonie Gentreau                                   	2 Towne Terrace                                                                                     	24	\N
28	Hand, Rowe and Wilderman                          	Gene Keasley                                      	46069 Northland Alley                                                                               	18	\N
29	Wiza, Balistreri and Miller                       	Iormina Girdwood                                  	89 Thompson Parkway                                                                                 	7	\N
30	Connelly-Powlowski                                	Corby McLemon                                     	99045 Becker Way                                                                                    	16	\N
31	Friesen and Sons                                  	Genia Krelle                                      	60 Glacier Hill Lane                                                                                	29	273-233-3748        
32	Glover and Sons                                   	Twila Guarnier                                    	05520 Graceland Circle                                                                              	5	605-113-3713        
33	Wuckert, Kovacek and Kshlerin                     	Quintina Chin                                     	12757 Packers Court                                                                                 	26	414-415-6731        
34	Donnelly LLC                                      	Roxie Mc Carroll                                  	3771 7th Street                                                                                     	7	254-629-9340        
35	Lakin-Buckridge                                   	Imogene Meconi                                    	7085 Granby Place                                                                                   	14	186-910-5792        
36	Ruecker, Murphy and Hermiston                     	Cherrita Gough                                    	30 Superior Court                                                                                   	17	468-986-6644        
37	Zulauf, McKenzie and Turcotte                     	Yevette Steutly                                   	27903 7th Point                                                                                     	13	282-200-0468        
38	Russel, Robel and Batz                            	Federico Fidgett                                  	1 Mallard Crossing                                                                                  	5	783-786-5541        
39	Kuhic Group                                       	Barri Tommasuzzi                                  	16 Clyde Gallagher Lane                                                                             	3	105-118-5216        
40	Zieme, Powlowski and Stiedemann                   	Tani Duignan                                      	64349 Susan Drive                                                                                   	29	812-406-7290        
41	Mertz and Sons                                    	Davidson Olkowicz                                 	48682 Dexter Center                                                                                 	9	961-341-8751        
42	O'Reilly, West and Yundt                          	Annmaria Cassella                                 	8943 Ridge Oak Street                                                                               	27	179-893-6887        
43	Wuckert, Purdy and Pfeffer                        	Cleon Swanne                                      	829 Larry Trail                                                                                     	26	682-470-3646        
44	Lebsack, Sauer and Gusikowski                     	Elias Laver                                       	7013 Stang Way                                                                                      	9	804-850-4129        
45	Ryan Group                                        	Blaire Blinerman                                  	3 Anzinger Alley                                                                                    	7	244-290-2348        
46	Boyle-Krajcik                                     	Georgiana Battabee                                	6445 Grover Plaza                                                                                   	15	819-647-4130        
47	Wyman, Paucek and Spencer                         	Rayna Kynston                                     	3377 Oneill Crossing                                                                                	20	767-871-2804        
48	Bernier Inc                                       	Dietrich Pybworth                                 	9306 Anderson Plaza                                                                                 	6	543-374-0082        
49	Thompson and Sons                                 	Murray Piens                                      	87643 Waubesa Park                                                                                  	22	330-600-7438        
50	Beer, Morar and Luettgen                          	Say Studdert                                      	89 Fremont Avenue                                                                                   	10	403-709-7377        
51	Cummerata Inc                                     	Sherwood Andres                                   	2 Oak Valley Road                                                                                   	10	430-912-0650        
52	Donnelly Inc                                      	Raynell Petrolli                                  	67024 Crownhardt Alley                                                                              	8	570-809-1242        
53	Towne, Kozey and Beier                            	Astrid Glanvill                                   	139 Clove Hill                                                                                      	19	906-557-6768        
54	Strosin LLC                                       	Vanda Dukes                                       	0 Kennedy Circle                                                                                    	23	929-683-8500        
55	Armstrong-Stoltenberg                             	Margery Noe                                       	7877 Holmberg Road                                                                                  	17	990-111-7881        
56	Mohr-Jacobs                                       	Falito Cribbin                                    	67 Bunting Trail                                                                                    	18	841-785-3945        
57	Gutmann, Auer and Huels                           	Moyna Aronstein                                   	3318 Sauthoff Park                                                                                  	13	164-503-9529        
58	Altenwerth-Satterfield                            	Calla Gabbotts                                    	2 Fulton Junction                                                                                   	6	457-536-2290        
59	Olson, Reilly and Schuppe                         	Purcell Julyan                                    	831 Hazelcrest Park                                                                                 	12	318-924-2891        
60	Kshlerin, Gleason and Shields                     	Stan Cornuau                                      	793 Namekagon Street                                                                                	11	168-111-9785        
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, amount, price, description, brand_id, category_id) FROM stdin;
1	Silas Bodemeaid                                                                                     	61	50	ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu	\N	3
2	Hillyer Codman                                                                                      	3	90	nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices	\N	4
3	Estrellita Shaxby                                                                                   	11	14	donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit	\N	3
4	Henderson Ledamun                                                                                   	69	94	ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus	\N	4
5	Meredith Raiman                                                                                     	13	33	mi integer ac neque duis bibendum morbi non quam nec dui	\N	4
6	Jacintha Feldfisher                                                                                 	51	75	in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id	\N	2
7	Sabina Mollett                                                                                      	97	61	mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id	\N	2
8	Windy Aguirrezabala                                                                                 	57	80	dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis	\N	3
9	Caresa Ellick                                                                                       	72	87	sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum	\N	2
10	Melania Birkmyre                                                                                    	20	92	ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam	\N	4
11	Ebenezer Monahan                                                                                    	92	90	nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae	\N	1
12	Florenza Cartan                                                                                     	48	46	massa donec dapibus duis at velit eu est congue elementum in hac habitasse	\N	3
13	Hy Galbraith                                                                                        	28	8	consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris	\N	1
14	Melita Cescoti                                                                                      	86	46	massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium	\N	4
15	Dagmar Anstis                                                                                       	68	79	lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at	\N	3
16	Rosemaria M'Chirrie                                                                                 	68	65	nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis	\N	1
17	Zebulen Guitte                                                                                      	53	17	gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede	\N	2
18	Elisha Benoit                                                                                       	24	3	suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc	\N	1
19	Beck McCaughen                                                                                      	66	94	non sodales sed tincidunt eu felis fusce posuere felis sed lacus	\N	1
20	Waldo Fairleigh                                                                                     	42	49	vestibulum quam sapien varius ut blandit non interdum in ante vestibulum	\N	2
21	Devlen Trayton                                                                                      	75	78	commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula	\N	4
22	Prent Blinckhorne                                                                                   	12	14	natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum	\N	2
23	Vania Cutting                                                                                       	63	11	malesuada in imperdiet et commodo vulputate justo in blandit ultrices	\N	4
24	Tiphani Wooddisse                                                                                   	89	79	purus sit amet nulla quisque arcu libero rutrum ac lobortis	\N	2
25	Ardyth Owbrick                                                                                      	86	77	velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis	\N	3
26	Electra Caldera                                                                                     	65	42	habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida	\N	4
27	Quintina McLernon                                                                                   	54	17	etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras	\N	2
28	Gaspard Shreeve                                                                                     	57	10	dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque	\N	2
29	Margo Scoles                                                                                        	93	18	eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum	\N	1
30	Gipsy Hebbs                                                                                         	97	97	suscipit ligula in lacus curabitur at ipsum ac tellus semper	\N	4
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 3, true);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 33, true);


--
-- Name: farms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.farms_id_seq', 60, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 30, true);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: farms farms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.farms
    ADD CONSTRAINT farms_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

