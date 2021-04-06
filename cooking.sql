--
-- PostgreSQL database dump
--

-- Dumped from database version 10.16 (Ubuntu 10.16-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.16 (Ubuntu 10.16-0ubuntu0.18.04.1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: account_user; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.account_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(250) NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.account_user OWNER TO test_user;

--
-- Name: account_user_groups; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.account_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.account_user_groups OWNER TO test_user;

--
-- Name: account_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.account_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_user_groups_id_seq OWNER TO test_user;

--
-- Name: account_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.account_user_groups_id_seq OWNED BY public.account_user_groups.id;


--
-- Name: account_user_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.account_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_user_id_seq OWNER TO test_user;

--
-- Name: account_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.account_user_id_seq OWNED BY public.account_user.id;


--
-- Name: account_user_user_permissions; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.account_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.account_user_user_permissions OWNER TO test_user;

--
-- Name: account_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.account_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_user_user_permissions_id_seq OWNER TO test_user;

--
-- Name: account_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.account_user_user_permissions_id_seq OWNED BY public.account_user_user_permissions.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO test_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO test_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO test_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO test_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO test_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO test_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO test_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO test_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO test_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO test_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO test_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO test_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO test_user;

--
-- Name: main_category; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.main_category (
    slug character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    image character varying(100),
    parent_id character varying(50)
);


ALTER TABLE public.main_category OWNER TO test_user;

--
-- Name: main_image; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.main_image (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    recipe_id integer NOT NULL
);


ALTER TABLE public.main_image OWNER TO test_user;

--
-- Name: main_image_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.main_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_image_id_seq OWNER TO test_user;

--
-- Name: main_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.main_image_id_seq OWNED BY public.main_image.id;


--
-- Name: main_recipe; Type: TABLE; Schema: public; Owner: test_user
--

CREATE TABLE public.main_recipe (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    description text NOT NULL,
    cooking_time integer NOT NULL,
    created timestamp with time zone NOT NULL,
    category_id character varying(50) NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT main_recipe_cooking_time_check CHECK ((cooking_time >= 0))
);


ALTER TABLE public.main_recipe OWNER TO test_user;

--
-- Name: main_recipe_id_seq; Type: SEQUENCE; Schema: public; Owner: test_user
--

CREATE SEQUENCE public.main_recipe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_recipe_id_seq OWNER TO test_user;

--
-- Name: main_recipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test_user
--

ALTER SEQUENCE public.main_recipe_id_seq OWNED BY public.main_recipe.id;


--
-- Name: account_user id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.account_user ALTER COLUMN id SET DEFAULT nextval('public.account_user_id_seq'::regclass);


--
-- Name: account_user_groups id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.account_user_groups ALTER COLUMN id SET DEFAULT nextval('public.account_user_groups_id_seq'::regclass);


--
-- Name: account_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.account_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.account_user_user_permissions_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: main_image id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.main_image ALTER COLUMN id SET DEFAULT nextval('public.main_image_id_seq'::regclass);


--
-- Name: main_recipe id; Type: DEFAULT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.main_recipe ALTER COLUMN id SET DEFAULT nextval('public.main_recipe_id_seq'::regclass);


--
-- Data for Name: account_user; Type: TABLE DATA; Schema: public; Owner: test_user
--

COPY public.account_user (id, password, last_login, is_superuser, username, is_staff, is_active, date_joined, email, first_name, last_name, image) FROM stdin;
1	pbkdf2_sha256$216000$rprcGVQ2VhDq$lPw9yxSr2x+v5N8mldMnNPzOGQs/npl7vPq0cJFzVxU=	2021-03-29 21:56:45.527964+06	t	admin	t	t	2021-03-29 14:46:07.823554+06	admin@admin.com			
\.


--
-- Data for Name: account_user_groups; Type: TABLE DATA; Schema: public; Owner: test_user
--

COPY public.account_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: account_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: test_user
--

COPY public.account_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: test_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: test_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: test_user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add category	6	add_category
22	Can change category	6	change_category
23	Can delete category	6	delete_category
24	Can view category	6	view_category
25	Can add recipe	7	add_recipe
26	Can change recipe	7	change_recipe
27	Can delete recipe	7	delete_recipe
28	Can view recipe	7	view_recipe
29	Can add image	8	add_image
30	Can change image	8	change_image
31	Can delete image	8	delete_image
32	Can view image	8	view_image
33	Can add user	9	add_user
34	Can change user	9	change_user
35	Can delete user	9	delete_user
36	Can view user	9	view_user
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: test_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-03-29 22:31:16.626658+06	soup	Soup	1	[{"added": {}}]	6	1
2	2021-03-29 22:31:41.07592+06	hotsoup	 Soup-> Hot Soup 	1	[{"added": {}}]	6	1
3	2021-03-29 22:32:14.276858+06	coldsoup	 Soup-> Cold Soup 	1	[{"added": {}}]	6	1
4	2021-03-29 22:33:49.247792+06	desserts	Dessert	1	[{"added": {}}]	6	1
5	2021-03-29 23:37:18.137147+06	dinner	Dinner	1	[{"added": {}}]	6	1
6	2021-03-29 23:38:24.616613+06	nonevegetarian	None Vegetarian	1	[{"added": {}}]	6	1
7	2021-03-29 23:39:06.341752+06	vegetarian	 Dinner-> Vegetarian 	1	[{"added": {}}]	6	1
8	2021-03-29 23:42:34.500066+06	1	Easy butter chicken	1	[{"added": {}}]	7	1
9	2021-03-29 23:46:13.775309+06	2	Thai fried prawn & pineapple rice	1	[{"added": {}}, {"added": {"name": "image", "object": "Image object (1)"}}, {"added": {"name": "image", "object": "Image object (2)"}}]	7	1
10	2021-03-29 23:47:37.484477+06	3	Old school cake recipes	1	[{"added": {}}, {"added": {"name": "image", "object": "Image object (3)"}}]	7	1
11	2021-03-30 00:17:34.696656+06	4	Borsch	1	[{"added": {}}, {"added": {"name": "image", "object": "Image object (4)"}}]	7	1
12	2021-03-30 00:18:48.64765+06	5	Fondant potatoes	1	[{"added": {}}, {"added": {"name": "image", "object": "Image object (5)"}}]	7	1
13	2021-03-30 00:34:10.957867+06	6	Spring baking recipes	1	[{"added": {}}, {"added": {"name": "image", "object": "/media/recipes/monkey.webp"}}]	7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: test_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	main	category
7	main	recipe
8	main	image
9	account	user
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: test_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-03-29 13:18:37.522482+06
2	contenttypes	0002_remove_content_type_name	2021-03-29 13:18:37.581815+06
3	auth	0001_initial	2021-03-29 13:18:37.907935+06
4	auth	0002_alter_permission_name_max_length	2021-03-29 13:18:38.364124+06
5	auth	0003_alter_user_email_max_length	2021-03-29 13:18:38.425109+06
6	auth	0004_alter_user_username_opts	2021-03-29 13:18:38.479212+06
7	auth	0005_alter_user_last_login_null	2021-03-29 13:18:38.545646+06
8	auth	0006_require_contenttypes_0002	2021-03-29 13:18:38.589546+06
9	auth	0007_alter_validators_add_error_messages	2021-03-29 13:18:38.644085+06
10	auth	0008_alter_user_username_max_length	2021-03-29 13:18:38.707285+06
11	auth	0009_alter_user_last_name_max_length	2021-03-29 13:18:38.767082+06
12	auth	0010_alter_group_name_max_length	2021-03-29 13:18:38.816984+06
13	auth	0011_update_proxy_permissions	2021-03-29 13:18:38.871389+06
14	auth	0012_alter_user_first_name_max_length	2021-03-29 13:18:38.922349+06
15	account	0001_initial	2021-03-29 13:18:39.338412+06
16	admin	0001_initial	2021-03-29 13:18:39.999692+06
17	admin	0002_logentry_remove_auto_add	2021-03-29 13:18:40.325066+06
18	admin	0003_logentry_add_action_flag_choices	2021-03-29 13:18:40.397984+06
19	main	0001_initial	2021-03-29 13:18:40.758504+06
20	sessions	0001_initial	2021-03-29 13:18:41.361723+06
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: test_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
c4p6hqqkf48i9u3fejzx6v802l1kzui6	.eJxVjMsOwiAQAP-FsyFdurDg0bvfQJaHUjWQlPZk_HdD0oNeZybzFp73rfi959UvSZwFiNMvCxyfuQ6RHlzvTcZWt3UJciTysF1eW8qvy9H-DQr3MrZAmsgFyEQYyN6Q2ESNEwRUOLPOkXBShmdlggVN1tqkFc_gwKFO4vMFqqk2LQ:1lQuFx:2mnCk4UPwLSC-Khk70xeSNDdyb4mCSjaS-EALdeDlvY	2021-04-12 21:56:45.566103+06
\.


--
-- Data for Name: main_category; Type: TABLE DATA; Schema: public; Owner: test_user
--

COPY public.main_category (slug, name, image, parent_id) FROM stdin;
soup	Soup	categories/images.jpeg	\N
hotsoup	Hot Soup	categories/images_0RctsPJ.jpeg	soup
coldsoup	Cold Soup	categories/images_oT5KkBq.jpeg	soup
desserts	Dessert	categories/dessert.jpeg	\N
dinner	Dinner	categories/dinner.webp	\N
nonevegetarian	None Vegetarian	categories/nonevegetarian.webp	\N
vegetarian	Vegetarian	categories/dinner_AsO1N0K.webp	dinner
\.


--
-- Data for Name: main_image; Type: TABLE DATA; Schema: public; Owner: test_user
--

COPY public.main_image (id, image, recipe_id) FROM stdin;
1	recipes/thai.webp	2
2	recipes/asparagus.webp	2
4	recipes/borscht-recipe-ab000dc.webp	4
6	recipes/monkey.webp	6
7	recipes/vegetarian.webp	8
8	recipes/vegetarian_BzGlgFs.webp	9
9	recipes/vegetarian_XTsOXi2.webp	10
5	recipes/soup.webp	5
11		5
13	recipes/white_chocolate_yUIFBlL.webp	12
\.


--
-- Data for Name: main_recipe; Type: TABLE DATA; Schema: public; Owner: test_user
--

COPY public.main_recipe (id, title, description, cooking_time, created, category_id, user_id) FROM stdin;
1	Easy butter chicken	STEP 1\r\nIn a medium bowl, mix all the marinade ingredients with some seasoning. Chop the chicken into bite-sized pieces and toss with the marinade. Cover and chill in the fridge for 1 hr or overnight.\r\n\r\nSTEP 2\r\nIn a large, heavy saucepan, heat the oil. Add the onion, garlic, green chilli, ginger and some seasoning. Fry on a medium heat for 10 mins or until soft.\r\n\r\nSTEP 3\r\nAdd the spices with the tomato purée, cook for a further 2 mins until fragrant, then add the stock and marinated chicken. Cook for 15 mins, then add any remaining marinade left in the bowl. Simmer for 5 mins, then sprinkle with the toasted almonds. Serve with rice, naan bread, chutney, coriander and lime wedges, if you like.	50	2021-03-29 23:41:10+06	nonevegetarian	1
2	Thai fried prawn & pineapple rice	STEP 1\r\nHeat the oil in a wok or non-stick frying pan and fry the spring onion whites for 2 mins until softened. Stir in the pepper for 1 min, followed by the pineapple for 1 min more, then stir in the green curry paste and soy sauce.\r\n\r\nSTEP 2\r\nAdd the rice, stir-frying until piping hot, then push the rice to one side of the pan and scramble the eggs on the other side. Stir the peas, bamboo shoots and prawns into the rice and eggs, then heat through for 2 mins until the prawns are hot and the peas tender. Finally, stir in the spring onion greens, lime juice and coriander, if using. Spoon into bowls and serve with extra lime wedges and soy sauce.	60	2021-03-29 23:44:26+06	vegetarian	1
4	Borsch	STEP 1\r\nTo make the stock, put the meat, whole onion, bay leaf and 2 litres of lightly salted cold water in a large saucepan. Cook over a very low heat for 1 hr 30 mins or until the beef shin is soft and falls apart easily – this can take up to 3 hrs. Skim off the scum with a spoon from time to time. Break up any larger pieces of beef into the broth, remove the whole onion and discard.\r\n\r\nSTEP 2\r\nAdd the potatoes to the borscht, season well with salt and pepper and cook for 10-15 mins until tender. Meanwhile, heat the sunflower oil in a large, deep frying pan. Add the diced onion and carrot, and cook over a medium heat, stirring, until the carrot is soft and is about to start caramelising.\r\n\r\nSTEP 3\r\nAdd the beetroot and cook for around 5 mins, stirring occasionally. Add the red pepper, if using, and cook for another 2 mins, then add the tomatoes and prunes, stir, then increase the heat and boil to reduce slightly, before adding everything to the borscht.\r\n\r\nSTEP 4\r\nAdd the shredded cabbage and the kidney beans, and cook for 7-10 mins or until tender. Serve with a dollop of sour cream or crème fraîche, lots of chopped dill and some crusty bread.	40	2021-03-30 00:17:07+06	soup	1
6	Spring baking recipes	Try one of our favourite spring baking recipes, bursting with seasonal flavours. Try a classic carrot cake, a rhubarb and custard sponge or a simnel-spiced traybake.	25	2021-03-30 00:33:53+06	desserts	1
7	Kids’ healthy lunch recipes	Keep your kids happy and healthy with our nutritious lunch ideas. These tasty veg-packed wraps, soups, salads and pasta bowls will boost their energy levels.	15	2021-01-01 19:23:12+06	vegetarian	1
8	Kids’ healthy lunch recipes	Keep your kids happy and healthy with our nutritious lunch ideas. These tasty veg-packed wraps, soups, salads and pasta bowls will boost their energy levels.	15	2021-01-01 19:23:12+06	vegetarian	1
9	Kids’ healthy lunch recipes	Keep your kids happy and healthy with our nutritious lunch ideas. These tasty veg-packed wraps, soups, salads and pasta bowls will boost their energy levels.	15	2021-01-01 19:23:12+06	vegetarian	1
10	Kids’ healthy lunch recipes	Keep your kids happy and healthy with our nutritious lunch ideas. These tasty veg-packed wraps, soups, salads and pasta bowls will boost their energy levels.	15	2021-01-01 19:23:12+06	vegetarian	1
12	text1	wertyuioikjhgfdsfdsdfmhfghhbnvgfbb	10	2021-03-30 14:16:14+06	soup	1
5	Fondant potatoes	STEP 1\r\nSlice the ends off the potatoes so they lay flat on either side.\r\n\r\nSTEP 2\r\nHeat the oil in a pan over a medium-low heat. When hot, add the potatoes cut-side down. Fry for 5-7 mins, or until deep golden brown, then flip and fry on the other side. Add the butter to the pan to melt.\r\n\r\nSTEP 3\r\nScatter the garlic and herbs around the potatoes and season well. Carefully pour the stock around the veg, being aware of any hot butter that may splash out. Cover and simmer gently for 25-30 mins, or until the potatoes are tender, then serve.	30	2019-03-30 00:18:41+06	coldsoup	1
\.


--
-- Name: account_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.account_user_groups_id_seq', 1, false);


--
-- Name: account_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.account_user_id_seq', 1, true);


--
-- Name: account_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.account_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 13, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- Name: main_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.main_image_id_seq', 13, true);


--
-- Name: main_recipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test_user
--

SELECT pg_catalog.setval('public.main_recipe_id_seq', 12, true);


--
-- Name: account_user account_user_email_key; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.account_user
    ADD CONSTRAINT account_user_email_key UNIQUE (email);


--
-- Name: account_user_groups account_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_pkey PRIMARY KEY (id);


--
-- Name: account_user_groups account_user_groups_user_id_group_id_4d09af3e_uniq; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_user_id_group_id_4d09af3e_uniq UNIQUE (user_id, group_id);


--
-- Name: account_user account_user_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.account_user
    ADD CONSTRAINT account_user_pkey PRIMARY KEY (id);


--
-- Name: account_user_user_permissions account_user_user_permis_user_id_permission_id_48bdd28b_uniq; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_permis_user_id_permission_id_48bdd28b_uniq UNIQUE (user_id, permission_id);


--
-- Name: account_user_user_permissions account_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: account_user account_user_username_key; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.account_user
    ADD CONSTRAINT account_user_username_key UNIQUE (username);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: main_category main_category_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.main_category
    ADD CONSTRAINT main_category_pkey PRIMARY KEY (slug);


--
-- Name: main_image main_image_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.main_image
    ADD CONSTRAINT main_image_pkey PRIMARY KEY (id);


--
-- Name: main_recipe main_recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.main_recipe
    ADD CONSTRAINT main_recipe_pkey PRIMARY KEY (id);


--
-- Name: account_user_email_0bd7c421_like; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX account_user_email_0bd7c421_like ON public.account_user USING btree (email varchar_pattern_ops);


--
-- Name: account_user_groups_group_id_6c71f749; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX account_user_groups_group_id_6c71f749 ON public.account_user_groups USING btree (group_id);


--
-- Name: account_user_groups_user_id_14345e7b; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX account_user_groups_user_id_14345e7b ON public.account_user_groups USING btree (user_id);


--
-- Name: account_user_user_permissions_permission_id_66c44191; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX account_user_user_permissions_permission_id_66c44191 ON public.account_user_user_permissions USING btree (permission_id);


--
-- Name: account_user_user_permissions_user_id_cc42d270; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX account_user_user_permissions_user_id_cc42d270 ON public.account_user_user_permissions USING btree (user_id);


--
-- Name: account_user_username_d393f583_like; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX account_user_username_d393f583_like ON public.account_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: main_category_parent_id_212af219; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX main_category_parent_id_212af219 ON public.main_category USING btree (parent_id);


--
-- Name: main_category_parent_id_212af219_like; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX main_category_parent_id_212af219_like ON public.main_category USING btree (parent_id varchar_pattern_ops);


--
-- Name: main_category_slug_7ae6758d_like; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX main_category_slug_7ae6758d_like ON public.main_category USING btree (slug varchar_pattern_ops);


--
-- Name: main_image_recipe_id_3829e1d2; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX main_image_recipe_id_3829e1d2 ON public.main_image USING btree (recipe_id);


--
-- Name: main_recipe_category_id_1841ae83; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX main_recipe_category_id_1841ae83 ON public.main_recipe USING btree (category_id);


--
-- Name: main_recipe_category_id_1841ae83_like; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX main_recipe_category_id_1841ae83_like ON public.main_recipe USING btree (category_id varchar_pattern_ops);


--
-- Name: main_recipe_user_id_f8f19db8; Type: INDEX; Schema: public; Owner: test_user
--

CREATE INDEX main_recipe_user_id_f8f19db8 ON public.main_recipe USING btree (user_id);


--
-- Name: account_user_groups account_user_groups_group_id_6c71f749_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_group_id_6c71f749_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_user_groups account_user_groups_user_id_14345e7b_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_user_id_14345e7b_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_user_user_permissions account_user_user_pe_permission_id_66c44191_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_pe_permission_id_66c44191_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_user_user_permissions account_user_user_pe_user_id_cc42d270_fk_account_u; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_pe_user_id_cc42d270_fk_account_u FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_category main_category_parent_id_212af219_fk_main_category_slug; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.main_category
    ADD CONSTRAINT main_category_parent_id_212af219_fk_main_category_slug FOREIGN KEY (parent_id) REFERENCES public.main_category(slug) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_image main_image_recipe_id_3829e1d2_fk_main_recipe_id; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.main_image
    ADD CONSTRAINT main_image_recipe_id_3829e1d2_fk_main_recipe_id FOREIGN KEY (recipe_id) REFERENCES public.main_recipe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_recipe main_recipe_category_id_1841ae83_fk_main_category_slug; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.main_recipe
    ADD CONSTRAINT main_recipe_category_id_1841ae83_fk_main_category_slug FOREIGN KEY (category_id) REFERENCES public.main_category(slug) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_recipe main_recipe_user_id_f8f19db8_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: test_user
--

ALTER TABLE ONLY public.main_recipe
    ADD CONSTRAINT main_recipe_user_id_f8f19db8_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

