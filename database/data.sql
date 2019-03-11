--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2 (Debian 11.2-1.pgdg90+1)
-- Dumped by pg_dump version 11.2 (Debian 11.2-1.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article (id, name, date, url) FROM stdin;
1	Ode to the ENIAC	1946-02-18	https://www.newspapers.com/clip/29267883/ode_to_the_eniac/
8	Monster-house solution offered	1987-09-23	https://www.newspapers.com/clip/28044188/monster_house_solution/
7	Swanson opposes ARP	1977-06-03	https://www.newspapers.com/clip/28121753/swanson_opposes_arp/
2	Land grab attempt charged by owners	1965-06-15	https://www.newspapers.com/clip/28123130/mount_pleasant_downzoning/
5	BC ARP ad	1976-06-05	https://www.newspapers.com/clip/28122536/arp_ad/
6	COPE fights Assisted Rental Program	1977-04-18	https://www.newspapers.com/clip/28122335/cope_fights_assisted_rental_program/
4	Fraser Institute opposes ARP	1978-05-26	https://www.newspapers.com/clip/28122639/fraser_institute_opposing_arp/
3	The housing crisis: There are no simple answers	1980-03-26	https://www.newspapers.com/clip/28122734/ann_mcafee_column/
\.


--
-- Data for Name: article_text; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article_text (article_id, text) FROM stdin;
1	Cute poem about the ENIAC, found in Janet Abbate's "Recoding Gender". Not exactly fine poetry, but a fun time capsule.
4	Qui delectus fuga minima molestiae. Voluptate non fugit amet ut facere ut aut. Qui voluptatibus velit maxime. Nostrum dolor voluptas qui illum perspiciatis voluptate.\nIste rerum assumenda optio ut itaque. Laboriosam sit quibusdam deleniti nesciunt quia commodi culpa. Sed at blanditiis temporibus facilis omnis error sit.\nExcepturi facilis nihil eligendi. Omnis amet ducimus similique fuga quasi id atque exercitationem. Rem libero distinctio explicabo.\nQuis non saepe cum ut nihil suscipit. Voluptas at consequuntur deleniti deleniti consequatur natus inventore. Distinctio eum excepturi illo doloremque temporibus. Nulla nostrum sequi ut perferendis et et. \nSit est corrupti laborum commodi molestiae. Dicta ullam et eaque praesentium aliquid corrupti. Qui eaque ut veniam. Nihil nihil blanditiis corporis.
\.


--
-- Name: Article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Article_id_seq"', 8, true);


--
-- PostgreSQL database dump complete
--

