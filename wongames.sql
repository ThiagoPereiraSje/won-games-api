--
-- PostgreSQL database dump
--

-- Dumped from database version 12.10 (Debian 12.10-1.pgdg110+1)
-- Dumped by pg_dump version 12.10 (Debian 12.10-1.pgdg110+1)

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

ALTER TABLE IF EXISTS ONLY public."users-permissions_user" DROP CONSTRAINT IF EXISTS "users-permissions_user_username_unique";
ALTER TABLE IF EXISTS ONLY public."users-permissions_user" DROP CONSTRAINT IF EXISTS "users-permissions_user_pkey";
ALTER TABLE IF EXISTS ONLY public."users-permissions_role" DROP CONSTRAINT IF EXISTS "users-permissions_role_type_unique";
ALTER TABLE IF EXISTS ONLY public."users-permissions_role" DROP CONSTRAINT IF EXISTS "users-permissions_role_pkey";
ALTER TABLE IF EXISTS ONLY public."users-permissions_permission" DROP CONSTRAINT IF EXISTS "users-permissions_permission_pkey";
ALTER TABLE IF EXISTS ONLY public.upload_file DROP CONSTRAINT IF EXISTS upload_file_pkey;
ALTER TABLE IF EXISTS ONLY public.upload_file_morph DROP CONSTRAINT IF EXISTS upload_file_morph_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_webhooks DROP CONSTRAINT IF EXISTS strapi_webhooks_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_users_roles DROP CONSTRAINT IF EXISTS strapi_users_roles_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_role DROP CONSTRAINT IF EXISTS strapi_role_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_role DROP CONSTRAINT IF EXISTS strapi_role_name_unique;
ALTER TABLE IF EXISTS ONLY public.strapi_role DROP CONSTRAINT IF EXISTS strapi_role_code_unique;
ALTER TABLE IF EXISTS ONLY public.strapi_permission DROP CONSTRAINT IF EXISTS strapi_permission_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_administrator DROP CONSTRAINT IF EXISTS strapi_administrator_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_administrator DROP CONSTRAINT IF EXISTS strapi_administrator_email_unique;
ALTER TABLE IF EXISTS ONLY public.publishers DROP CONSTRAINT IF EXISTS publishers_slug_unique;
ALTER TABLE IF EXISTS ONLY public.publishers DROP CONSTRAINT IF EXISTS publishers_pkey;
ALTER TABLE IF EXISTS ONLY public.publishers DROP CONSTRAINT IF EXISTS publishers_name_unique;
ALTER TABLE IF EXISTS ONLY public.platforms DROP CONSTRAINT IF EXISTS platforms_slug_unique;
ALTER TABLE IF EXISTS ONLY public.platforms DROP CONSTRAINT IF EXISTS platforms_pkey;
ALTER TABLE IF EXISTS ONLY public.platforms DROP CONSTRAINT IF EXISTS platforms_name_unique;
ALTER TABLE IF EXISTS ONLY public.i18n_locales DROP CONSTRAINT IF EXISTS i18n_locales_pkey;
ALTER TABLE IF EXISTS ONLY public.i18n_locales DROP CONSTRAINT IF EXISTS i18n_locales_code_unique;
ALTER TABLE IF EXISTS ONLY public.games DROP CONSTRAINT IF EXISTS games_slug_unique;
ALTER TABLE IF EXISTS ONLY public.games_platforms__platforms_games DROP CONSTRAINT IF EXISTS games_platforms__platforms_games_pkey;
ALTER TABLE IF EXISTS ONLY public.games DROP CONSTRAINT IF EXISTS games_pkey;
ALTER TABLE IF EXISTS ONLY public.games DROP CONSTRAINT IF EXISTS games_name_unique;
ALTER TABLE IF EXISTS ONLY public.developers DROP CONSTRAINT IF EXISTS developers_slug_unique;
ALTER TABLE IF EXISTS ONLY public.developers DROP CONSTRAINT IF EXISTS developers_pkey;
ALTER TABLE IF EXISTS ONLY public.developers DROP CONSTRAINT IF EXISTS developers_name_unique;
ALTER TABLE IF EXISTS ONLY public.developers_games__games_developers DROP CONSTRAINT IF EXISTS developers_games__games_developers_pkey;
ALTER TABLE IF EXISTS ONLY public.core_store DROP CONSTRAINT IF EXISTS core_store_pkey;
ALTER TABLE IF EXISTS ONLY public.categories DROP CONSTRAINT IF EXISTS categories_slug_unique;
ALTER TABLE IF EXISTS ONLY public.categories DROP CONSTRAINT IF EXISTS categories_pkey;
ALTER TABLE IF EXISTS ONLY public.categories DROP CONSTRAINT IF EXISTS categories_name_unique;
ALTER TABLE IF EXISTS ONLY public.categories_games__games_categories DROP CONSTRAINT IF EXISTS categories_games__games_categories_pkey;
ALTER TABLE IF EXISTS public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.upload_file ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_users_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_role ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.publishers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.platforms ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.i18n_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.games_platforms__platforms_games ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.games ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.developers_games__games_developers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.developers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.core_store ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.categories_games__games_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.categories ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public."users-permissions_user_id_seq";
DROP TABLE IF EXISTS public."users-permissions_user";
DROP SEQUENCE IF EXISTS public."users-permissions_role_id_seq";
DROP TABLE IF EXISTS public."users-permissions_role";
DROP SEQUENCE IF EXISTS public."users-permissions_permission_id_seq";
DROP TABLE IF EXISTS public."users-permissions_permission";
DROP SEQUENCE IF EXISTS public.upload_file_morph_id_seq;
DROP TABLE IF EXISTS public.upload_file_morph;
DROP SEQUENCE IF EXISTS public.upload_file_id_seq;
DROP TABLE IF EXISTS public.upload_file;
DROP SEQUENCE IF EXISTS public.strapi_webhooks_id_seq;
DROP TABLE IF EXISTS public.strapi_webhooks;
DROP SEQUENCE IF EXISTS public.strapi_users_roles_id_seq;
DROP TABLE IF EXISTS public.strapi_users_roles;
DROP SEQUENCE IF EXISTS public.strapi_role_id_seq;
DROP TABLE IF EXISTS public.strapi_role;
DROP SEQUENCE IF EXISTS public.strapi_permission_id_seq;
DROP TABLE IF EXISTS public.strapi_permission;
DROP SEQUENCE IF EXISTS public.strapi_administrator_id_seq;
DROP TABLE IF EXISTS public.strapi_administrator;
DROP SEQUENCE IF EXISTS public.publishers_id_seq;
DROP TABLE IF EXISTS public.publishers;
DROP SEQUENCE IF EXISTS public.platforms_id_seq;
DROP TABLE IF EXISTS public.platforms;
DROP SEQUENCE IF EXISTS public.i18n_locales_id_seq;
DROP TABLE IF EXISTS public.i18n_locales;
DROP SEQUENCE IF EXISTS public.games_platforms__platforms_games_id_seq;
DROP TABLE IF EXISTS public.games_platforms__platforms_games;
DROP SEQUENCE IF EXISTS public.games_id_seq;
DROP TABLE IF EXISTS public.games;
DROP SEQUENCE IF EXISTS public.developers_id_seq;
DROP SEQUENCE IF EXISTS public.developers_games__games_developers_id_seq;
DROP TABLE IF EXISTS public.developers_games__games_developers;
DROP TABLE IF EXISTS public.developers;
DROP SEQUENCE IF EXISTS public.core_store_id_seq;
DROP TABLE IF EXISTS public.core_store;
DROP SEQUENCE IF EXISTS public.categories_id_seq;
DROP SEQUENCE IF EXISTS public.categories_games__games_categories_id_seq;
DROP TABLE IF EXISTS public.categories_games__games_categories;
DROP TABLE IF EXISTS public.categories;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.categories OWNER TO wongames;

--
-- Name: categories_games__games_categories; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.categories_games__games_categories (
    id integer NOT NULL,
    game_id integer,
    category_id integer
);


ALTER TABLE public.categories_games__games_categories OWNER TO wongames;

--
-- Name: categories_games__games_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.categories_games__games_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_games__games_categories_id_seq OWNER TO wongames;

--
-- Name: categories_games__games_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.categories_games__games_categories_id_seq OWNED BY public.categories_games__games_categories.id;


--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO wongames;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO wongames;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO wongames;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: developers; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.developers (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.developers OWNER TO wongames;

--
-- Name: developers_games__games_developers; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.developers_games__games_developers (
    id integer NOT NULL,
    game_id integer,
    developer_id integer
);


ALTER TABLE public.developers_games__games_developers OWNER TO wongames;

--
-- Name: developers_games__games_developers_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.developers_games__games_developers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.developers_games__games_developers_id_seq OWNER TO wongames;

--
-- Name: developers_games__games_developers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.developers_games__games_developers_id_seq OWNED BY public.developers_games__games_developers.id;


--
-- Name: developers_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.developers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.developers_id_seq OWNER TO wongames;

--
-- Name: developers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.developers_id_seq OWNED BY public.developers.id;


--
-- Name: games; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.games (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    short_description text,
    description text,
    price numeric(10,2),
    release_date date,
    rating character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    publisher integer
);


ALTER TABLE public.games OWNER TO wongames;

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO wongames;

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: games_platforms__platforms_games; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.games_platforms__platforms_games (
    id integer NOT NULL,
    game_id integer,
    platform_id integer
);


ALTER TABLE public.games_platforms__platforms_games OWNER TO wongames;

--
-- Name: games_platforms__platforms_games_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.games_platforms__platforms_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_platforms__platforms_games_id_seq OWNER TO wongames;

--
-- Name: games_platforms__platforms_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.games_platforms__platforms_games_id_seq OWNED BY public.games_platforms__platforms_games.id;


--
-- Name: i18n_locales; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.i18n_locales OWNER TO wongames;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locales_id_seq OWNER TO wongames;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;


--
-- Name: platforms; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.platforms (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.platforms OWNER TO wongames;

--
-- Name: platforms_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.platforms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.platforms_id_seq OWNER TO wongames;

--
-- Name: platforms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.platforms_id_seq OWNED BY public.platforms.id;


--
-- Name: publishers; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.publishers (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.publishers OWNER TO wongames;

--
-- Name: publishers_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publishers_id_seq OWNER TO wongames;

--
-- Name: publishers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.publishers_id_seq OWNED BY public.publishers.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);


ALTER TABLE public.strapi_administrator OWNER TO wongames;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO wongames;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO wongames;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO wongames;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO wongames;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO wongames;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO wongames;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO wongames;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO wongames;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO wongames;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO wongames;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO wongames;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO wongames;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO wongames;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO wongames;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO wongames;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO wongames;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO wongames;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: wongames
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."users-permissions_user" OWNER TO wongames;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: wongames
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO wongames;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wongames
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: categories_games__games_categories id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.categories_games__games_categories ALTER COLUMN id SET DEFAULT nextval('public.categories_games__games_categories_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: developers id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.developers ALTER COLUMN id SET DEFAULT nextval('public.developers_id_seq'::regclass);


--
-- Name: developers_games__games_developers id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.developers_games__games_developers ALTER COLUMN id SET DEFAULT nextval('public.developers_games__games_developers_id_seq'::regclass);


--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Name: games_platforms__platforms_games id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.games_platforms__platforms_games ALTER COLUMN id SET DEFAULT nextval('public.games_platforms__platforms_games_id_seq'::regclass);


--
-- Name: i18n_locales id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);


--
-- Name: platforms id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.platforms ALTER COLUMN id SET DEFAULT nextval('public.platforms_id_seq'::regclass);


--
-- Name: publishers id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.publishers ALTER COLUMN id SET DEFAULT nextval('public.publishers_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.categories (id, name, slug, created_by, updated_by, created_at, updated_at) FROM stdin;
2	Strategy	strategy	\N	\N	2022-04-29 14:16:55.025+00	2022-04-29 14:16:55.025+00
3	Turn-based	turn-based	\N	\N	2022-04-29 14:16:55.025+00	2022-04-29 14:16:55.025+00
4	Puzzle	puzzle	\N	\N	2022-04-29 14:16:55.025+00	2022-04-29 14:16:55.025+00
5	Simulation	simulation	\N	\N	2022-04-29 14:16:55.025+00	2022-04-29 14:16:55.025+00
6	Naval	naval	\N	\N	2022-04-29 14:16:55.035+00	2022-04-29 14:16:55.035+00
7	Shooter	shooter	\N	\N	2022-04-29 14:16:55.036+00	2022-04-29 14:16:55.036+00
8	Arcade	arcade	\N	\N	2022-04-29 14:16:55.121+00	2022-04-29 14:16:55.121+00
9	Fantasy	fantasy	\N	\N	2022-04-29 14:16:55.127+00	2022-04-29 14:16:55.127+00
10	Survival	survival	\N	\N	2022-04-29 14:16:55.128+00	2022-04-29 14:16:55.128+00
11	Role-playing	role-playing	\N	\N	2022-04-29 16:37:59.063+00	2022-04-29 16:37:59.063+00
12	Adventure	adventure	\N	\N	2022-04-29 16:37:59.063+00	2022-04-29 16:37:59.063+00
13	Action	action	\N	\N	2022-04-29 16:37:59.063+00	2022-04-29 16:37:59.063+00
14	Open World	open-world	\N	\N	2022-04-29 16:37:59.064+00	2022-04-29 16:37:59.064+00
15	TPP	tpp	\N	\N	2022-04-29 16:37:59.064+00	2022-04-29 16:37:59.064+00
16	Historical	historical	\N	\N	2022-04-29 16:37:59.064+00	2022-04-29 16:37:59.064+00
17	Horror	horror	\N	\N	2022-04-29 16:37:59.149+00	2022-04-29 16:37:59.149+00
18	Roguelike	roguelike	\N	\N	2022-04-29 16:37:59.15+00	2022-04-29 16:37:59.15+00
19	Stealth	stealth	\N	\N	2022-04-29 16:37:59.15+00	2022-04-29 16:37:59.15+00
20	Sci-fi	sci-fi	\N	\N	2022-04-29 16:37:59.159+00	2022-04-29 16:37:59.159+00
21	Real-time	real-time	\N	\N	2022-04-29 16:37:59.159+00	2022-04-29 16:37:59.159+00
22	FPP	fpp	\N	\N	2022-04-29 16:37:59.16+00	2022-04-29 16:37:59.16+00
23	Modern	modern	\N	\N	2022-04-29 16:37:59.16+00	2022-04-29 16:37:59.16+00
24	Managerial	managerial	\N	\N	2022-04-29 16:37:59.16+00	2022-04-29 16:37:59.16+00
25	Point-and-click	point-and-click	\N	\N	2022-04-29 16:37:59.16+00	2022-04-29 16:37:59.16+00
26	Combat	combat	\N	\N	2022-04-29 16:37:59.168+00	2022-04-29 16:37:59.168+00
27	Platformer	platformer	\N	\N	2022-04-29 16:37:59.242+00	2022-04-29 16:37:59.242+00
28	Building	building	\N	\N	2022-04-29 17:51:29.211+00	2022-04-29 17:51:29.211+00
\.


--
-- Data for Name: categories_games__games_categories; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.categories_games__games_categories (id, game_id, category_id) FROM stdin;
1	1	2
2	1	3
3	2	5
4	1	9
5	2	2
6	2	6
7	3	2
8	3	3
9	4	7
10	3	4
11	4	8
12	4	10
13	5	13
14	5	12
15	5	14
16	6	11
17	6	3
18	7	2
19	8	13
20	9	11
21	10	12
22	7	3
23	8	12
24	9	13
25	10	3
26	7	4
27	8	16
28	9	9
29	10	9
30	11	13
31	12	11
32	13	2
33	14	12
34	15	11
35	11	12
36	12	12
37	13	3
38	14	15
39	15	12
40	11	14
41	12	9
42	13	16
43	14	9
44	15	9
45	16	13
46	16	11
47	16	17
48	17	2
49	17	18
50	18	13
51	18	12
52	18	19
53	19	11
54	19	3
55	20	11
56	19	9
57	20	12
58	20	9
59	21	5
60	21	3
61	21	20
62	22	11
63	22	13
64	23	13
65	22	20
66	23	15
67	23	19
68	24	13
69	24	12
70	25	2
71	24	9
72	25	21
73	25	9
74	26	13
75	26	12
76	26	14
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
18	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
2	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
4	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
11	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
12	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object		
13	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
14	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object		
21	plugin_i18n_default_locale	"en"	string		
15	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
16	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
17	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object		
19	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
20	plugin_content_manager_configuration_content_types::plugins::i18n.locale	{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object		
22	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
23	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
1	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
24	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object		
3	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
5	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}	object	\N	\N
28	plugin_content_manager_configuration_content_types::application::platform.platform	{"uid":"application::platform.platform","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"games":{"edit":{"label":"Games","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Games","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","created_at"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}]],"editRelations":["games"]}}	object		
27	model_def_application::platform.platform	{"uid":"application::platform.platform","collectionName":"platforms","kind":"collectionType","info":{"name":"platform","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true,"unique":true},"slug":{"type":"uid","targetField":"name","required":true},"games":{"via":"platforms","collection":"game","attribute":"game","column":"id","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
10	model_def_plugins::i18n.locale	{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
25	model_def_application::category.category	{"uid":"application::category.category","collectionName":"categories","kind":"collectionType","info":{"name":"category","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true,"unique":true},"slug":{"type":"uid","targetField":"name","required":true},"games":{"via":"categories","collection":"game","attribute":"game","column":"id","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
32	plugin_content_manager_configuration_content_types::application::publisher.publisher	{"uid":"application::publisher.publisher","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"games":{"edit":{"label":"Games","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Games","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","created_at"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}]],"editRelations":["games"]}}	object		
29	model_def_application::developer.developer	{"uid":"application::developer.developer","collectionName":"developers","kind":"collectionType","info":{"name":"developer","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true,"unique":true},"slug":{"type":"uid","targetField":"name","required":true},"games":{"via":"developers","collection":"game","attribute":"game","column":"id","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
9	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
34	plugin_content_manager_configuration_content_types::application::game.game	{"uid":"application::game.game","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"short_description":{"edit":{"label":"Short_description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Short_description","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"price":{"edit":{"label":"Price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Price","searchable":true,"sortable":true}},"release_date":{"edit":{"label":"Release_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Release_date","searchable":true,"sortable":true}},"rating":{"edit":{"label":"Rating","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Rating","searchable":true,"sortable":true}},"cover":{"edit":{"label":"Cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cover","searchable":false,"sortable":false}},"gallery":{"edit":{"label":"Gallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Gallery","searchable":false,"sortable":false}},"categories":{"edit":{"label":"Categories","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Categories","searchable":false,"sortable":false}},"developers":{"edit":{"label":"Developers","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Developers","searchable":false,"sortable":false}},"platforms":{"edit":{"label":"Platforms","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Platforms","searchable":false,"sortable":false}},"publisher":{"edit":{"label":"Publisher","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Publisher","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","short_description"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"short_description","size":6}],[{"name":"description","size":12}],[{"name":"price","size":4},{"name":"release_date","size":4}],[{"name":"rating","size":6},{"name":"cover","size":6}],[{"name":"gallery","size":6}]],"editRelations":["categories","developers","platforms","publisher"]}}	object		
33	model_def_application::game.game	{"uid":"application::game.game","collectionName":"games","kind":"collectionType","info":{"name":"game","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true,"unique":true},"slug":{"type":"uid","targetField":"name","required":true},"short_description":{"type":"text","required":true,"maxLength":160},"description":{"type":"richtext","required":true},"price":{"type":"decimal","required":true,"default":0},"release_date":{"type":"date"},"rating":{"type":"enumeration","enum":["BR0","BR10","BR12","BR14","BR16","BR18"],"required":true},"cover":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"gallery":{"collection":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"categories":{"via":"games","collection":"category","dominant":true,"attribute":"category","column":"id","isVirtual":true},"developers":{"via":"games","collection":"developer","dominant":true,"attribute":"developer","column":"id","isVirtual":true},"platforms":{"via":"games","collection":"platform","dominant":true,"attribute":"platform","column":"id","isVirtual":true},"publisher":{"via":"games","model":"publisher"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
30	plugin_content_manager_configuration_content_types::application::developer.developer	{"uid":"application::developer.developer","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"games":{"edit":{"label":"Games","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Games","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","created_at"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}]],"editRelations":["games"]}}	object		
26	plugin_content_manager_configuration_content_types::application::category.category	{"uid":"application::category.category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"games":{"edit":{"label":"Games","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Games","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","created_at"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}]],"editRelations":["games"]}}	object		
31	model_def_application::publisher.publisher	{"uid":"application::publisher.publisher","collectionName":"publishers","kind":"collectionType","info":{"name":"publisher","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true,"unique":true},"slug":{"type":"uid","targetField":"name","required":true},"games":{"via":"publisher","collection":"game","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
8	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
6	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
7	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
\.


--
-- Data for Name: developers; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.developers (id, name, slug, created_by, updated_by, created_at, updated_at) FROM stdin;
1	Toukana Interactive	toukana-interactive	\N	\N	2022-04-29 11:59:48.641+00	2022-04-29 11:59:48.641+00
2	Killerfish Games	killerfish-games	\N	\N	2022-04-29 13:17:12.273+00	2022-04-29 13:17:12.273+00
3	MegaPixel Studio S.A.	megapixel-studio-s.a.	\N	\N	2022-04-29 14:16:55.023+00	2022-04-29 14:16:55.023+00
4	New World Computing, Inc.	new-world-computing-inc.	\N	\N	2022-04-29 14:16:55.024+00	2022-04-29 14:16:55.024+00
5	Owlcat Games	owlcat-games	\N	\N	2022-04-29 16:37:58.419+00	2022-04-29 16:37:58.419+00
6	United Front Games	united-front-games	\N	\N	2022-04-29 16:37:58.42+00	2022-04-29 16:37:58.42+00
7	Microids	microids	\N	\N	2022-04-29 16:37:58.42+00	2022-04-29 16:37:58.42+00
8	Ubisoft Montreal	ubisoft-montreal	\N	\N	2022-04-29 16:37:58.42+00	2022-04-29 16:37:58.42+00
9	BigWednesday	bigwednesday	\N	\N	2022-04-29 16:37:58.42+00	2022-04-29 16:37:58.42+00
10	Blizzard Entertainment, Inc.	blizzard-entertainment-inc.	\N	\N	2022-04-29 16:37:58.428+00	2022-04-29 16:37:58.428+00
11	Flashback Games	flashback-games	\N	\N	2022-04-29 16:37:58.428+00	2022-04-29 16:37:58.428+00
12	Hangar 13	hangar-13	\N	\N	2022-04-29 16:37:58.428+00	2022-04-29 16:37:58.428+00
13	Troika Games	troika-games	\N	\N	2022-04-29 16:37:58.428+00	2022-04-29 16:37:58.428+00
14	Red Nexus Games Inc.	red-nexus-games-inc.	\N	\N	2022-04-29 16:37:58.429+00	2022-04-29 16:37:58.429+00
15	Obsidian Entertainment	obsidian-entertainment	\N	\N	2022-04-29 16:37:58.52+00	2022-04-29 16:37:58.52+00
16	Konami Computer Entertainment Japan, Inc.	konami-computer-entertainment-japan-inc.	\N	\N	2022-04-29 16:37:58.521+00	2022-04-29 16:37:58.521+00
17	CD PROJEKT RED	cd-projekt-red	\N	\N	2022-04-29 16:37:58.526+00	2022-04-29 16:37:58.526+00
18	Asteroid Lab	asteroid-lab	\N	\N	2022-04-29 16:37:58.526+00	2022-04-29 16:37:58.526+00
19	Larian Studios	larian-studios	\N	\N	2022-04-29 16:37:58.527+00	2022-04-29 16:37:58.527+00
20	IO Interactive	io-interactive	\N	\N	2022-04-29 16:37:58.527+00	2022-04-29 16:37:58.527+00
21	Funcom	funcom	\N	\N	2022-04-29 16:37:58.527+00	2022-04-29 16:37:58.527+00
22	2K Czech	2k-czech	\N	\N	2022-04-29 16:37:58.527+00	2022-04-29 16:37:58.527+00
24	Legend Entertainment	legend-entertainment	\N	\N	2022-04-29 16:37:58.537+00	2022-04-29 16:37:58.537+00
25	Arcen Games	arcen-games	\N	\N	2022-04-29 16:37:58.607+00	2022-04-29 16:37:58.607+00
26	Mad Doc Software	mad-doc-software	\N	\N	2022-04-29 16:37:58.618+00	2022-04-29 16:37:58.618+00
27	Running With Scissors	running-with-scissors	\N	\N	2022-04-29 16:37:58.618+00	2022-04-29 16:37:58.618+00
28	Haemimont Games	haemimont-games	\N	\N	2022-04-29 16:37:58.618+00	2022-04-29 16:37:58.618+00
29	Bullfrog Productions	bullfrog-productions	\N	\N	2022-04-29 16:37:58.618+00	2022-04-29 16:37:58.618+00
30	Stainless Steel Studios	stainless-steel-studios	\N	\N	2022-04-29 16:37:58.619+00	2022-04-29 16:37:58.619+00
31	Artur Smiarowski	artur-smiarowski	\N	\N	2022-04-29 16:37:58.626+00	2022-04-29 16:37:58.626+00
32	Nival Interactive 	nival-interactive	\N	\N	2022-04-29 16:37:58.627+00	2022-04-29 16:37:58.627+00
33	Sean Weech	sean-weech	\N	\N	2022-04-29 16:37:58.627+00	2022-04-29 16:37:58.627+00
34	ConcernedApe	concernedape	\N	\N	2022-04-29 16:37:58.637+00	2022-04-29 16:37:58.637+00
35	Studio FOW Interactive	studio-fow-interactive	\N	\N	2022-04-29 16:37:58.718+00	2022-04-29 16:37:58.718+00
36	Askiisoft	askiisoft	\N	\N	2022-04-29 16:37:58.719+00	2022-04-29 16:37:58.719+00
37	btf	btf	\N	\N	2022-04-29 16:37:58.719+00	2022-04-29 16:37:58.719+00
38	Lucasfilm	lucasfilm	\N	\N	2022-04-29 16:37:58.719+00	2022-04-29 16:37:58.719+00
39	Massive Entertainment	massive-entertainment	\N	\N	2022-04-29 16:37:58.72+00	2022-04-29 16:37:58.72+00
41	Benjamin "ThingOnItsOwn" Hauer	-hauer	\N	\N	2022-04-29 17:37:35.785+00	2022-04-29 17:37:35.785+00
43	Bethesda Softworks	bethesda-softworks	\N	\N	2022-04-29 17:51:28.907+00	2022-04-29 17:51:28.907+00
44	Lapovich Team	lapovich-team	\N	\N	2022-04-29 17:51:28.953+00	2022-04-29 17:51:28.953+00
\.


--
-- Data for Name: developers_games__games_developers; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.developers_games__games_developers (id, game_id, developer_id) FROM stdin;
1	1	4
2	2	2
3	3	1
4	4	3
5	5	6
6	7	1
7	8	8
8	9	10
9	10	9
10	11	12
11	12	5
12	13	11
13	14	7
14	15	5
15	16	13
16	17	14
17	18	16
18	19	19
19	20	15
20	21	18
21	22	17
22	23	20
23	24	21
24	25	10
25	26	22
\.


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.games (id, name, slug, short_description, description, price, release_date, rating, created_by, updated_by, created_at, updated_at, publisher) FROM stdin;
1	Heroes of Might and Magic® 3: Complete	heroes-of-might-and-magic-3-complete-edition	Includes Heroes of Might & Magic III and its expansions: Armageddon's Blade and The Shadow of Death\nMurder, treachery, resurrection, savage battles and ultimate	<b>Includes Heroes of Might &amp; Magic III and its expansions: Armageddon's Blade and The Shadow of Death</b><br><br>\nMurder, treachery, resurrection, savage battles and ultimately-freedom!<br><br>When Erathia's King Gryphonheart is murdered by traitors he is resurrected as an undead warlord who leads a ruthless invasion of his former Kingdom. Little resistance is met until his daughter Catherine, Queen of Enroth, returns to her homeland commanding an army of elite Enrothian warriors. Meanwhile the Necromancers raise large hordes of undead and advance towards the Erathian capitol. Queen Catherine receives the aid of her father's survived generals and embarks on a crusade to reclaim her lost land.<br><br>You control the greatest heroes and fiercest creatures in a conflict of epic proportions, as Cathereine fights to restore her family's rightful reign, uncover her father's killers and free him from the dark prison of his undead body! <br><br>This is a must have for every Might and Magic series fan! \n\n                    <ul class="description__features"><li class="description__features-point">Insanely addictive gameplay that will make you want to play “just one more turn” over and over again</li><li class="description__features-point">Great multiplayer, especially when playing in hot seat mode on one PC</li></ul><p class="description__copyrights">\n            © 1999 Ubisoft Entertainment. All Rights Reserved. Heroes of Might and Magic, Heroes, Ubisoft, Ubi.com and the Ubisoft logo are trademarks of Ubisoft Entertainment in the U.S. and/or other countries.\n        </p>	5.00	1999-05-31	BR0	\N	\N	2022-04-29 16:58:08.897+00	2022-04-29 16:58:08.95+00	6
2	Cold Waters	cold-waters	After tracking a Soviet landing force bound for Iceland it is time to plan your attack. Do you silently close in to torpedo the landing ships and escape during 	<p style="font-style: italic;">After tracking a Soviet landing force bound for Iceland it is time to plan your attack. Do you silently close in to torpedo the landing ships and escape during the resulting chaos? Or strike with long-range missiles but risk counterattack from the enemy escorts? Have you detected them all, could another submarine be out there listening for you? Has the hunter become the hunted? Will you survive the Cold Waters?</p><br><br>\nInspired by the 1988 classic “Red Storm Rising”, command a nuclear submarine in a desperate attempt to prevent “mutually assured destruction” when the Cold War gets hot and WWIII begins.\n<br><br>\nYou will be tasked with intercepting convoys, amphibious landings, insertion missions and battling it out with enemy warships, submarines and aircraft. Thankfully, an arsenal of wire-guided torpedoes, anti-ship and cruise missiles and the occasional SEAL team are on board to keep the Iron Curtain at bay.\n<br><br>\nFeatures:\n\n\n                    <ul class="description__features"><li class="description__features-point">Real-time naval combat</li><li class="description__features-point">Over 40 classes of ships and submarines all meticulously researched</li><li class="description__features-point">Dynamic Campaign where your performance matters</li><li class="description__features-point">Realistic sonar model</li><li class="description__features-point">Authentic Soviet combat tactics</li></ul>	72.99	2017-06-04	BR0	\N	\N	2022-04-29 16:58:08.902+00	2022-04-29 16:58:08.952+00	4
3	Dorfromantik	dorfromantik	\n    \n    \n    \n            Dorfromantik is a relaxing building strategy and puzzle game in which you place tiles to create ever-growing, idyllic village landsc	\n    \n    \n    \n            Dorfromantik is a relaxing building strategy and puzzle game in which you place tiles to create ever-growing, idyllic village landscapes. With Dorfromantik, you can immerse yourself in a quiet, peaceful world at any time and take a break from everyday life. At the same time, Dorfromantik offers a challenge for those who are looking for one: To beat the highscore, you need to carefully plan and strategically place your tiles.\n<br><br><img width="100%" src="https://items.gog.com/dorfromantik/banner_gameplay_english.jpg"><br><br>\nIn Dorfromantik you start with a stack of procedurally generated tiles. One after the other, you draw the top tile of the stack, place it on one available slot and rotate for the best fit. Thereby groups and combinations of landscapes are formed, such as forests, villages or water bodies, and you are rewarded with points depending on how well the tile fits.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/dorfromantik/mp4/Gameplay_NEW_small.mp4" type="video/mp4"></video><br><br>\nOn some tiles you will also encounter special objects that give you a quest: For example, the windmill wants to border 6 grain fields, the locomotive wants to be connected to 10 tracks or the deer wants to inhabit a forest with at least 50 trees. Fulfill these quests to get more tiles to continue the expansion of your landscape. The game ends when the tile stack is used up.\n<br><br>\nAs you expand the landscape, you can advance into new, colorful biomes and discover pre-placed game objects that give you long-term tasks. Through these tasks you can unlock new tiles, new biomes and new quests.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/dorfromantik/mp4/Biom_Topdown_NEW_cropped.gif.mp4" type="video/mp4"></video><br><br><img width="100%" src="https://items.gog.com/dorfromantik/banner_features_english.jpg"><h4>What Dorfromantik offers</h4><ul class="bb_ul"><li>Building endless and beautiful landscapes\n<br></li><li>Unique mix of strategy and puzzle mechanics\n<br></li><li>Relaxing and calming gameplay\n<br></li><li>Idyllic village scenery\n<br></li><li>Strategic placement to beat the highscore\n<br></li><li>High replay value - every session is different\n<br></li><li>Many unlockable tiles and biomes\n<br></li><li>Original Artstyle with handpainted boardgame feel</li></ul><h4>What Dorfromantik does <b>not </b>offer</h4><ul class="bb_ul"><li>4X Strategy\n<br></li><li>Trading\n<br></li><li>Resource Management\n<br></li><li>Combat &amp; Violence\n<br></li><li>Multiplayer</li></ul><br><img width="100%" src="https://items.gog.com/dorfromantik/banner_modes_english.jpg"><br><br>\nDorfromantik offers options for any style of play! Take a short break from life in quick mode or try to master the game in hard mode. The Custom Mode allows you to create your own rulesets and share them with others, while monthly mode awaits you with a new challenge every month. If you just want to relax and build your own landscape with no limits, try the creative mode!\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/dorfromantik/mp4/gif_gamemodes_03_english_616px.gif.mp4" type="video/mp4"></video><br><br><img width="100%" src="https://items.gog.com/dorfromantik/banner_team_english.jpg"><br><br>\nDorfromantik was developed by four game design students from Berlin. Together we have founded Toukana Interactive and want to develop many more small, original and high-quality indie games in the future.\n<br><br>\nWe are happy about constructive feedback of all kinds, so feel free to contact us! We will do our best to respond to messages quickly and fix any problems that may arise. :)\n\n\n            \n            <p class="description__copyrights"><a href="https://toukana.com/dorfromantik/privacy-notice">https://toukana.com/dorfromantik/privacy-notice</a></p>	19.49	2021-03-24	BR0	\N	\N	2022-04-29 16:58:10.22+00	2022-04-29 16:58:10.26+00	3
4	THE HOUSE OF THE DEAD: Remake	the-house-of-the-dead-remake	THE HOUSE OF THE DEAD: Remake is a remade version of the game introduced in 1997 in arcade platform. A classic arcade rail-shooter receives a whole new entourag	<img src="https://items.gog.com/the_house_of_the_dead_remake/1.png"><br><br><b>THE HOUSE OF THE DEAD: Remake</b> is a remade version of the game introduced in 1997 in arcade platform. A classic arcade rail-shooter receives a whole new entourage and gameplay changes to suit modern gaming standards.\n<br><br><img src="https://items.gog.com/the_house_of_the_dead_remake/2.png"><br><img src="https://items.gog.com/the_house_of_the_dead_remake/3.png"><br><br><ul><li>Well known arcade classic with modern graphics and controls, including gyro aiming</li><li>True to the original gameplay</li><li>Local 2-player multiplayer</li><li>Multiple endings</li><li>Photomode</li><li>Achievements</li><li>Armory with unlockable weapons</li><li>Hordes of the undead monstrosities in a new game mode</li><li>Gallery with encountered enemies and bosses</li></ul><br><img src="https://items.gog.com/the_house_of_the_dead_remake/4.gif"><p class="description__copyrights">\n            © SEGA. All right reserved. Developed by MegaPixel Studio S.A. Published by Forever Entertainment S.A.\n        </p>	106.99	2022-04-27	BR0	\N	\N	2022-04-29 16:58:10.222+00	2022-04-29 16:58:10.261+00	5
5	Sleeping Dogs: Definitive Edition	sleeping-dogs-definitive-edition	\n    \n    \n    \n            The Definitive Edition of the critically acclaimed, award winning open-world action adventure, reworked, rebuilt and re-mastered for	\n    \n    \n    \n            The Definitive Edition of the critically acclaimed, award winning open-world action adventure, reworked, rebuilt and re-mastered for the new generation.  All 24 previously available DLC extensions have been integrated into the game, including the story-extending episode Year of the Snake and the horror-themed Nightmare in North Point.  Alongside a wealth of new technological, audio and visual improvements, Hong Kong has never felt so alive.\n<br><br>\nA vibrant, neon city teaming with life, Hong Kong’s exotic locations and busy streets and markets hide one of the most powerful and dangerous criminal organizations in the world: the notorious Triads.  Play as Wei Shen – the highly skilled undercover cop trying to take down the Triads from the inside out.  You'll have to prove yourself worthy as you fight your way up the organization, taking part in brutal criminal activities without blowing your cover.\n<br><br>\nDestroy your opponents in brutal hand-to-hand combat using an unmatched martial arts system.  Dominate Hong Kong’s buzzing streets in thrilling illegal street races and tear it up in explosive firearms action.  Sleeping Dogs’ Hong Kong is the ultimate playground.  \n<br><br>\nUndercover, the rules are different.<h4>Key Features:</h4>\nWith all 24 previously available DLC extensions included and a wealth of visual improvements, Hong Kong has never felt so alive.\n<br><br><ul class="bb_ul"><li><b>A mature, gritty undercover cop drama</b> where a wrong decision can blow your cover at any time.\n<br></li><li><b>Explosive action</b> fuelled by a seamless mix of deadly martial arts, intense gunfights and brutal takedowns.\n<br></li><li><b>Epic high-speed thrills:</b> Burn up the streets or tear up the sea in a vast array of exotic cars, superbikes and speedboats.\n<br></li><li><b>Hong Kong is your ultimate playground:</b> Enter illegal street races, gamble on cock fights, or kick back with some karaoke. There are countless ways to entertain yourself in Hong Kong's diverse districts.</li></ul><p class="description__copyrights">\n            SLEEPING DOGS : DEFINITIVE EDITION ©2014 Square Enix Ltd. All Rights Reserved. Published by Square Enix, Inc. 2014. Developed by United Front Games Ltd. SQUARE ENIX and the SQUARE ENIX logo are registered trademarks or trademarks of Square Enix Holdings Co., Ltd. SLEEPING DOGS, SLEEPING DOGS : DEFINITIVE EDITION and the SLEEPING DOGS logo are registered trademarks or trademarks of Square Enix Ltd.\n        </p>	8.39	2014-10-07	BR0	\N	\N	2022-04-29 17:08:37.347+00	2022-04-29 17:08:37.38+00	8
6	Hero's Hour	heros-hour	\nHero's Hour is an accessible, yet-deep and content-rich Strategy Roleplaying Game. Take control of your hero, explore the world, build up your town, fight fast	<a href="https://e3ccac1c.sibforms.com/serve/MUIEAD6_G59ijuEmBG2r4xvN7nBoWz73CVkxuGxJOP4f01u5Ou38iphfAB9NBBnWMweIIUOfA-2dKm3-SvWzCbbxnBxFyRkV7W9u546BZAXZJ2_EZS6i4VBnH6O63FCBT1ogBJ_PVuoyHswynPWgCpqB6I-v_V-jPEbLJrsM5R7HA85cXoP4etFUwZvSBPpL4rUsaPyRaPnOodit"><img src="https://items.gog.com/hero's_hour/HH_banner2.jpg"></a><br><br>\nHero's Hour is an accessible, yet-deep and content-rich Strategy Roleplaying Game. Take control of your hero, explore the world, build up your town, fight fast-paced battles, level up your hero and amass an army large enough to take out the opponents - before they take you out.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/hero's_hour/mp4/hero-explo.gif.mp4" type="video/mp4"></video><h4>Turn Based + Real Time</h4>\nWhile exploring the overworld and developing your town and army are both turn-based, giving you time to think and plan out your next moves, in battles your units will do the best to fight for themselves in real time - all hundreds of them. Cast spells and give attack orders to swing the tide of battle - or just sit back and watch as your might unfolds.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/hero's_hour/mp4/hero-fight.gif.mp4" type="video/mp4"></video><h4>Procedural Generation</h4>Hero's Hour brings impactful procedural generation to the strategy game formula, ensuring that every time you play, there will be new areas to explore and strange buildings to enhance your hero or army. Seek out obelisks to start you on small procedural quests that send you around the world. You won't even be able to use the same build order each time you play the same faction.<h4>Features</h4><ul class="bb_ul"><li>11 factions with special mechanics, strengths and weaknesses\n<br></li><li>22 hero classes, with a special skill each\n<br></li><li>50 common hero skills\n<br></li><li>177 units (and 99 upgraded units)\n<br></li><li>80 unique unit abilities\n<br></li><li>166 artifacts\n<br></li><li>83 spells (+18 spells unlocked via skills)\n<br></li><li>Dozens of impactful map buildings\n<br></li><li>Local "hotseat" multiplayer\n<br></li><li>Co-op with other players or even with the AI</li></ul><br>\nBeing on the faster side compared to other turn based strategy games, you may even be able to finish the hotseat games that you start!\n\n\n            \n    	34.99	2022-02-28	BR0	\N	\N	2022-04-29 17:08:40.353+00	2022-04-29 17:08:40.47+00	9
7	Dorfromantik + Soundtrack Vol 1 & 2	dorfromantik-soundtrack-bundle	\n    \n    \n    \n            Get Dorfromantik and its original superchill soundtrack by Laryssa Okada (Manifold Garden OST), Pygoscelis and OnlySound. Inspired b	\n    \n    \n    \n            Get Dorfromantik and its original superchill soundtrack by Laryssa Okada (Manifold Garden OST), Pygoscelis and OnlySound. Inspired by the warm and nostalgic memories of a childhood spent between city and countryside, these soothing and relaxing tracks created from a wide arrangement of different instruments and musical styles will take you on a peaceful but nonetheless dynamic journey through joyful soundscapes.\n\n<br><br><hr><br>\n\n\n\nDorfromantik is a relaxing building strategy and puzzle game in which you place tiles to create ever-growing, idyllic village landscapes. With Dorfromantik, you can immerse yourself in a quiet, peaceful world at any time and take a break from everyday life. At the same time, Dorfromantik offers a challenge for those who are looking for one: To beat the highscore, you need to carefully plan and strategically place your tiles.\n<br><br><img src="https://items.gog.com/dorfromantik/banner_gameplay_english.jpg"><br><br>\nIn Dorfromantik you start with a stack of procedurally generated tiles. One after the other, you draw the top tile of the stack, place it on one available slot and rotate for the best fit. Thereby groups and combinations of landscapes are formed, such as forests, villages or water bodies, and you are rewarded with points depending on how well the tile fits.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/dorfromantik/mp4/Gameplay_NEW_small.mp4" type="video/mp4"></video><br><br>\nOn some tiles you will also encounter special objects that give you a quest: For example, the windmill wants to border 6 grain fields, the locomotive wants to be connected to 10 tracks or the deer wants to inhabit a forest with at least 50 trees. Fulfill these quests to get more tiles to continue the expansion of your landscape. The game ends when the tile stack is used up.\n<br><br>\nAs you expand the landscape, you can advance into new, colorful biomes and discover pre-placed game objects that give you long-term tasks. Through these tasks you can unlock new tiles, new biomes and new quests.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/dorfromantik/mp4/Biom_Topdown_NEW_cropped.gif.mp4" type="video/mp4"></video><br><br><img src="https://items.gog.com/dorfromantik/banner_features_english.jpg"><h4>What Dorfromantik offers</h4><ul class="bb_ul"><li>Building endless and beautiful landscapes\n<br></li><li>Unique mix of strategy and puzzle mechanics\n<br></li><li>Relaxing and calming gameplay\n<br></li><li>Idyllic village scenery\n<br></li><li>Strategic placement to beat the highscore\n<br></li><li>High replay value - every session is different\n<br></li><li>Many unlockable tiles and biomes\n<br></li><li>Original Artstyle with handpainted boardgame feel</li></ul><h4>What Dorfromantik does <b>not </b>offer</h4><ul class="bb_ul"><li>4X Strategy\n<br></li><li>Trading\n<br></li><li>Resource Management\n<br></li><li>Combat &amp; Violence\n<br></li><li>Multiplayer</li></ul><br><img src="https://items.gog.com/dorfromantik/banner_modes_english.jpg"><br><br>\nDorfromantik offers options for any style of play! Take a short break from life in quick mode or try to master the game in hard mode. The Custom Mode allows you to create your own rulesets and share them with others, while monthly mode awaits you with a new challenge every month. If you just want to relax and build your own landscape with no limits, try the creative mode!\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/dorfromantik/mp4/gif_gamemodes_03_english_616px.gif.mp4" type="video/mp4"></video><br><br><img src="https://items.gog.com/dorfromantik/banner_team_english.jpg"><br><br>\nDorfromantik was developed by four game design students from Berlin. Together we have founded Toukana Interactive and want to develop many more small, original and high-quality indie games in the future.\n<br><br>\nWe are happy about constructive feedback of all kinds, so feel free to contact us! We will do our best to respond to messages quickly and fix any problems that may arise. :)\n\n\n\n            \n            <p class="description__copyrights"><a href="https://toukana.com/dorfromantik/privacy-notice">https://toukana.com/dorfromantik/privacy-notice</a></p>	37.69	2021-03-24	BR0	\N	\N	2022-04-29 17:08:40.359+00	2022-04-29 17:08:43.346+00	3
9	Diablo + Hellfire	diablo	\n        This game is part of your Welcome Offer!\n    \n        Get this game for a special price just for you!Find more excellent games at great discounts\n     	<div class="banner welcome-offer-banner" welcome-offer-banner="" timer="{{ welcomeOfferBanner.counter }}" ng-show="welcomeOfferBanner.isCounterReady &amp;&amp; !timer.finished" ng-cloak=""><div class="banner__header">\n        This game is part of your Welcome Offer!\n    </div><div class="welcome-offer-banner__description">\n        Get this game for a special price just for you!<br><a href="https://www.gog.com/welcome-offer">Find more excellent games at great discounts</a></div><div class="welcome-offer-banner__timer"><svg class="welcome-offer-banner__circular-progress-bar"><circle r="31" cx="31" cy="31" stroke-width="2" stroke-dasharray="{{ timer.percentage * 195 }} 195"></circle></svg><div class="welcome-offer-banner__timer-section" ng-bind="timer.hoursLeft"></div>\n        :\n        <div class="welcome-offer-banner__timer-section" ng-bind="timer.minutesLeft"></div>\n        :\n        <div class="welcome-offer-banner__timer-section" ng-bind="timer.secondsLeft"></div></div></div><h3 style="text-align: center;">Now with Hellfire!</h3><br><p>Originally developed by Synergistic Software and released in 1997, Hellfire was not an official Blizzard product and did not carry Blizzard’s endorsement or label. Despite that, in response to Diablo players who have expressed a desire to experience the content, Blizzard has given the OK for it to be included as a free add-on with Diablo purchases on GOG.COM.\n<br><br>\nHellfire offers a non-canonical single-player storyline where players must defeat a powerful demon named Na-Krul who is threatening Tristram. The expansion also adds a Monk class, new weapons and items, new missions, locations, dungeons, and enemies. Hellfire will be accessible while launching the original Diablo.</p><br><hr><br><i>Traveler, stay awhile and listen...</i><br><br>\n\nDarkness stirs beneath Tristram.\nAn ancient evil sweeps across the land, plunging it into civil war and terrorizing the populace. A mad king, his missing son, and a mysterious archbishop are all pieces of the puzzle you need to hack through.\nYou have journeyed to the source of this evil. The town of Tristram - now inhabited only by a handful of survivors, broken and twisted by the madness that has befallen them. A cathedral stands there, built over the ruins of an ancient monastery. Eerie lights and ungodly sounds are heard echoing through its abandoned halls, and that is where you shall venture.<br><br><i>Embark, if you dare, on a quest to destroy The Prime Evil…</i><br><br><ul><li>Experience the legendary action/RPG that influenced an entire genre.</li><li>Storm Diablo's halls as either a Warrior, a Sorcerer or a Rogue - each with unique skills and abilities.</li><li>Unite to destroy Diablo - up to 4 players can band together via Internet, or play head-to-head via LAN.</li><li>Unprecedented replayability - over 200 different monsters inhabit Diablo's ever-changing labyrinth. Equip epic items to conquer fearsome bosses and their minions.</li><li>A spine-chilling story - experience the horror of a world held in the grasp of The Lord of Terror.</li></ul><br><i>Ahhh, fresh meat!</i><br><br>\n\nTravelers looking for the authentic Diablo experience can play the game as it was in 1996, with period-appropriate 20 FPS SVGA graphics, and the ability to matchmake through the classic version of Blizzard’s Battle.net® online-gaming service. \n<br>\nFor those wanting something a bit more modern, Blizzard and GOG.COM have collaborated on an updated version of the game tuned for today’s gaming PCs, which includes out-of-the-box Windows 10 compatibility, a host of bug fixes and high-resolution support via aspect ratio-correct upscaling.\n<br><br><ul><li>The most voted game on the GOG.com wishlist, finally trapped in a DRM-free soulstone!</li><li>Return to the beginning of this dark saga, now in digital format for the first time ever.</li><li>Better value than Wirt's wares, guaranteed.</li></ul><br><p class="module">Battle.net® multiplayer requires you to configure the Router and Firewall Ports, details can be found <a href="https://us.battle.net/support/en/article/209881">here.</a></p><p class="description__copyrights">\n            ©2019 Blizzard Entertainment, Inc. All rights reserved.\n        </p>	40.49	1996-12-30	BR0	\N	\N	2022-04-29 17:08:40.359+00	2022-04-29 17:08:43.347+00	12
10	The Heart of Darkness	the-heart-of-darkness	\n"Oh, Cursed Saintess, will your soul find the light, or will you forever be lost in the darkness?"\n\nA terrible curse blankets the kingdom in shadows, thrusting	<a href="https://discord.gg/kaguragames" target="_blank" rel="noopener"><img src="https://items.gog.com/the_heart_of_darkness/Steam_Page_Discord-EN.png"></a><br><hr><br><img src="https://items.gog.com/the_heart_of_darkness/The_Heart_of_Darkness_Description_1-EN.png"><br>\n"Oh, Cursed Saintess, will your soul find the light, or will you forever be lost in the darkness?"\n<br><br>\nA terrible curse blankets the kingdom in shadows, thrusting it into utter despair and erasing all light. One day, a maiden appears from the north and chases away the darkness, reintroducing light across the land. However, after taking in all the shadows, the maiden is consumed by evil, allowing it to flood out of her body. In a final attempt to seal that which escaped, the maiden locks herself away.\n<br><br>\nThe king, driven by fear, demands the death of the maiden to save his kingdom. Many warriors journey forth in an attempt to slay the maiden, but the darkness curses all who dare to encroach, creating an even greater evil that consumes the kingdom. Take up arms as the next brave warrior to save the land and expel the shadows!\n<br><br><img src="https://items.gog.com/the_heart_of_darkness/The_Heart_of_Darkness_Description_2-EN.png"><br>\nChoose between one of five origins: the lives of people who fell just short of becoming heroes, all with different skills and abilities. Inherit one of their bodies as your own and begin your heroic journey. The Heart of Darkness has multiple endings depending on the origin you choose and the decisions you make throughout your adventure.\n<br><br>\nEnjoy quick turn-based battles where strategy and choice of allies are key! Find Shadow Souls—the spirits of warriors past—and enlist their aid in battle! Each has its own unique backstory and abilities and can be swapped out freely.\n<br><br>\nThroughout your adventure, meet both friends and foes also exploring the Sanctuary. Take on quests to lay low powerful beasts or track down family heirlooms for fallen noble houses. Manage the Doll's Repose, your base of operations where you can learn more about the world, craft new equipment, and expand the mansion to contain new facilities!\n<br><br>\nUnravel the mysteries shrouding the Sanctuary of Darkness and its inhabitants in this sinister RPG brought to you by Kagura Games and BigWednesday.\n<br><br><img src="https://items.gog.com/the_heart_of_darkness/The_Heart_of_Darkness_Description_3-EN.png"><br><img src="https://items.gog.com/the_heart_of_darkness/The_Heart_of_Darkness_Description_3-EN-1.png"><br><img src="https://items.gog.com/the_heart_of_darkness/The_Heart_of_Darkness_Description_3-EN-2.png"><br><img src="https://items.gog.com/the_heart_of_darkness/The_Heart_of_Darkness_Description_3-EN-3.png"><br><br><img src="https://items.gog.com/the_heart_of_darkness/The_Heart_of_Darkness_Description_4-EN.png"><br><b>Dark Fantasy Story</b><br>\nThe Kingdom of Haillard is one of humanity's most remote frontiers, and many adventurers go mad trying to brave the dangers of the Sanctuary. What will your fate be?\n<br><br><b>Multiple Classes</b><br>\nChoose a class that suits your playstyle, influencing both the way you experience combat as well as how your story will play out.\n<br><br><b>Several Shadow Soul Allies</b><br>\nFind souls of heroes past and recruit them to aid you on your quest, leveling them as you see fit.\n<br><br><b>Quick Strategic Combat</b><br>\nMake use of both your own abilities and those of the Shadow Souls, and use status effects to your advantage in battle.\n<br><br><b>Large Cast of Characters</b><br>\nFrom noble hunters to cowardly looters, meet several colorful characters while exploring the Sanctuary and see how their stories unfold.\n<br><br><p class="module">This Game may contain content not appropriate for all ages or may not be appropriate for viewing at work.\n<br>\nThis is a censored version of the game. For more information about the games' content please visit <a href="https://www.kaguragames.com">Kagura Games</a></p><br><p class="description__copyrights">\n            © Kagura Games and BigWednesday, All Rights Reserved.\n        </p>	34.19	2022-04-15	BR0	\N	\N	2022-04-29 17:08:40.36+00	2022-04-29 17:08:43.347+00	11
8	Assassin's Creed®: Director's Cut	assassins-creed-directors-cut	\n    \n    \n    \n            Assassin’s Creed® is a game that redefined the action-adventure genre. With photo-realistic graphics, an advanced physics model, and	\n    \n    \n    \n            Assassin’s Creed<sup>®</sup> is a game that redefined the action-adventure genre. With photo-realistic graphics, an advanced physics model, and a nearly fanatical attention to detail, this title was able to begin a new chapter in gaming history. However, the excellent technical aspects are only half of the reason why it became so popular; the other half is the story.\n<br><br>\nWhile you technically play the game as Desmond Miles, the main focus of the game takes place elsewhere. The year is 1191: Jerusalem, the middle of the Third Crusade. You are a member of a mysterious order of assassins where you have trained your whole life to do one thing and one thing only – to kill. The recently growing influence of the Order of the Knights Templar disturbs the delicate balance of power in the region and therefore directly threatens The Brotherhood. The clash of the two most powerful organizations in Jerusalem at the time has the most unexpected consequences and triggers devastating events that threaten the world itself, and you – Altaïr Ibn-La'Ahad – are in the middle of all this.\n<br><ul class="description__features"><li class="description__features-point">Well-constructed story that will pleasantly surprise you many times along the way.</li><li class="description__features-point">Impressive level of interaction with the environment – crowds react to what you do and act accordingly.</li><li class="description__features-point">Open world gameplay lets you to decide how and when to achieve objectives, where to go, and gives you nearly complete freedom to get there.</li></ul><p class="description__copyrights">\n            © 2008 Ubisoft Entertainment. All Rights Reserved. Assassin’s Creed, Ubisoft, and the Ubisoft logo are trademarks of Ubisoft Entertainment in the US and/or other countries.\n        </p>	18.00	2008-04-07	BR0	\N	\N	2022-04-29 17:08:40.359+00	2022-04-29 17:08:43.347+00	6
11	Mafia III Deluxe Edition	mafia-iii-deluxe-edition	\nMafia III Deluxe Edition includes Mafia III and the following DLCs: Mafia III: Family Kick Back Pack, Mafia III: Faster, Baby!, Mafia III: Sign of the Times, M	<p class="module" style="padding: 15px; margin-top: 5px;"><span style="font-weight: 600; display: block; padding-bottom: 2px;">\nMafia III Deluxe Edition includes Mafia III and the following DLCs: Mafia III: Family Kick Back Pack, Mafia III: Faster, Baby!, Mafia III: Sign of the Times, Mafia III: Stones Unturned, and Mafia III: Judge, Jury and Executioner Weapon Pack.</span></p><br><br>\nIt’s 1968 and after years of combat in Vietnam, Lincoln Clay knows this truth: family isn’t who you’re born with, it’s who you die for. Now back home in New Bordeaux, Lincoln is set on escaping a criminal past. But when his surrogate family, the black mob, is betrayed and wiped out by the Italian Mafia, Lincoln builds a new family on the ashes of the old and blazes a path of military-grade revenge through those responsible. Intense gun fights, visceral hand-to-hand combat, white knuckle driving and street smarts will all be needed. But with the right crew, tough decisions and some dirty hands, it’s possible to make it to the top of the city's underworld.\n\n<br><br>\nNEW BORDEAUX, A REIMAGINED 1968 NEW ORLEANS:<br>\nA vast, diverse and seedy open world ruled by the mob and corrupt officials and richly detailed with the sights, sounds and emotionally-charged social atmosphere of the era.\n<br><br>\nAN UNINTENDED AND LETHAL ANTI-HERO:<br>\nBe Lincoln Clay, an orphan and Vietnam veteran hell bent on revenge against the Italian Mafia for the brutal slaughter of the black mob, the closest thing to family he’s ever had.\n<br><br>\nREVENGE YOUR WAY:<br>\nChoose your own personal play-style, from brute force and blazing guns to stalk-and-kill tactics as you use Lincoln’s military training and gathered intel to tear down the Italian Mafia.\n<br><br>\nA NEW FAMILY ON THE ASHES OF THE OLD:<br>\nBuild a new criminal empire in your own unique way by deciding which of your lieutenants you reward, and which you betray…\n\n            \n            <p class="description__copyrights">\n            © 2018 TAKE-TWO INTERACTIVE SOFTWARE, INC. DEVELOPED BY HANGAR 13. MAFIA, TAKE-TWO INTERACTIVE SOFTWARE, 2K, HANGAR 13, AND THEIR RESPECTIVE LOGOS ARE ALL TRADEMARKS AND/OR REGISTERED TRADEMARKS OF TAKE-TWO INTERACTIVE SOFTWARE, INC. THE RATINGS ICON IS A TRADEMARK OF THE ENTERTAINMENT SOFTWARE ASSOCIATION. ALL OTHER MARKS ARE PROPERTY OF THEIR RESPECTIVE OWNERS. ALL RIGHTS RESERVED.\n        </p>	38.69	2016-10-06	BR0	\N	\N	2022-04-29 17:08:43.369+00	2022-04-29 17:08:43.544+00	14
13	Panzer Corps 2	panzer-corps-2	Panzer Corps 2 is the ultimate Second World War strategy game. Enjoy the time-proven gameplay formula which has been appreciated by millions of players over the	<b>Panzer Corps 2 </b>is the ultimate Second World War strategy game. Enjoy the time-proven gameplay formula which has been appreciated by millions of players over the years, brought to a whole new level of refinement up to the latest technical standards.<br>\nEasy to play and at the same time extremely deep, its fine-tuned turn-based gameplay style means that it’s the quality of your decisions, not the speed of clicking, which will determine the outcome of your battles. Don’t outpace your enemies, outsmart them!<br>\nIn-depth gameplay mechanics model unit movement, combat, spotting, encirclements, weather, capturing enemy equipment and much more.\n<h4><b>A MASSIVE AMOUNT OF CONTENT</b></h4>\nPanzer Corps 2 is all about content. You can play for every major power in the European theatre of the Second World War, and unleash over a whopping 1000 unique different units on your enemies! Every single unit in the game has been painstakingly modelled and animated. No other game covers as many authentic World War II vehicles as Panzer Corps 2!\n\n<h4><b>ALL OF WORLD WAR II AT YOUR FINGERTIPS</b></h4>\nPanzer Corps 2 comes with a massive branching campaign including around 60 scenarios: lead the Wehrmacht in the entirety of World War II, carrying over your battle-hardened veterans from one battle to the next.<br>\n\n4 additional single player scenarios are available and another 10 scenarios carefully designed for a balanced Multiplayer experience. On top of that there is an advanced random map generator for Skirmish mode, offering six distinct map types and four mission types.\n<h4><b>THE ULTIMATE WARGAME ONLINE EXPERIENCE</b></h4>\nChallenge your friends or play on coop against the AI. Panzer Corps 2 offers a wide range of Multiplayer options: hot seat, server-assisted play-by-email (Slitherine’s PBEM++) mode, and a true online Multiplayer. In the latter mode it is even possible to play your turns simultaneously with your coop partner, which basically reduces waiting times to zero!\n\n<h4><b>A COMPREHENSIVE EDITOR</b></h4>\nModding was always big with Panzer Corps series. For this reason, Panzer Corps 2 includes the most powerful Scenario Editor we have ever created, which is also very user friendly and easy to use. Using the Editor, you can create your own campaigns, single scenarios and multiplayer maps in no time, or you can enjoy content created by fellow players. If the prequel game is any indication, literally hundreds of user-made scenarios will be available for Panzer Corps 2 in no time, for unlimited replayability!\n\n<h4><b>Features:</b></h4><ul><li>Around 60 scenarios of the European theatre of the Second World War</li><li>10 additional single player scenarios available</li><li>Another 10 scenarios carefully designed for a balanced Multiplayer experience</li><li>Over a whopping 1000 unique different units</li><li>Every single unit in the game painstakingly modelled and animated</li><li>Advanced random map generator for Skirmish mode, offering six distinct map types and four mission types</li><li>A wide range of Multiplayer options: hot seat, server-assisted play-by-email (Slitherine’s PBEM++) mode, and a true online Multiplayer. In the latter mode it is even possible to play your turns simultaneously with your coop partner, which basically reduces waiting times to zero!</li><li>Very user friendly and easy to use scenario editor</li></ul><p class="description__copyrights">\n            © 2020 Slitherine Ltd. and Matrix Games Ltd. All Rights Reserved. Panzer Corps, Slitherine Ltd., Matrix Games Ltd., and their Logos are all trademarks of Slitherine Ltd. All other marks and trademarks are the property of their respective owners. Developed by Flashback Games and Slitherine. \n        </p>	75.49	2020-03-18	BR0	\N	\N	2022-04-29 17:08:43.37+00	2022-04-29 17:08:43.544+00	13
14	Syberia 3: The Complete Journey	syberia-3-the-complete-journey	\n    \n    \n    \n            Syberia 3: The Complete Journey includes Syberia 3 and the An Automaton With a Plan DLC.\nAuthor and creator : Benoît Sokal\nThe limit	\n    \n    \n    \n            Syberia 3: The Complete Journey includes Syberia 3 and the An Automaton With a Plan DLC.\n<br><br><b>Author and creator : Benoît Sokal</b><br><br>\nThe limitless imagination of Benoît Sokal continues in Syberia 3, focusing on an entirely new adventure. After abandoning the island, Kate is found dying on the edge of a river by the Youkole tribe, a nomadic people migrating with their snow ostriches. Stuck in Valsembor village, together they must find a way to continue their journey in a race against their enemies and unexpected obstacles, not to mention Kate's past, which catches up with her.\n<br><br>\nThe next generation in adventure games, Syberia 3 takes you inside an enchanting, mysterious universe full of life for you to explore in 3D. Plunged into the heart of a world inhabited by a cast of interesting characters, you'll discover and experience a fabulous tale as imagined by Benoit Sokal.\n<br><br><b>An Automaton with a Plan</b><br><br>\nDiscover "An Automaton with a Plan", a new adventure that takes place in the enchanted world of Syberia 3! Play as Oscar, the famous automat, and unravel the mystery of Kate Walker's disappearance! \n<br><br>\nOscar is far more than just a metal heart… He's also a sharp-witted detective and unwitting comedian who will surprise you at every turn! \nEnjoy a story full of suspense and humor in the world of Syberia 3, created and drawn by Benoit Sokal.\n\n                    <ul class="description__features"><li class="description__features-point">A brand new tale, completely different from the first two Syberia games</li><li class="description__features-point">Exceptionally immersive storytelling, multiplied by Benoit Sokal's unparalleled artistic direction</li><li class="description__features-point">Explore Benoit Sokal's poetic universe in 3D for the first time</li><li class="description__features-point">Original score by Inon Zur (Syberia 2, Fallout, Dragon Age, Prince of Persia)</li><li class="description__features-point">Original, real-time 3D puzzles and mysteries</li></ul><p class="description__copyrights">\n            ©2017 Anuman Interactive SA. All rights reserved. Developped by Microïds and Koalabs. Published by Anuman Interactive SA. Author and Artistic Director : Benoit Sokal. Microïds is a trademark of Anuman Interactive SA. All rights reserved.\n        </p>	9.98	2017-04-19	BR0	\N	\N	2022-04-29 17:08:43.371+00	2022-04-29 17:08:43.548+00	10
12	Pathfinder: Wrath of the Righteous - Mythic Edition	pathfinder-wrath-of-the-righteous-mythic-edition	Brace yourself for new adventures set in your favorite universe thanks to the Inevitable Excess DLC!Discover the StoryYour path will lead you to the Worldwound,	<p class="module">Brace yourself for new adventures set in your favorite universe thanks to the&nbsp;<a href="https://www.gog.com/game/pathfinder_wrath_of_the_righteous_inevitable_excess">Inevitable Excess DLC</a>!</p><br><br><h4>Discover the Story</h4>Your path will lead you to the Worldwound, where the opening of a rift to the Abyss has unleashed all-consuming terror across the land. For over a century, the neighboring nations have fought fearlessly, trying to drive the enemy back — but to little avail. \n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/pathfinder_wrath_of_the_righteous/PF2__4_1.webm"></video><br>\nNow, you have the chance to put an end to this conflict, but the path to salvation is far from clear-cut. Will you become a shining angel, backed by noble paladins? Or a powerful necromancer with hordes of immortal undead in your thrall? Or something else entirely? Lead your army and challenge mighty demon lords. Your crusade will set in motion a chain of events that will leave you — and the world itself — forever changed.<h4>PLAY YOUR HERO, YOUR WAY</h4>Create any character imaginable with the flexibility, richness, and depth of the Pathfinder First Edition ruleset. Choose from 25 classes, 12 character races, and more than a thousand spells, feats, and abilities to suit your personal playstyle.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/pathfinder_wrath_of_the_righteous/PF2__9_.webm"></video><h4>FOR EVERY CHOICE, A CONSEQUENCE</h4>Your decisions have more weight than ever before. Your goal is clear, but you must forge your own path to it. Who will die, and who will live? Who will stay, and who will go? Make your choices, and watch the world around you change.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/pathfinder_wrath_of_the_righteous/PF2__6_.webm"></video><h4>A NEW WAY TO FIGHT</h4>Enjoy two combat modes as you slay your enemies – real-time with pause or turn-based. Switch between them on the fly, so you can always take things as slowly — or as quickly — as you like. The unique Pathfinder ruleset also allows you to perform advanced combat maneuvers, like mounted combat. Use them wisely!\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/pathfinder_wrath_of_the_righteous/PF2__7_.webm"></video><h4>GATHER YOUR PARTY</h4>A cast of more than 10 unique companions is ready to join your cause. Earn their trust and respect, and they will have your back no matter what dangers lie ahead. And if you get on their bad side, well… Maybe it’s time to part ways. \n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/pathfinder_wrath_of_the_righteous/PF2__8_.webm"></video><h4>LEAD THE CRUSADE</h4>You will need much more than a party of adventurers to cleanse the land of its demonic scourge. Take command of the crusaders and lead them to victory – both as a strategist, controlling the battle from above, and as a field commander, in a new tactical combat mode.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/pathfinder_wrath_of_the_righteous/PF2__3_.webm"></video><h4>CHOOSE YOUR PATH</h4>Explore nine unique Mythic Paths: obtain extraordinary abilities and shape everything that comes next. Your decisions might transform you into a celestial Angel, a raging Demon, a powerful Lich, a cunning Trickster, an otherworldly Aeon, a rebellious Azata, a wise Gold Dragon, an insatiable Swarm That Walks — or remain mortal and walk the arduous path toward becoming a living Legend.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/pathfinder_wrath_of_the_righteous/PF2__1_.webm"></video><hr><br><br><b>Pathfinder: Wrath of the Righteous - Mythic Edition</b> Includes:<br><br><b></b><ul><b></b><li><b>Game Copy</b></li><b></b><li><b>Digital Artbook</b><br>\nExplore the beautiful art of the Pathfinder universe in this 192-page long artbook made by our talented artists and designers!\n</li><b></b><li><b>Digital OST</b><br>\nRelive the beautiful soundtrack, crafted by a team of talented composers at any time in the best format available. Includes tracks in FLAC and MP3 quality.\n</li><b></b><li><b>Digital Map</b><br>\nThis world map can serve as a fine decoration or as a guide through the world of Pathfinder: WotR!\n</li><b></b><li><b>In-game item - Magnificent Plume Hat</b><br>\nThis fancy hat will keep your head safe at all times! Provides a bonus to maximum HP and an immeasurable increase in style!\n</li><b></b><li><b>In-game item - Ratcatcher's Goggles</b><br>\nEven the smallest creatures won’t escape your attacks if you wear a pair of these lenses! Provides a bonus on damage rolls against swarms.\n</li><b></b><li><b>In-game item - Dashing Cavalier's Gloves</b><br>\nBe the master of both mounted and ground combat. Gives a bonus to morale on mounted and regular attack damage rolls.\n</li><b></b><li><b>In-game item - Righteous Exorcist's Bracers</b><br>\nBecome the bane of all demons! These bracers will increase morale on damage rolls against creatures of the Abyss.\n</li><b></b><li><b>Season Pass</b><br>\nGet access to the three upcoming DLCs and save on purchasing them individually:<br></li></ul><h4>DLC #1:</h4>\nNew additional campaign. Import your character from the main campaign to the moment of their greatest triumph — their victory over the Worldwound. Answer a plea from a powerful entity and leave Golarion behind to defend the space-time continuum against imminent collapse. Use your unparalleled mythic powers to do battle with truly invincible opponents. This additional campaign offers 7–8 hours of gameplay.\n\n<h4>DLC #2:</h4>\nNew additional campaign. The demon attack on Kenabres changed the lives of many. While the mythic hero and their loyal companions were busy liberating the city, the common folk had to find a way to survive, relying only on their humble skills.\nBand together with other survivors and try to reach the Defender's Heart tavern, the last foothold of the crusader forces in the city. Choose who will join your group, and make difficult decisions about allocating scarce resources. Remember — in fire-ravaged Kenabres, every scroll and potion could make the difference not only in an individual fight but also to your very survival. Act in the group's best interests or focus solely on your own well-being. Import your choices to the main campaign and look forward to seeing this story develop in other DLC. This additional campaign offers 6–7 hours of gameplay.\n\n<h4>DLC #3:</h4>\nA new rogue-like mode with partial integration into the main campaign. In Alushinyrra's port, climb aboard a cursed ship that will transport you to a mysterious whirlpool lost amidst the Midnight Isles. Dive in and discover a dungeon whose proportions you can only guess at. Go exploring in search of glory, loot, and battles, and come face to face with a secret that will benefit either Nocticula, the mistress of the archipelago, or her enemies. The dungeon's levels, created using random zone generation, are populated with various enemies, devious traps, and secret rooms. You will return victorious to Alushinyrra — or else the cursed ship will return on its own, laden with trophies from the last expedition, to await new adventure-seekers.\n\n\n\n            \n    	296.99	2021-09-01	BR0	\N	\N	2022-04-29 17:08:43.37+00	2022-04-29 17:08:43.547+00	7
15	Pathfinder: Wrath of the Righteous - Core Edition	pathfinder-wrath-of-the-righteous	Brace yourself for new adventures set in your favorite universe thanks to the Inevitable Excess DLC!\nYou can also get Pathfinder: Wrath of the Righteous - Seaso	<p class="module">Brace yourself for new adventures set in your favorite universe thanks to the&nbsp;<a href="https://www.gog.com/game/pathfinder_wrath_of_the_righteous_inevitable_excess">Inevitable Excess DLC</a>!</p><br><br><div style="overflow: hidden;"><a href="https://www.gog.com/game/pathfinder_wrath_of_the_righteous_season_pas"><img src="https://items.gog.com/pathfinder_wrath_of_the_righteous/main_main_PATHFINDER_WOTR_SEASON_PASS.png" style="margin: 5px 15px 0 10px; float: left; width: 250px"></a><span style="display: block;"><br><br>\nYou can also get <b>Pathfinder: Wrath of the Righteous - Season Pass</b><a href="https://www.gog.com/game/pathfinder_wrath_of_the_righteous_season_pass"> here.</a></span></div><hr><br><h4>Discover the Story</h4>Your path will lead you to the Worldwound, where the opening of a rift to the Abyss has unleashed all-consuming terror across the land. For over a century, the neighboring nations have fought fearlessly, trying to drive the enemy back — but to little avail. \n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/pathfinder_wrath_of_the_righteous/PF2__4_1.webm"></video><br>\nNow, you have the chance to put an end to this conflict, but the path to salvation is far from clear-cut. Will you become a shining angel, backed by noble paladins? Or a powerful necromancer with hordes of immortal undead in your thrall? Or something else entirely? Lead your army and challenge mighty demon lords. Your crusade will set in motion a chain of events that will leave you — and the world itself — forever changed.<h4>PLAY YOUR HERO, YOUR WAY</h4>Create any character imaginable with the flexibility, richness, and depth of the Pathfinder First Edition ruleset. Choose from 25 classes, 12 character races, and more than a thousand spells, feats, and abilities to suit your personal playstyle.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/pathfinder_wrath_of_the_righteous/PF2__9_.webm"></video><h4>FOR EVERY CHOICE, A CONSEQUENCE</h4>Your decisions have more weight than ever before. Your goal is clear, but you must forge your own path to it. Who will die, and who will live? Who will stay, and who will go? Make your choices, and watch the world around you change.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/pathfinder_wrath_of_the_righteous/PF2__6_.webm"></video><h4>A NEW WAY TO FIGHT</h4>Enjoy two combat modes as you slay your enemies – real-time with pause or turn-based. Switch between them on the fly, so you can always take things as slowly — or as quickly — as you like. The unique Pathfinder ruleset also allows you to perform advanced combat maneuvers, like mounted combat. Use them wisely!\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/pathfinder_wrath_of_the_righteous/PF2__7_.webm"></video><h4>GATHER YOUR PARTY</h4>A cast of more than 10 unique companions is ready to join your cause. Earn their trust and respect, and they will have your back no matter what dangers lie ahead. And if you get on their bad side, well… Maybe it’s time to part ways. \n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/pathfinder_wrath_of_the_righteous/PF2__8_.webm"></video><h4>LEAD THE CRUSADE</h4>You will need much more than a party of adventurers to cleanse the land of its demonic scourge. Take command of the crusaders and lead them to victory – both as a strategist, controlling the battle from above, and as a field commander, in a new tactical combat mode.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/pathfinder_wrath_of_the_righteous/PF2__3_.webm"></video><h4>CHOOSE YOUR PATH</h4>Explore nine unique Mythic Paths: obtain extraordinary abilities and shape everything that comes next. Your decisions might transform you into a celestial Angel, a raging Demon, a powerful Lich, a cunning Trickster, an otherworldly Aeon, a rebellious Azata, a wise Gold Dragon, an insatiable Swarm That Walks — or remain mortal and walk the arduous path toward becoming a living Legend.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/pathfinder_wrath_of_the_righteous/PF2__1_.webm"></video>	149.99	2021-09-01	BR0	\N	\N	2022-04-29 17:08:43.371+00	2022-04-29 17:08:43.551+00	7
16	Vampire®: The Masquerade - Bloodlines™	vampire-the-masquerade-bloodlines	\n        This game is part of your Welcome Offer!\n    \n        Get this game for a special price just for you!Find more excellent games at great discounts\n     	<div class="banner welcome-offer-banner" welcome-offer-banner="" timer="{{ welcomeOfferBanner.counter }}" ng-show="welcomeOfferBanner.isCounterReady &amp;&amp; !timer.finished" ng-cloak=""><div class="banner__header">\n        This game is part of your Welcome Offer!\n    </div><div class="welcome-offer-banner__description">\n        Get this game for a special price just for you!<br><a href="https://www.gog.com/welcome-offer">Find more excellent games at great discounts</a></div><div class="welcome-offer-banner__timer"><svg class="welcome-offer-banner__circular-progress-bar"><circle r="31" cx="31" cy="31" stroke-width="2" stroke-dasharray="{{ timer.percentage * 195 }} 195"></circle></svg><div class="welcome-offer-banner__timer-section" ng-bind="timer.hoursLeft"></div>\n        :\n        <div class="welcome-offer-banner__timer-section" ng-bind="timer.minutesLeft"></div>\n        :\n        <div class="welcome-offer-banner__timer-section" ng-bind="timer.secondsLeft"></div></div></div>    \n            Los Angeles always had a thriving night life but no one really knows what lurks behind the glittering lights and seedy nightclubs. While mortals live their normal lives, clans of vampires conspire and scheme to further their own mysterious goals. As a newly-sired vampire, you are put to trial by the Prince of the city for your sire’s wrongdoings. A lone voice spares you from the Final Death and you become a pawn in the Prince’s plans. \n<br><br>\nTraverse the dark world of modern-day Los Angeles in Troika’s swan song, Vampire The Masquerade: Bloodlines. Visit raves and explore the secret underground caverns of Downtown to seedy hotels and exclusive mansions on Hollywood’s infamous Sunset Strip. Embark on a variety of story-driven quests as you explore an open world filled with side missions, multiple paths, and strange denizens to interact with. Yours is a living world, even though you cease to be.\n\n                    <ul class="description__features"><li class="description__features-point">Swear allegiance to one of seven unique clans, then use an array of vampiric disciplines, such as Dementation, Celerity, or Animalism, to achieve your goals.</li><li class="description__features-point">Superbly written dialogue with a unique feel and tone for each clan. </li><li class="description__features-point">Customize your Kindred the way you see fit, from the dialogue choices you make to the skills you improve.</li></ul><p class="description__copyrights">\n            ©2004 Activision Publishing, Inc. Activision is a registered trademark of Activision Publishing, Inc. All rights reserved. All other trademarks and trade names are the properties of their respective owners.\nDisclaimer: Vampire: The Masquerade-Bloodlines, as distributed by GOG.com, contains third-party technical fixes to ensure compatibility on modern systems. This material is not made, nor supported, by Activision. Furthermore, Activision does not endorse, nor take any responsibility, for the content of the game as distributed by GOG.com. Support for the game under the operating systems, as listed on the product page, is the sole responsibility of GOG.com.\n        </p>	17.49	2004-11-15	BR0	\N	\N	2022-04-29 17:48:54.37+00	2022-04-29 17:48:54.394+00	15
17	Peglin	peglin	\n        This game is currently in development\n    Learn more about games in development.Visit the forums and learn more about this game.Peglin Demo is availabl	<div class="banner in-dev-banner"><div class="banner__header in-dev-banner__header">\n        This game is currently in development\n    </div><div class="in-dev-banner__bullet"><a href="https://www.gog.com/support/support_view/games_in_development_faq">Learn more about games in development.</a></div><div class="in-dev-banner__bullet"><a href="https://www.gog.com/forum/peglin">Visit the forums and learn more about this game.</a></div><div class="in-dev-banner__graphic"><svg class="in-dev-banner__graphic-icon in-dev-banner__graphic-icon--gear"><use xlink:href="#gear"></use></svg><svg class="in-dev-banner__graphic-icon in-dev-banner__graphic-icon--tools"><use xlink:href="#tools"></use></svg></div></div><div style="overflow: hidden;"><a href="https://www.gog.com/game/peglin_demo"><img src="https://items.gog.com/peglin/main_main_PEGLIN.png" style="margin: 5px 15px 0 10px; float: left; width: 250px"></a><span style="display: block;"><br><br>Peglin Demo is available <a href="https://www.gog.com/game/peglin_demo"><b>here.</b></a></span></div><br><hr><br><img src="https://items.gog.com/peglin/dropped_orb_transparent.gif"><br>\nThe dragons have been popping peglins and stealing all of your gold for as long as you can remember. Enough is enough. It's time to venture through the woods, conquer the fortress, and delve into the heart of the dragon's lair to take back what's yours and teach those dragons a lesson.\n<br><br>\nPeglin plays like a combination of Peggle and Slay the Spire. The enemies are tough, and if you're defeated your run is over, but you've got powerful orbs with special effects and incredible relics that influence both your enemies and the physics you'll use to defeat them.<h4>Features:</h4><ul class="bb_ul"><li><b>Collect and upgrade powerful orbs and relics</b> to defeat the monsters and bosses that stand in your way.\n<br></li><li><b>Fight enemies with Pachinko-like gameplay</b> - hit more pegs to do more damage. Use crit potions, refresh potions, and bombs wisely.\n<br></li><li><b>Explore a new forest every time</b>, with different orbs, enemies, and surprises along the way.</li></ul><br><img src="https://items.gog.com/peglin/matryorbshka.gif">	34.19	2022-04-24	BR0	\N	\N	2022-04-29 17:50:43.041+00	2022-04-29 17:50:43.066+00	16
18	METAL GEAR SOLID	metal-gear-solid	\n    \n    \n    \n            You are Snake, a government agent on a mission to regain control of a secret nuclear weapons base from terrorist hands.\n\nNow the int	\n    \n    \n    \n            You are Snake, a government agent on a mission to regain control of a secret nuclear weapons base from terrorist hands.\n<br><br>\nNow the international best-selling PlayStation game comes to the PC with better graphics, added features, and new gameplay modes!  Unlike anything you've played before, Metal Gear Solid introduces a new genre of gaming where ninja-like stealth and cool head are your best weapons for survival\n<br><br><ul><li>VR Missions Game included!</li><li>Optional 1st person play mode thrusts you into the action from the moment you suit up.</li><li>Multiple game controller support and improved quick-save function for ease of play.</li></ul><p class="description__copyrights">\n            © Konami Digital Entertainment\n        </p>	37.29	2000-09-24	BR0	\N	\N	2022-04-29 17:50:43.843+00	2022-04-29 17:50:43.867+00	18
19	Baldur's Gate 3	baldurs-gate-iii	\n        This game is currently in development\n    Learn more about games in development.Visit the forums and learn more about this game.\nGather your party, and	<div class="banner in-dev-banner"><div class="banner__header in-dev-banner__header">\n        This game is currently in development\n    </div><div class="in-dev-banner__bullet"><a href="https://www.gog.com/support/support_view/games_in_development_faq">Learn more about games in development.</a></div><div class="in-dev-banner__bullet"><a href="https://www.gog.com/forum/baldurs_gate_3">Visit the forums and learn more about this game.</a></div><div class="in-dev-banner__graphic"><svg class="in-dev-banner__graphic-icon in-dev-banner__graphic-icon--gear"><use xlink:href="#gear"></use></svg><svg class="in-dev-banner__graphic-icon in-dev-banner__graphic-icon--tools"><use xlink:href="#tools"></use></svg></div></div><img src="https://items.gog.com/baldur's_gate_3/KeyArt_new_gif.gif"><br><br>\nGather your party, and return to the Forgotten Realms in a tale of fellowship and betrayal, sacrifice and survival, and the lure of absolute power. \n<br><br>\nMysterious abilities are awakening inside you, drawn from a Mind Flayer parasite planted in your brain. Resist, and turn darkness against itself. Or embrace corruption, and become ultimate evil.  \n<br><br>\nFrom the creators of Divinity: Original Sin 2 comes a next-generation RPG, set in the world of Dungeons and Dragons.  \n\n<br><br><p style="text-align:center;"><img src="https://items.gog.com/baldur's_gate_3/gather_your_party_new_gif.gif" alt="" width="100%"></p><br>\n\n\nChoose from a wide selection of D&amp;D races and classes, or play as an origin character with a hand-crafted background. Adventure, loot, battle and romance as you journey through the Forgotten Realms and beyond. Play alone, and select your companions carefully, or as a party of up to four in multiplayer. \n<br><br><img src="https://items.gog.com/baldur's_gate_3/An_expansive_original_story.new.png"><br><br>\nAbducted, infected, lost. You are turning into a monster, but as the corruption inside you grows, so does your power. That power may help you to survive, but there will be a price to pay, and more than any ability, the bonds of trust that you build within your party could be your greatest strength. Caught in a conflict between devils, deities, and sinister otherworldly forces, you will determine the fate of the Forgotten Realms together.\n\n<br><br><p style="text-align:center;"><img src="https://items.gog.com/baldur's_gate_3/Next_Gen_new_gif.gif" alt="" width="100%"></p><br>\nForged with the new Divinity 4.0 engine, Baldur’s Gate 3 gives you unprecedented freedom to explore, experiment, and interact with a world that reacts to your choices. A grand, cinematic narrative brings you closer to your characters than ever before, as you venture through our biggest world yet. \n<br><br><img src="https://items.gog.com/baldur's_gate_3/No_adventure_will_be_the_same.new.png"><br><br>\nThe Forgotten Realms are a vast, detailed and diverse  world, and there are secrets to be discovered all around you -- verticality is a vital part of exploration. Sneak, dip, shove, climb, and jump as you journey from the depths of the Underdark to the glittering rooftops of the Upper City. How you survive, and the mark you leave on the world, is up to you.\n<br><br><img src="https://items.gog.com/baldur's_gate_3/01_Bullets_points.new.png"><br><ul class="bb_ul">allows you to combine your forces in combat, and split your party to follow your own quests and agendas. Concoct the perfect plan together… or introduce an element of chaos when your friends least expect it.</ul><br><img src="https://items.gog.com/baldur's_gate_3/02_Bullets_points.new.png"><br><ul class="bb_ul">offer a hand-crafted experience, each with their own unique traits, agenda, and outlook on the world. Their stories intersect with the entire narrative, and your choices will determine whether those stories end in redemption, salvation, domination, or many other outcomes. </ul><br><img src="https://items.gog.com/baldur's_gate_3/03_Bullets_points.new.png"><br><ul class="bb_ul">based on the D&amp;D 5e ruleset. Team-based initiative, advantage &amp; disadvantage, and roll modifiers join combat cameras, expanded environmental interactions, and a new fluidity in combat that rewards strategy and foresight. </ul><br><img src="https://items.gog.com/baldur's_gate_3/04_Bullets_points.new.png"><br><ul class="bb_ul">through your choices, and the roll of the dice. No matter who you play, or what you roll, the world and its inhabitants will react to your story.</ul><br><img src="https://items.gog.com/baldur's_gate_3/05_Bullets_points.new.png"><br><ul class="bb_ul">allows you to pause the world around you at any time even outside of combat. Whether you see an opportunity for a tactical advantage before combat begins, want to pull off a heist with pin-point precision, or need to escape a fiendish trap. Split your party, prepare ambushes, sneak in the darkness -- create your own luck!  </ul><br><p style="text-align:center;"><img src="https://items.gog.com/baldur's_gate_3/Final_Image_new_gif.gif" alt="" width="100%"></p><p class="description__copyrights">\n            © 2020 WIZARDS OF THE COAST. ALL RIGHTS RESERVED. WIZARDS OF THE COAST, BALDUR’S GATE, DUNGEONS &amp; DRAGONS, D&amp;D, AND THEIR RESPECTIVE LOGOS\nARE REGISTERED TRADEMARKS OF WIZARDS OF THE COAST LLC\n© 2020 LARIAN STUDIOS. ALL RIGHTS RESERVED. LARIAN STUDIOS IS A REGISTERED TRADEMARK OF ARRAKIS NV, AFFILIATE OF LARIAN STUDIOS GAMES LTD.\nALL COMPANY NAMES, BRAND NAMES, TRADEMARKS AND LOGOS ARE THE PROPERTY OF THEIR RESPECTIVE OWNERS.\n        </p>	199.99	2020-10-05	BR0	\N	\N	2022-04-29 17:50:45.216+00	2022-04-29 17:50:45.257+00	20
20	Neverwinter Nights 2 Complete	neverwinter-nights-2-complete	Welcome back to Neverwinter!\nBards sing tales of heroes in ages past, but they rarely mention those that are yet to become heroes. One such hero is a farmer in 	<h1>Welcome back to Neverwinter!</h1><p style="text-align:center;"><img src="https://items.gog.com/neverwinter_nights_2_complete/banner.jpg" alt="" width="100%"></p><br>\nBards sing tales of heroes in ages past, but they rarely mention those that are yet to become heroes. One such hero is a farmer in the small village of West Harbor. Raised by the elven ranger, Daeghun, as his own child, our hero will embark on a grandiose quest against the King of Shadows. <b>Neverwinter Nights 2</b> is the tale of his deeds. His adventures continue in <b>Neverwinter Nights 2: Mask of the Betrayer</b>. Our protagonist discovers that an ominous spell has fallen on him. A curse of perpetual hunger--one which can only be quelled by consuming the souls of spirits. In order to remove the curse, he has to travel to the Shadow Realm, which harbors dark secrets and tormented souls.\n<br><br><b>Neverwinter Nights 2: Storm of Zehir</b> gives as a breather from grand quests of destiny and epic ordeals. You simply assemble a group of four adventurers (either by carefully picking out each of their statistics and skills or by randomly re-rolling your characters until you find the ones that suit you) and go where the wind takes you. Just make sure to get a good look at the map as you will need it to explore the wide open region of Samarach and the Sword Coast. Then, yet another adventure: in an ancient and forgotten tomb you found an unusual mask. It made you quite powerful but changed your life into a living nightmare. Strange, terrifying visions torment your psyche. Every time you try to get rid of the accursed mask, it secretly makes its way back to you. There's just one solution: set sail for Westgate and discover the secret of the Night Masks in <b>Neverwinter Nights 2: Mysteries of Westgate</b>.\n<br><br><b>Neverwinter Nights 2: Complete</b> is an epic RPG set in the fantasy world of the Forgotten Realms, one of the most popular campaign settings of <b>Dungeons &amp; Dragons</b>. Use all the wicked spells, feats, and prestige classes from the <b>D&amp;D 3.5 rules</b>. Create your characters any way you wish, choosing from a wide variety of races and subraces, such as Tiefling and Aasimar. As if the pre-made campaigns weren't enough, you can take the reins and use the powerful Obsidian <b>Neverwinter Nights 2 Toolset</b> to make your own adventures and share them with friends!\n<br><p style="text-align:center;"><img src="https://items.gog.com/neverwinter_nights_2_complete/map.jpg" alt="" width="100%"></p><br><ul><li><b>Neverwinter Nights 2: Complete</b> includes the original game, and three expansions: <b>Mask of the Betrayer, Storm of Zehir</b>, and <b>Mysteries of Westgate</b>.</li><li>Create and host your own solo and multiplayer D&amp;D adventures using the improved <b>Neverwinter Nights 2 Toolset</b>.</li><li>Rediscover many familiar locations and reunite with your companions from the Neverwinter Nights series.</li><li>More than 100 hours of immersive adventure across four campaigns, all rendered in breathtaking detail.</li></ul><br><p class="module">Note: This game may require additional serial key for multiplayer mode. In case it is not automatically generated in your GOG.com library (open it via <a href="https://www.gog.com/account">website</a> → select the game → More → Serial Keys), please reach out to our <a href="https://support.gog.com/hc/en-us/requests/new?product=gog&amp;form=technical">Support team</a>.</p><p class="description__copyrights">\n            © 2013 Wizards. Neverwinter Nights, Dungeons &amp; Dragons, Forgotten Realms, Mask of the Betrayer, Storm of Zehir, and Mysteries of Westgate are trademarks of Wizards of the Coast LLC in the USA and other countries. \n        </p>	36.99	2006-10-30	BR0	\N	\N	2022-04-29 17:50:45.219+00	2022-04-29 17:50:45.257+00	17
21	Terraformers	terraformers	\n        This game is currently in development\n    Learn more about games in development.Visit the forums and learn more about this game.• Explore the Red Plane	<div class="banner in-dev-banner"><div class="banner__header in-dev-banner__header">\n        This game is currently in development\n    </div><div class="in-dev-banner__bullet"><a href="https://www.gog.com/support/support_view/games_in_development_faq">Learn more about games in development.</a></div><div class="in-dev-banner__bullet"><a href="https://www.gog.com/forum/terraformers">Visit the forums and learn more about this game.</a></div><div class="in-dev-banner__graphic"><svg class="in-dev-banner__graphic-icon in-dev-banner__graphic-icon--gear"><use xlink:href="#gear"></use></svg><svg class="in-dev-banner__graphic-icon in-dev-banner__graphic-icon--tools"><use xlink:href="#tools"></use></svg></div></div><img src="https://items.gog.com/terraformers/TERRA_PlanetTurnSlow_Steam.gif"><h4>• Explore the Red Planet</h4>Send your leaders to mysterious locations and be the first to discover rich resource depots, giant crystal caves and stunning natural wonders.<h4>• Develop your cities</h4>Found new cities on craters and in lava Tubes. Make them thrive and meet your population's rising demands.\n<br><br><img src="https://items.gog.com/terraformers/TERRA_ExploreTimelapse.gif"><h4>• Manage your resources</h4>Mine the rare metals of Mars, manufacture them into advanced goods and set up an effective transport system between your ever-growing cities.<h4>• Terraform with ambitious projects</h4>Restart a volcano, construct giant space mirrors or crash ice asteroids to geo-engineer the entire planet.\n<br><br><img src="https://items.gog.com/terraformers/TERRA_CityEvolution.gif"><h4>• Become a gardener of life</h4>From spreading adaptive bacteria, to planting full-grown forests with bears. Each life form has specific requirements and provides strategic benefits.<h4>• Join the Terraforming!</h4>By making this game, we hope to inspire humankind to take its first steps out of the cradle and become an interplanetary species, starting with Mars! Do you want to join the terraforming movement, get updates about the game development, chat with us, and be the first to be considered for the closed alpha? Then join our <a href="https://steamcommunity.com/linkfilter/?url=https://discord.gg/sTjjj3Q" target="_blank" rel="noopener">Discord server</a>!\n<br><br><img src="https://items.gog.com/terraformers/AdvancedMarsRoll50.gif">	39.99	1969-12-31	BR0	\N	\N	2022-04-29 17:53:19.914+00	2022-04-29 17:53:19.944+00	9
22	Cyberpunk 2077	cyberpunk-2077	\n        This game is part of your Welcome Offer!\n    \n        Get this game for a special price just for you!Find more excellent games at great discounts\n     	<div class="banner welcome-offer-banner" welcome-offer-banner="" timer="{{ welcomeOfferBanner.counter }}" ng-show="welcomeOfferBanner.isCounterReady &amp;&amp; !timer.finished" ng-cloak=""><div class="banner__header">\n        This game is part of your Welcome Offer!\n    </div><div class="welcome-offer-banner__description">\n        Get this game for a special price just for you!<br><a href="https://www.gog.com/welcome-offer">Find more excellent games at great discounts</a></div><div class="welcome-offer-banner__timer"><svg class="welcome-offer-banner__circular-progress-bar"><circle r="31" cx="31" cy="31" stroke-width="2" stroke-dasharray="{{ timer.percentage * 195 }} 195"></circle></svg><div class="welcome-offer-banner__timer-section" ng-bind="timer.hoursLeft"></div>\n        :\n        <div class="welcome-offer-banner__timer-section" ng-bind="timer.minutesLeft"></div>\n        :\n        <div class="welcome-offer-banner__timer-section" ng-bind="timer.secondsLeft"></div></div></div><center><a href="https://www.cyberpunk.net/en/news/41435/patch-1-5-next-generation-update-list-of-changes"><img src="https://items.gog.com/not_a_cp/1.5patchbox.jfif"></a></center><hr><img src="https://items.gog.com/not_a_cp/addon_en.png"><hr><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/not_a_cp/action.mp4"></video><br><b>Cyberpunk 2077</b> is an open-world, action-adventure RPG set in the megalopolis of Night City, where you play as a cyberpunk mercenary wrapped up in a do-or-die fight for survival. Improved and featuring all-new free additional content, customize your character and playstyle as you take on jobs, build a reputation, and unlock upgrades. The relationships you forge and the choices you make will shape the story and the world around you. Legends are made here. What will yours be?\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/not_a_cp/character.mp4"></video><br>Become an urban outlaw equipped with cybernetic enhancements and build your legend on the streets of Night City.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/not_a_cp/world.mp4"></video><br>\nNight City is packed to the brim with things to do, places to see, and people to meet. And it’s up to you where to go, when to go, and how to get there. \n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/not_a_cp/tech.mp4"></video><br>\nGo on daring adventures and build relationships with unforgettable characters whose fates are shaped by the choices you make.\n<br><br><video muted="" preload="auto" loop="" autoplay="autoplay" style="margin: auto;display:block;width:100%"><source src="https://items.gog.com/not_a_cp/music.mp4"></video><br><h4>EQUIPPED WITH IMPROVEMENTS</h4>\nExperience Cyberpunk 2077 with a host of changes and improvements to gameplay and economy, the city, map usage, and more.\n<br><br><h4>INCLUDES FREE ADDITIONAL CONTENT</h4>\nGet your hands on a haul of free items including new guns and melee weapons, as well as extra customization options and more.\n<br><br><hr><a target="“_blank”" href="https://lp.gog.com/cyberpunk-2077-hub/en"><img alt="" src="https://items.gog.com/not_a_cp/learn_more.png"></a><hr><center><img alt="" width="32%" height="32%" src="https://items.gog.com/not_a_cp/awards/awardscp1.png"><img alt="" width="32%" height="32%" src="https://items.gog.com/not_a_cp/awards/awardscp2.png"></center><hr>\n\n* Exclusive Digital Comic - Cyberpunk 2077: Big City Dreams is available in English only.\n\n            \n            <p class="description__copyrights">\n            CD PROJEKT®, Cyberpunk®, Cyberpunk 2077® are registered trademarks of CD PROJEKT S.A. © 2019\nCD PROJEKT S.A. All rights reserved. All other copyrights and trademarks are the property of their\nrespective owners.\n        </p>	199.90	2020-12-09	BR0	\N	\N	2022-04-29 17:53:21.307+00	2022-04-29 17:53:21.424+00	19
23	IOI Collection	ioi-collection	\n    \n    \n    \n            The IOI Collection includes classic games from IO Interactive, including the first five games in the award-winning Hitman franchise 	\n    \n    \n    \n            The IOI Collection includes classic games from IO Interactive, including the first five games in the award-winning Hitman franchise and the cult-classic Freedom Fighters.<br><br>\nHere’s what you get:\n<ul><li><a href="https://www.gog.com/game/freedom_fighters">Freedom Fighters</a></li><li><a href="https://www.gog.com/game/hitman">Hitman: Codename 47</a></li><li><a href="https://www.gog.com/game/hitman_2_silent_assassin">Hitman 2: Silent Assassin</a></li><li><a href="https://www.gog.com/game/hitman_contracts">Hitman: Contracts</a></li><li><a href="https://www.gog.com/game/hitman_blood_money">Hitman: Blood Money</a></li><li><a href="https://www.gog.com/game/hitman_absolution">Hitman: Absolution</a></li></ul><br><p class="module">Languages, features and system requirements may vary between games - please check individual product pages for details.</p><p class="description__copyrights">\n            Freedom Fighters © 2003-2020 IO Interactive A/S. Published by IO Interactive A/S. IO Interactive, the IOI logos, and Freedom Fighters are trademarks of IO Interactive A/S. All other trademarks are the property of their respective owners. All rights reserved.\n<br>\nHitman: Codename 47 (c) 2000-2020 IO Interactive A/S. Published by IO Interactive A/S. IO Interactive, the IOI logo, Hitman and the Hitman logos are trademarks or registered trademarks owned by or exclusively licensed to IO Interactive A/S. All other trademarks are the property of their respective owners. All rights reserved.\n<br>\nHitman 2: Silent Assassin (c) 2002-2020 IO Interactive A/S. Published by IO Interactive A/S. IO Interactive, the IOI logo, Hitman and the Hitman logos are trademarks or registered trademarks owned by or exclusively licensed to IO Interactive A/S. All other trademarks are the property of their respective owners. All rights reserved.\n<br>\nHitman: Contracts (c) 2004-2020 IO Interactive A/S. Published by IO Interactive A/S. IO Interactive, the IOI logo, Hitman and the Hitman logos are trademarks or registered trademarks owned by or exclusively licensed to IO Interactive A/S. All other trademarks are the property of their respective owners. All rights reserved.\n<br>\nHitman: Blood Money (c) 2006-2020 IO Interactive A/S. Published by IO Interactive A/S. IO Interactive, the IOI logo, Hitman and the Hitman logos are trademarks or registered trademarks owned by or exclusively licensed to IO Interactive A/S. All other trademarks are the property of their respective owners. All rights reserved.\n<br>\nHitman Absolution (c) 2012-2020 IO Interactive A/S. Published by IO Interactive A/S. IO Interactive, the IOI logo, Hitman and the Hitman logos are trademarks or registered trademarks owned by or exclusively licensed to IO Interactive A/S. All other trademarks are the property of their respective owners. All rights reserved.\n        </p>	54.39	1969-12-31	BR0	\N	\N	2022-04-29 17:53:21.308+00	2022-04-29 17:53:21.428+00	21
25	Warcraft I & II Bundle	warcraft-bundle	\n        This game is part of your Welcome Offer!\n    \n        Get this game for a special price just for you!Find more excellent games at great discounts\n     	<div class="banner welcome-offer-banner" welcome-offer-banner="" timer="{{ welcomeOfferBanner.counter }}" ng-show="welcomeOfferBanner.isCounterReady &amp;&amp; !timer.finished" ng-cloak=""><div class="banner__header">\n        This game is part of your Welcome Offer!\n    </div><div class="welcome-offer-banner__description">\n        Get this game for a special price just for you!<br><a href="https://www.gog.com/welcome-offer">Find more excellent games at great discounts</a></div><div class="welcome-offer-banner__timer"><svg class="welcome-offer-banner__circular-progress-bar"><circle r="31" cx="31" cy="31" stroke-width="2" stroke-dasharray="{{ timer.percentage * 195 }} 195"></circle></svg><div class="welcome-offer-banner__timer-section" ng-bind="timer.hoursLeft"></div>\n        :\n        <div class="welcome-offer-banner__timer-section" ng-bind="timer.minutesLeft"></div>\n        :\n        <div class="welcome-offer-banner__timer-section" ng-bind="timer.secondsLeft"></div></div></div><center><h4>Warcraft I &amp; II bundle includes:</h4></center><div style="overflow: hidden;border-bottom: 1px solid rgba(0,0,0,.08);padding-bottom: 15px;padding-top: 15px;margin-top: 10px;"><div style="float:left;max-width: 41%;margin: 5px 10px 0px 0px;height: auto;"><a href="https://www.gog.com/game/warcraft_orcs_and_humans" target="_blank"><img src="https://items.gog.com/warcraft_bundle/main_art_warcraft_orcs_and_humans.jpg" style="margin: 0px;"></a></div><div style="overflow: hidden;"><b><a href="https://www.gog.com/game/warcraft_orcs_and_humans" target="_blank">Warcraft: Orcs and Humans</a> - </b>Enter the world of Warcraft, a mystical land where evil Orcs and noble Humans battle for survival and domination. With an ingenious arsenal of weaponry and powerful magic, these two forces collide in a contest of cunning, intellect, and brute strength.</div></div><div style="overflow: hidden;border-bottom: 1px solid rgba(0,0,0,.08);padding-bottom: 15px;padding-top: 15px;margin-top: 10px;"><div style="float:left;max-width: 41%;margin: 5px 10px 0px 0px;height: auto;"><a href="https://www.gog.com/game/warcraft_2_battlenet_edition" target="_blank"><img src="https://items.gog.com/warcraft_bundle/main_art_warcraft_2_battlenet_edition.jpg" style="margin: 0px;"></a></div><div style="overflow: hidden;"><b><a href="https://www.gog.com/game/warcraft_2_battlenet_edition" target="_blank">Warcraft II Battle.net Edition\n</a> - </b>Return to the Age of Chaos and wage war against live Orc and Human opponents with the same skill and fearless intensity you lived and breathed in your Warcraft: Orcs and Humans career. Put your skills to the ultimate test in the most epic Warcraft II battles ever.\n</div></div><center><h4>If you're interested in more Blizzard classics, check out:</h4></center><a href="https://www.gog.com/game/diablo"><img src="https://items.gog.com/warcraft_bundle/diablo_banner.png" style="margin: 10px 0px;"></a><hr><br>\nBlizzard Entertainment is proud to bring you the real-time strategy classics that started it all - <b>Warcraft: Orcs and Humans</b> and <b>Warcraft II Battle.net Edition</b>, including both the original <b>Tides of Darkness</b> and the <b>Beyond the Dark Portal</b> expansion. Starting today, players can once again explore these universe-defining games as they become available digitally and DRM-free for the first time ever!\n<br><br><b>Warcraft: Orcs &amp; Humans</b> takes players back to the original battle for Azeroth, challenging players to pick a side and raise an army of human or orcs capable of bringing ruin to their enemies. <b>Warcraft II</b> and its expansion take the battle to the high seas with a host of naval units, and introduces more of the races that make up the Alliance and the Horde, bolstering the human and orc forces with elves, trolls, dwarves, and more. \n<br><br>\nThe first part of the legendary series plays and feels just like the original from 1994, it’s just updated to run flawlessly on modern operating systems. <b>Warcraft II Battle.net Edition</b>, similarly to the release of first <b>Diablo</b> on GOG.COM, comes in two versions, which players will choose from the launcher. The classic one allows for the authentic experience and a fully functional multiplayer with Blizzard’s Battle.net online gaming service. The updated version comes with a number of fixes to provide full compatibility with modern machines as well as hi-resolution support and upscaling.<br><br><p class="module">System requirements, bonus goodies, and features may vary between games - please check individual product pages for details.</p><br><br><a href="https://www.blizzard.com/en-us/legal/a97631bf-2b21-4755-a740-5934bd5cb632/do-not-sell-my-personal-information" style="font-size: 0.9em;">Do not sell my personal information</a>	60.69	2019-03-27	BR0	\N	\N	2022-04-29 17:53:22.44+00	2022-04-29 17:53:22.49+00	12
24	Dreamfall: The Longest Journey	dreamfall-the-longest-journey	\n    \n    \n    \n            Casablanca, 2219 -- Zoë Castillo is, at first glance, a very normal young woman, but she is about to get involved in a conspiracy th	\n    \n    \n    \n            Casablanca, 2219 -- Zoë Castillo is, at first glance, a very normal young woman, but she is about to get involved in a conspiracy that spans parallel worlds and hundreds of years. Something is affecting the world -- static interference is disrupting technology, causing Zoë to see visions of a ghostly presence that is inhabiting a black house in a wintry landscape. As Zoë embarks on a journey where she eventually discovers a magical world behind our own, she will need to make decisions about what's important to her and what she's willing to risk for the people she loves. Zoë will need all her courage to unravel the dangerous web in which she, and the world around her, is entangled.\n<br><br>\nDreamfall: The Longest Journey, winner of multiple E3 awards as the best game in its genre, is the continuation of a saga that began in the (also award-winning!) game <a href="/gamecard/the_longest_journey">The Longest Journey</a>, considered to be one of the finest adventure games ever made. In Dreamfall, you take on an epic journey of exploration and adventure as you venture through a thrilling and emotional storyline. Dreamfall features a fully interactive world where beautiful music, stunning graphics, fascinating characters, and unparalleled gameplay variety brought the adventure genre into a new era. Prepare for a spiritual, fantastic, and powerful gaming experience.\n\n                    <ul class="description__features"><li class="description__features-point">Experience the story from three separate perspectives and learn how their destinies blend together in an epic finale. Each character has unique abilities and world views, giving you constant gameplay variations.</li><li class="description__features-point">Never before has an adventure game brought this much gameplay variety! Use your brains or your brawn; sneak, fight, or talk your way through the many challenges the game offers.</li><li class="description__features-point">Dreamfall spans three beautifully realized worlds, multiple chapters, and a stunning amount of detailed locations.</li></ul><p class="description__copyrights">\n            © 2000-2012 Funcom. \n        </p>	19.98	2006-04-16	BR0	\N	\N	2022-04-29 17:53:22.436+00	2022-04-29 17:53:22.488+00	22
26	Mafia II: Director’s Cut	mafia-ii-directors-cut	\nMafia II: Director’s Cut includes Mafia II and the following DLCs: Joe's Adventures DLC,\nThe Betrayal of Jimmy DLC, Jimmy's Vendetta DLC, War Hero DLC, Greaser	<p class="module" style="padding: 15px; margin-top: 5px;"><span style="font-weight: 600; display: block; padding-bottom: 2px;">\nMafia II: Director’s Cut includes Mafia II and the following DLCs: Joe's Adventures DLC,\nThe Betrayal of Jimmy DLC, Jimmy's Vendetta DLC, War Hero DLC, Greaser DLC, Vegas DLC, Renegade DLC, and Made Man DLC.</span></p><br><br>\n\nVito Scaletta has started to make a name for himself on the streets of Empire Bay as someone who can be trusted to get a job done. Together with his buddy Joe, he is working to prove himself to the Mafia, quickly escalating up the family ladder with crimes of larger reward, status and consequence… the life as a wise guy isn’t quite as untouchable as it seems.\n\n                    <ul class="description__features"><li class="description__features-point">Action-Packed Gameplay: Intense gunplay, white-knuckle car chases and visceral hand-to-hand combat —it will take all that and more to become a “made man”. </li><li class="description__features-point">Epic Gangster Story: Inspired by iconic mafia drama, the compelling characters and cinematic presentation will pull players into the allure and impossible escape of life in the Mafia. </li><li class="description__features-point">Immersive World and Period: Enter the world of Empire Bay - World War II is raging in Europe and the architecture, cars, music and clothing all echo the period in stunning detail. As time passes, hot rod cars, 50s fashion and some of the era’s best music reflect the birth of a cool new era. </li><li class="description__features-point">Illusion Engine™: 2K Czech’s proprietary Illusion Engine, allows gamers to explore Empire Bay’s 10 square miles of beautifully rendered outdoor environments and intricately designed interiors. </li><li class="description__features-point">Soundtrack* Reflects the Mood of the Era: Players will be immersed in the Golden Era of America as Mafia II features tracks from some of the era’s most influential artists..</li></ul><p class="description__copyrights">\n            © 1998–2016 Take-Two Interactive Software, Inc., and its subsidiaries. Mafia ® II developed by 2K Czech. 2K Czech, the 2K Czech logo, 2K Games, the 2K Games logo, Illusion Engine, Mafia, Mafia II, the Mafia II logo and Take-Two Interactive Software are all trademarks and/or registered trademarks of Take-Two Interactive Software, Inc.&nbsp;All other marks are property of their respective owners. All rights reserved.\n        </p>	11.79	2011-03-21	BR0	\N	\N	2022-04-29 17:55:06.662+00	2022-04-29 17:55:06.687+00	14
\.


--
-- Data for Name: games_platforms__platforms_games; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.games_platforms__platforms_games (id, game_id, platform_id) FROM stdin;
1	2	1
3	2	2
4	3	1
6	5	1
7	6	1
8	7	1
9	8	1
10	9	1
11	10	1
12	11	1
13	12	1
16	12	2
14	13	1
15	14	1
17	14	2
18	15	1
19	15	2
20	16	1
21	17	1
22	17	2
23	18	1
24	19	1
25	19	2
26	20	1
27	21	1
28	21	2
29	21	3
30	22	1
31	23	1
32	24	1
33	25	1
34	26	1
2	1	1
5	4	1
\.


--
-- Data for Name: i18n_locales; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
1	English (en)	en	\N	\N	2022-04-27 13:24:43.275+00	2022-04-27 13:24:43.275+00
\.


--
-- Data for Name: platforms; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.platforms (id, name, slug, created_by, updated_by, created_at, updated_at) FROM stdin;
1	windows	windows	\N	\N	2022-04-29 14:16:55.133+00	2022-04-29 14:16:55.133+00
3	linux	linux	\N	\N	2022-04-29 16:37:59.25+00	2022-04-29 16:37:59.25+00
2	mac	mac	\N	\N	2022-04-29 14:16:55.134+00	2022-04-29 14:16:55.134+00
\.


--
-- Data for Name: publishers; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.publishers (id, name, slug, created_by, updated_by, created_at, updated_at) FROM stdin;
3	Toukana Interactive	toukana-interactive	\N	\N	2022-04-29 11:59:48.621+00	2022-04-29 11:59:48.621+00
4	Killerfish Games	killerfish-games	\N	\N	2022-04-29 13:17:12.243+00	2022-04-29 13:17:12.243+00
5	Forever Entertainment S. A.	forever-entertainment-s.-a.	\N	\N	2022-04-29 14:16:55.024+00	2022-04-29 14:16:55.024+00
6	Ubisoft	ubisoft	\N	\N	2022-04-29 14:16:55.024+00	2022-04-29 14:16:55.024+00
7	META Publishing	meta-publishing	\N	\N	2022-04-29 16:37:58.743+00	2022-04-29 16:37:58.743+00
8	Square Enix	square-enix	\N	\N	2022-04-29 16:37:58.743+00	2022-04-29 16:37:58.743+00
9	Goblinz Studio	goblinz-studio	\N	\N	2022-04-29 16:37:58.759+00	2022-04-29 16:37:58.759+00
10	Microids	microids	\N	\N	2022-04-29 16:37:58.76+00	2022-04-29 16:37:58.76+00
11	Kagura Games	kagura-games	\N	\N	2022-04-29 16:37:58.76+00	2022-04-29 16:37:58.76+00
12	Blizzard Entertainment, Inc.	blizzard-entertainment-inc.	\N	\N	2022-04-29 16:37:58.824+00	2022-04-29 16:37:58.824+00
13	Slitherine Ltd.	slitherine-ltd.	\N	\N	2022-04-29 16:37:58.824+00	2022-04-29 16:37:58.824+00
14	2K Games	2k-games	\N	\N	2022-04-29 16:37:58.832+00	2022-04-29 16:37:58.832+00
15	Activision	activision	\N	\N	2022-04-29 16:37:58.833+00	2022-04-29 16:37:58.833+00
16	Red Nexus Games Inc., IndieArk	red-nexus-games-inc.-indieark	\N	\N	2022-04-29 16:37:58.833+00	2022-04-29 16:37:58.833+00
17	Hasbro Inc.	hasbro-inc.	\N	\N	2022-04-29 16:37:58.845+00	2022-04-29 16:37:58.845+00
18	Konami Digital Entertainment	konami-digital-entertainment	\N	\N	2022-04-29 16:37:58.854+00	2022-04-29 16:37:58.854+00
19	CD PROJEKT RED	cd-projekt-red	\N	\N	2022-04-29 16:37:58.854+00	2022-04-29 16:37:58.854+00
20	Larian Studios	larian-studios	\N	\N	2022-04-29 16:37:58.854+00	2022-04-29 16:37:58.854+00
21	IO Interactive	io-interactive	\N	\N	2022-04-29 16:37:58.855+00	2022-04-29 16:37:58.855+00
22	Funcom	funcom	\N	\N	2022-04-29 16:37:58.908+00	2022-04-29 16:37:58.908+00
24	Night Dive Studios	night-dive-studios	\N	\N	2022-04-29 16:37:58.919+00	2022-04-29 16:37:58.919+00
25	Arcen Games	arcen-games	\N	\N	2022-04-29 16:37:58.919+00	2022-04-29 16:37:58.919+00
26	Running With Scissors	running-with-scissors	\N	\N	2022-04-29 16:37:58.919+00	2022-04-29 16:37:58.919+00
27	Paradox Interactive	paradox-interactive	\N	\N	2022-04-29 16:37:58.929+00	2022-04-29 16:37:58.929+00
28	Electronic Arts	electronic-arts	\N	\N	2022-04-29 16:37:58.937+00	2022-04-29 16:37:58.937+00
29	Rebellion	rebellion	\N	\N	2022-04-29 16:37:58.946+00	2022-04-29 16:37:58.946+00
30	Artur Smiarowski	artur-smiarowski	\N	\N	2022-04-29 16:37:58.946+00	2022-04-29 16:37:58.946+00
31	Deck13	deck13	\N	\N	2022-04-29 16:37:58.946+00	2022-04-29 16:37:58.946+00
32	ConcernedApe	concernedape	\N	\N	2022-04-29 16:37:58.954+00	2022-04-29 16:37:58.954+00
33	Streembit Ltd	streembit-ltd	\N	\N	2022-04-29 16:37:59.045+00	2022-04-29 16:37:59.045+00
34	Devolver Digital	devolver-digital	\N	\N	2022-04-29 16:37:59.045+00	2022-04-29 16:37:59.045+00
35	Headup	headup	\N	\N	2022-04-29 16:37:59.046+00	2022-04-29 16:37:59.046+00
36	Disney	disney	\N	\N	2022-04-29 16:37:59.046+00	2022-04-29 16:37:59.046+00
39	Bethesda Softworks LLC	bethesda-softworks-llc	\N	\N	2022-04-29 17:51:29.085+00	2022-04-29 17:51:29.085+00
40	1C Entertainment	1c-entertainment	\N	\N	2022-04-29 17:51:29.085+00	2022-04-29 17:51:29.085+00
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
1	Won	Games	\N	thiagopereiramail@gmail.com	$2a$10$0MOlyJGs6cJnmtgszrv2HewI6V3iW4g/hx6.nfcuR54.3GT1MTgJe	\N	\N	t	\N	\N
\.


--
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
1	plugins::upload.read	\N	{}	[]	2	2022-04-27 13:24:45.428+00	2022-04-27 13:24:45.447+00
2	plugins::upload.assets.create	\N	{}	[]	2	2022-04-27 13:24:45.428+00	2022-04-27 13:24:45.447+00
3	plugins::upload.assets.update	\N	{}	[]	2	2022-04-27 13:24:45.428+00	2022-04-27 13:24:45.448+00
5	plugins::upload.assets.copy-link	\N	{}	[]	2	2022-04-27 13:24:45.433+00	2022-04-27 13:24:45.452+00
4	plugins::upload.assets.download	\N	{}	[]	2	2022-04-27 13:24:45.429+00	2022-04-27 13:24:45.452+00
8	plugins::upload.assets.create	\N	{}	[]	3	2022-04-27 13:24:45.483+00	2022-04-27 13:24:45.497+00
9	plugins::upload.assets.download	\N	{}	[]	3	2022-04-27 13:24:45.484+00	2022-04-27 13:24:45.498+00
7	plugins::upload.assets.update	\N	{}	["admin::is-creator"]	3	2022-04-27 13:24:45.481+00	2022-04-27 13:24:45.498+00
6	plugins::upload.read	\N	{}	["admin::is-creator"]	3	2022-04-27 13:24:45.48+00	2022-04-27 13:24:45.498+00
10	plugins::upload.assets.copy-link	\N	{}	[]	3	2022-04-27 13:24:45.484+00	2022-04-27 13:24:45.504+00
11	plugins::content-manager.explorer.create	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2022-04-27 13:24:45.585+00	2022-04-27 13:24:45.614+00
12	plugins::content-manager.explorer.read	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2022-04-27 13:24:45.585+00	2022-04-27 13:24:45.615+00
13	plugins::content-manager.explorer.update	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2022-04-27 13:24:45.586+00	2022-04-27 13:24:45.615+00
15	plugins::content-type-builder.read	\N	{}	[]	1	2022-04-27 13:24:45.586+00	2022-04-27 13:24:45.616+00
16	plugins::email.settings.read	\N	{}	[]	1	2022-04-27 13:24:45.587+00	2022-04-27 13:24:45.616+00
17	plugins::upload.read	\N	{}	[]	1	2022-04-27 13:24:45.587+00	2022-04-27 13:24:45.616+00
18	plugins::upload.assets.create	\N	{}	[]	1	2022-04-27 13:24:45.587+00	2022-04-27 13:24:45.616+00
20	plugins::upload.assets.download	\N	{}	[]	1	2022-04-27 13:24:45.596+00	2022-04-27 13:24:45.623+00
19	plugins::upload.assets.update	\N	{}	[]	1	2022-04-27 13:24:45.588+00	2022-04-27 13:24:45.623+00
21	plugins::upload.assets.copy-link	\N	{}	[]	1	2022-04-27 13:24:45.664+00	2022-04-27 13:24:45.692+00
22	plugins::upload.settings.read	\N	{}	[]	1	2022-04-27 13:24:45.664+00	2022-04-27 13:24:45.692+00
23	plugins::content-manager.single-types.configure-view	\N	{}	[]	1	2022-04-27 13:24:45.664+00	2022-04-27 13:24:45.693+00
24	plugins::content-manager.collection-types.configure-view	\N	{}	[]	1	2022-04-27 13:24:45.665+00	2022-04-27 13:24:45.693+00
26	plugins::i18n.locale.create	\N	{}	[]	1	2022-04-27 13:24:45.671+00	2022-04-27 13:24:45.701+00
27	plugins::i18n.locale.read	\N	{}	[]	1	2022-04-27 13:24:45.671+00	2022-04-27 13:24:45.701+00
25	plugins::content-manager.components.configure-layout	\N	{}	[]	1	2022-04-27 13:24:45.665+00	2022-04-27 13:24:45.701+00
28	plugins::i18n.locale.update	\N	{}	[]	1	2022-04-27 13:24:45.677+00	2022-04-27 13:24:45.709+00
29	plugins::i18n.locale.delete	\N	{}	[]	1	2022-04-27 13:24:45.677+00	2022-04-27 13:24:45.71+00
30	plugins::users-permissions.roles.create	\N	{}	[]	1	2022-04-27 13:24:45.683+00	2022-04-27 13:24:45.717+00
31	plugins::users-permissions.roles.read	\N	{}	[]	1	2022-04-27 13:24:45.747+00	2022-04-27 13:24:45.774+00
32	plugins::users-permissions.roles.update	\N	{}	[]	1	2022-04-27 13:24:45.747+00	2022-04-27 13:24:45.775+00
34	plugins::users-permissions.providers.read	\N	{}	[]	1	2022-04-27 13:24:45.753+00	2022-04-27 13:24:45.781+00
35	plugins::users-permissions.providers.update	\N	{}	[]	1	2022-04-27 13:24:45.753+00	2022-04-27 13:24:45.782+00
36	plugins::users-permissions.email-templates.read	\N	{}	[]	1	2022-04-27 13:24:45.753+00	2022-04-27 13:24:45.782+00
37	plugins::users-permissions.email-templates.update	\N	{}	[]	1	2022-04-27 13:24:45.754+00	2022-04-27 13:24:45.782+00
33	plugins::users-permissions.roles.delete	\N	{}	[]	1	2022-04-27 13:24:45.747+00	2022-04-27 13:24:45.782+00
38	plugins::users-permissions.advanced-settings.read	\N	{}	[]	1	2022-04-27 13:24:45.761+00	2022-04-27 13:24:45.79+00
39	plugins::users-permissions.advanced-settings.update	\N	{}	[]	1	2022-04-27 13:24:45.761+00	2022-04-27 13:24:45.791+00
40	admin::marketplace.read	\N	{}	[]	1	2022-04-27 13:24:45.775+00	2022-04-27 13:24:45.811+00
41	admin::marketplace.plugins.install	\N	{}	[]	1	2022-04-27 13:24:45.831+00	2022-04-27 13:24:45.864+00
42	admin::marketplace.plugins.uninstall	\N	{}	[]	1	2022-04-27 13:24:45.836+00	2022-04-27 13:24:45.872+00
43	admin::webhooks.create	\N	{}	[]	1	2022-04-27 13:24:45.842+00	2022-04-27 13:24:45.879+00
44	admin::webhooks.read	\N	{}	[]	1	2022-04-27 13:24:45.842+00	2022-04-27 13:24:45.88+00
45	admin::webhooks.update	\N	{}	[]	1	2022-04-27 13:24:45.843+00	2022-04-27 13:24:45.88+00
46	admin::webhooks.delete	\N	{}	[]	1	2022-04-27 13:24:45.843+00	2022-04-27 13:24:45.88+00
47	admin::users.create	\N	{}	[]	1	2022-04-27 13:24:45.844+00	2022-04-27 13:24:45.881+00
48	admin::users.read	\N	{}	[]	1	2022-04-27 13:24:45.844+00	2022-04-27 13:24:45.881+00
49	admin::users.update	\N	{}	[]	1	2022-04-27 13:24:45.844+00	2022-04-27 13:24:45.881+00
50	admin::users.delete	\N	{}	[]	1	2022-04-27 13:24:45.872+00	2022-04-27 13:24:45.904+00
51	admin::roles.create	\N	{}	[]	1	2022-04-27 13:24:45.927+00	2022-04-27 13:24:45.947+00
53	admin::roles.update	\N	{}	[]	1	2022-04-27 13:24:45.932+00	2022-04-27 13:24:45.95+00
52	admin::roles.read	\N	{}	[]	1	2022-04-27 13:24:45.928+00	2022-04-27 13:24:45.95+00
54	admin::roles.delete	\N	{}	[]	1	2022-04-27 13:24:45.938+00	2022-04-27 13:24:45.954+00
1464	plugins::content-manager.explorer.delete	application::category.category	{}	[]	1	2022-04-29 18:25:10.042+00	2022-04-29 18:25:10.064+00
1465	plugins::content-manager.explorer.delete	application::game.game	{}	[]	1	2022-04-29 18:25:10.043+00	2022-04-29 18:25:10.064+00
1466	plugins::content-manager.explorer.delete	application::platform.platform	{}	[]	1	2022-04-29 18:25:10.043+00	2022-04-29 18:25:10.064+00
1467	plugins::content-manager.explorer.delete	application::publisher.publisher	{}	[]	1	2022-04-29 18:25:10.043+00	2022-04-29 18:25:10.07+00
105	plugins::content-manager.explorer.create	application::game.game	{"fields": ["name", "slug", "short_description", "description", "price", "release_date", "rating", "cover", "gallery", "categories", "developers", "platforms", "publisher"]}	[]	1	2022-04-27 16:02:35.408+00	2022-04-27 16:02:35.448+00
106	plugins::content-manager.explorer.create	application::developer.developer	{"fields": ["name", "slug", "games"]}	[]	1	2022-04-27 16:02:35.408+00	2022-04-27 16:02:35.448+00
107	plugins::content-manager.explorer.create	application::category.category	{"fields": ["name", "slug", "games"]}	[]	1	2022-04-27 16:02:35.409+00	2022-04-27 16:02:35.449+00
108	plugins::content-manager.explorer.create	application::platform.platform	{"fields": ["name", "slug", "games"]}	[]	1	2022-04-27 16:02:35.409+00	2022-04-27 16:02:35.449+00
109	plugins::content-manager.explorer.create	application::publisher.publisher	{"fields": ["name", "slug", "games"]}	[]	1	2022-04-27 16:02:35.41+00	2022-04-27 16:02:35.449+00
110	plugins::content-manager.explorer.read	application::category.category	{"fields": ["name", "slug", "games"]}	[]	1	2022-04-27 16:02:35.41+00	2022-04-27 16:02:35.45+00
111	plugins::content-manager.explorer.read	application::developer.developer	{"fields": ["name", "slug", "games"]}	[]	1	2022-04-27 16:02:35.41+00	2022-04-27 16:02:35.45+00
112	plugins::content-manager.explorer.read	application::game.game	{"fields": ["name", "slug", "short_description", "description", "price", "release_date", "rating", "cover", "gallery", "categories", "developers", "platforms", "publisher"]}	[]	1	2022-04-27 16:02:35.411+00	2022-04-27 16:02:35.45+00
113	plugins::content-manager.explorer.read	application::platform.platform	{"fields": ["name", "slug", "games"]}	[]	1	2022-04-27 16:02:35.412+00	2022-04-27 16:02:35.45+00
114	plugins::content-manager.explorer.read	application::publisher.publisher	{"fields": ["name", "slug", "games"]}	[]	1	2022-04-27 16:02:35.412+00	2022-04-27 16:02:35.459+00
1468	plugins::content-manager.explorer.delete	plugins::users-permissions.user	{}	[]	1	2022-04-29 18:25:10.05+00	2022-04-29 18:25:10.07+00
115	plugins::content-manager.explorer.update	application::category.category	{"fields": ["name", "slug", "games"]}	[]	1	2022-04-27 16:02:35.511+00	2022-04-27 16:02:35.546+00
116	plugins::content-manager.explorer.update	application::developer.developer	{"fields": ["name", "slug", "games"]}	[]	1	2022-04-27 16:02:35.511+00	2022-04-27 16:02:35.547+00
117	plugins::content-manager.explorer.update	application::game.game	{"fields": ["name", "slug", "short_description", "description", "price", "release_date", "rating", "cover", "gallery", "categories", "developers", "platforms", "publisher"]}	[]	1	2022-04-27 16:02:35.511+00	2022-04-27 16:02:35.547+00
118	plugins::content-manager.explorer.update	application::platform.platform	{"fields": ["name", "slug", "games"]}	[]	1	2022-04-27 16:02:35.512+00	2022-04-27 16:02:35.547+00
119	plugins::content-manager.explorer.update	application::publisher.publisher	{"fields": ["name", "slug", "games"]}	[]	1	2022-04-27 16:02:35.512+00	2022-04-27 16:02:35.547+00
532	plugins::content-manager.explorer.delete	plugins::users-permissions.user	{}	[]	\N	2022-04-28 18:27:13.99+00	2022-04-28 18:29:09.225+00
1463	plugins::content-manager.explorer.delete	application::developer.developer	{}	[]	1	2022-04-29 18:25:10.042+00	2022-04-29 18:25:10.064+00
\.


--
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2022-04-27 13:24:45.35+00	2022-04-27 13:24:45.35+00
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2022-04-27 13:24:45.385+00	2022-04-27 13:24:45.385+00
3	Author	strapi-author	Authors can manage the content they have created.	2022-04-27 13:24:45.405+00	2022-04-27 13:24:45.405+00
\.


--
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
1	content-manager	collection-types	bulkdelete	f		1	\N	\N
2	content-manager	collection-types	bulkdelete	f		2	\N	\N
3	content-manager	collection-types	create	f		1	\N	\N
4	content-manager	collection-types	create	f		2	\N	\N
5	content-manager	collection-types	delete	f		1	\N	\N
6	content-manager	collection-types	delete	f		2	\N	\N
7	content-manager	collection-types	find	f		1	\N	\N
8	content-manager	collection-types	find	f		2	\N	\N
10	content-manager	collection-types	findone	f		2	\N	\N
9	content-manager	collection-types	findone	f		1	\N	\N
11	content-manager	collection-types	previewmanyrelations	f		1	\N	\N
12	content-manager	collection-types	previewmanyrelations	f		2	\N	\N
13	content-manager	collection-types	publish	f		1	\N	\N
14	content-manager	collection-types	publish	f		2	\N	\N
15	content-manager	collection-types	unpublish	f		1	\N	\N
16	content-manager	collection-types	unpublish	f		2	\N	\N
17	content-manager	collection-types	update	f		1	\N	\N
18	content-manager	collection-types	update	f		2	\N	\N
19	content-manager	components	findcomponentconfiguration	f		1	\N	\N
20	content-manager	components	findcomponentconfiguration	f		2	\N	\N
21	content-manager	components	findcomponents	f		1	\N	\N
22	content-manager	components	findcomponents	f		2	\N	\N
23	content-manager	components	updatecomponentconfiguration	f		1	\N	\N
24	content-manager	components	updatecomponentconfiguration	f		2	\N	\N
25	content-manager	content-types	findcontenttypeconfiguration	f		1	\N	\N
26	content-manager	content-types	findcontenttypeconfiguration	f		2	\N	\N
27	content-manager	content-types	findcontenttypes	f		1	\N	\N
28	content-manager	content-types	findcontenttypes	f		2	\N	\N
29	content-manager	content-types	findcontenttypessettings	f		1	\N	\N
30	content-manager	content-types	findcontenttypessettings	f		2	\N	\N
31	content-manager	content-types	updatecontenttypeconfiguration	f		1	\N	\N
32	content-manager	content-types	updatecontenttypeconfiguration	f		2	\N	\N
33	content-manager	relations	find	f		1	\N	\N
34	content-manager	relations	find	f		2	\N	\N
35	content-manager	single-types	createorupdate	f		1	\N	\N
36	content-manager	single-types	createorupdate	f		2	\N	\N
37	content-manager	single-types	delete	f		1	\N	\N
38	content-manager	single-types	delete	f		2	\N	\N
39	content-manager	single-types	find	f		1	\N	\N
40	content-manager	single-types	find	f		2	\N	\N
41	content-manager	single-types	publish	f		1	\N	\N
42	content-manager	single-types	publish	f		2	\N	\N
43	content-manager	single-types	unpublish	f		1	\N	\N
44	content-manager	single-types	unpublish	f		2	\N	\N
45	content-manager	uid	checkuidavailability	f		1	\N	\N
46	content-manager	uid	checkuidavailability	f		2	\N	\N
47	content-manager	uid	generateuid	f		1	\N	\N
48	content-manager	uid	generateuid	f		2	\N	\N
49	content-type-builder	builder	getreservednames	f		1	\N	\N
50	content-type-builder	builder	getreservednames	f		2	\N	\N
51	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
52	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
53	content-type-builder	componentcategories	editcategory	f		1	\N	\N
55	content-type-builder	components	createcomponent	f		1	\N	\N
54	content-type-builder	componentcategories	editcategory	f		2	\N	\N
56	content-type-builder	components	createcomponent	f		2	\N	\N
57	content-type-builder	components	deletecomponent	f		1	\N	\N
58	content-type-builder	components	deletecomponent	f		2	\N	\N
59	content-type-builder	components	getcomponent	f		1	\N	\N
60	content-type-builder	components	getcomponent	f		2	\N	\N
61	content-type-builder	components	getcomponents	f		1	\N	\N
63	content-type-builder	components	updatecomponent	f		1	\N	\N
64	content-type-builder	components	updatecomponent	f		2	\N	\N
62	content-type-builder	components	getcomponents	f		2	\N	\N
71	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
72	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
73	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
75	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
81	email	email	test	f		1	\N	\N
84	i18n	content-types	getnonlocalizedattributes	f		2	\N	\N
85	i18n	iso-locales	listisolocales	f		1	\N	\N
82	email	email	test	f		2	\N	\N
91	i18n	locales	listlocales	f		1	\N	\N
92	i18n	locales	listlocales	f		2	\N	\N
93	i18n	locales	updatelocale	f		1	\N	\N
95	upload	upload	count	f		1	\N	\N
102	upload	upload	findone	f		2	\N	\N
103	upload	upload	getsettings	f		1	\N	\N
101	upload	upload	findone	f		1	\N	\N
105	upload	upload	search	f		1	\N	\N
112	users-permissions	auth	callback	t		2	\N	\N
111	users-permissions	auth	callback	f		1	\N	\N
121	users-permissions	auth	resetpassword	f		1	\N	\N
132	users-permissions	user	destroyall	f		2	\N	\N
65	content-type-builder	connections	getconnections	f		1	\N	\N
74	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
83	i18n	content-types	getnonlocalizedattributes	f		1	\N	\N
94	i18n	locales	updatelocale	f		2	\N	\N
104	upload	upload	getsettings	f		2	\N	\N
114	users-permissions	auth	connect	t		2	\N	\N
129	users-permissions	user	destroy	f		1	\N	\N
138	users-permissions	user	me	t		2	\N	\N
150	users-permissions	userspermissions	getpermissions	f		2	\N	\N
160	users-permissions	userspermissions	getroutes	f		2	\N	\N
168	users-permissions	userspermissions	updateproviders	f		1	\N	\N
174	application	category	count	f		1	\N	\N
185	application	platform	create	f		1	\N	\N
195	application	platform	update	f		1	\N	\N
197	application	developer	count	f		2	\N	\N
207	application	developer	update	f		1	\N	\N
209	application	publisher	count	f		2	\N	\N
219	application	publisher	update	f		1	\N	\N
221	application	game	count	f		2	\N	\N
233	repositories	repositories	index	f		1	\N	\N
66	content-type-builder	connections	getconnections	f		2	\N	\N
76	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
86	i18n	iso-locales	listisolocales	f		2	\N	\N
99	upload	upload	find	f		1	\N	\N
107	upload	upload	updatesettings	f		1	\N	\N
117	users-permissions	auth	forgotpassword	f		1	\N	\N
126	users-permissions	user	count	f		2	\N	\N
135	users-permissions	user	findone	f		1	\N	\N
144	users-permissions	userspermissions	deleterole	f		2	\N	\N
155	users-permissions	userspermissions	getrole	f		1	\N	\N
170	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
175	application	category	create	f		1	\N	\N
184	application	category	update	f		2	\N	\N
186	application	platform	count	f		2	\N	\N
196	application	platform	update	f		2	\N	\N
198	application	developer	count	f		1	\N	\N
210	application	publisher	count	f		1	\N	\N
220	application	publisher	update	f		2	\N	\N
222	application	game	count	f		1	\N	\N
231	application	game	update	f		1	\N	\N
234	repositories	repositories	index	f		2	\N	\N
67	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
77	email	email	getsettings	f		1	\N	\N
88	i18n	locales	createlocale	f		2	\N	\N
100	upload	upload	find	f		2	\N	\N
106	upload	upload	search	f		2	\N	\N
119	users-permissions	auth	register	f		1	\N	\N
130	users-permissions	user	destroy	f		2	\N	\N
140	users-permissions	user	update	f		2	\N	\N
149	users-permissions	userspermissions	getpermissions	f		1	\N	\N
153	users-permissions	userspermissions	getproviders	f		1	\N	\N
165	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
176	application	category	create	f		2	\N	\N
187	application	platform	count	f		1	\N	\N
199	application	developer	create	f		1	\N	\N
211	application	publisher	create	f		1	\N	\N
223	application	game	create	f		1	\N	\N
237	entity-relationship-chart	entity-relationship-chart	geterdata	f		1	\N	\N
68	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
78	email	email	getsettings	f		2	\N	\N
87	i18n	locales	createlocale	f		1	\N	\N
96	upload	upload	count	f		2	\N	\N
118	users-permissions	auth	forgotpassword	t		2	\N	\N
125	users-permissions	user	count	f		1	\N	\N
134	users-permissions	user	find	f		2	\N	\N
145	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
152	users-permissions	userspermissions	getpolicies	f		2	\N	\N
169	users-permissions	userspermissions	updateproviders	f		2	\N	\N
177	application	category	delete	f		1	\N	\N
188	application	platform	create	f		2	\N	\N
200	application	developer	delete	f		1	\N	\N
212	application	publisher	create	f		2	\N	\N
224	application	game	create	f		2	\N	\N
232	application	game	update	f		2	\N	\N
236	entity-relationship-chart	entity-relationship-chart	geterdata	f		2	\N	\N
110	upload	upload	upload	t		2	\N	\N
69	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
80	email	email	send	f		2	\N	\N
90	i18n	locales	deletelocale	f		2	\N	\N
97	upload	upload	destroy	f		1	\N	\N
109	upload	upload	upload	f		1	\N	\N
120	users-permissions	auth	register	t		2	\N	\N
128	users-permissions	user	create	f		2	\N	\N
136	users-permissions	user	findone	f		2	\N	\N
146	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
158	users-permissions	userspermissions	getroles	f		2	\N	\N
162	users-permissions	userspermissions	index	f		2	\N	\N
171	users-permissions	userspermissions	updaterole	f		1	\N	\N
178	application	category	delete	f		2	\N	\N
189	application	platform	delete	f		2	\N	\N
201	application	developer	create	f		2	\N	\N
208	application	developer	update	f		2	\N	\N
213	application	publisher	delete	f		1	\N	\N
225	application	game	delete	f		2	\N	\N
235	entity-relationship-chart	entity-relationship-chart	index	f		1	\N	\N
70	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
79	email	email	send	f		1	\N	\N
89	i18n	locales	deletelocale	f		1	\N	\N
98	upload	upload	destroy	f		2	\N	\N
108	upload	upload	updatesettings	f		2	\N	\N
116	users-permissions	auth	emailconfirmation	t		2	\N	\N
127	users-permissions	user	create	f		1	\N	\N
139	users-permissions	user	update	f		1	\N	\N
148	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
156	users-permissions	userspermissions	getrole	f		2	\N	\N
164	users-permissions	userspermissions	searchusers	f		2	\N	\N
179	application	category	find	f		1	\N	\N
190	application	platform	delete	f		1	\N	\N
202	application	developer	delete	f		2	\N	\N
214	application	publisher	delete	f		2	\N	\N
226	application	game	delete	f		1	\N	\N
238	entity-relationship-chart	entity-relationship-chart	index	f		2	\N	\N
113	users-permissions	auth	connect	t		1	\N	\N
123	users-permissions	auth	sendemailconfirmation	f		1	\N	\N
133	users-permissions	user	find	f		1	\N	\N
143	users-permissions	userspermissions	deleterole	f		1	\N	\N
159	users-permissions	userspermissions	getroutes	f		1	\N	\N
167	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
180	application	category	find	f		2	\N	\N
191	application	platform	find	f		1	\N	\N
203	application	developer	find	f		2	\N	\N
215	application	publisher	find	f		1	\N	\N
227	application	game	find	f		1	\N	\N
239	application	game	populate	f		1	\N	\N
115	users-permissions	auth	emailconfirmation	f		1	\N	\N
124	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
137	users-permissions	user	me	t		1	\N	\N
147	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
157	users-permissions	userspermissions	getroles	f		1	\N	\N
163	users-permissions	userspermissions	searchusers	f		1	\N	\N
181	application	category	findone	f		1	\N	\N
192	application	platform	find	f		2	\N	\N
204	application	developer	find	f		1	\N	\N
216	application	publisher	find	f		2	\N	\N
228	application	game	find	f		2	\N	\N
240	application	game	populate	t		2	\N	\N
122	users-permissions	auth	resetpassword	t		2	\N	\N
131	users-permissions	user	destroyall	f		1	\N	\N
141	users-permissions	userspermissions	createrole	f		1	\N	\N
151	users-permissions	userspermissions	getpolicies	f		1	\N	\N
161	users-permissions	userspermissions	index	f		1	\N	\N
172	users-permissions	userspermissions	updaterole	f		2	\N	\N
182	application	category	findone	f		2	\N	\N
193	application	platform	findone	f		1	\N	\N
205	application	developer	findone	f		1	\N	\N
217	application	publisher	findone	f		1	\N	\N
229	application	game	findone	f		1	\N	\N
142	users-permissions	userspermissions	createrole	f		2	\N	\N
154	users-permissions	userspermissions	getproviders	f		2	\N	\N
166	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
173	application	category	count	f		2	\N	\N
183	application	category	update	f		1	\N	\N
194	application	platform	findone	f		2	\N	\N
206	application	developer	findone	f		2	\N	\N
218	application	publisher	findone	f		2	\N	\N
230	application	game	findone	f		2	\N	\N
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
2	Public	Default role given to unauthenticated user.	public	\N	\N
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: wongames
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Name: categories_games__games_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.categories_games__games_categories_id_seq', 76, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.categories_id_seq', 28, true);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.core_store_id_seq', 34, true);


--
-- Name: developers_games__games_developers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.developers_games__games_developers_id_seq', 25, true);


--
-- Name: developers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.developers_id_seq', 46, true);


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.games_id_seq', 26, true);


--
-- Name: games_platforms__platforms_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.games_platforms__platforms_games_id_seq', 34, true);


--
-- Name: i18n_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);


--
-- Name: platforms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.platforms_id_seq', 3, true);


--
-- Name: publishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.publishers_id_seq', 42, true);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 1468, true);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 1, false);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1, false);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 240, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wongames
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, false);


--
-- Name: categories_games__games_categories categories_games__games_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.categories_games__games_categories
    ADD CONSTRAINT categories_games__games_categories_pkey PRIMARY KEY (id);


--
-- Name: categories categories_name_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_unique UNIQUE (name);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: categories categories_slug_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: developers_games__games_developers developers_games__games_developers_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.developers_games__games_developers
    ADD CONSTRAINT developers_games__games_developers_pkey PRIMARY KEY (id);


--
-- Name: developers developers_name_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.developers
    ADD CONSTRAINT developers_name_unique UNIQUE (name);


--
-- Name: developers developers_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.developers
    ADD CONSTRAINT developers_pkey PRIMARY KEY (id);


--
-- Name: developers developers_slug_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.developers
    ADD CONSTRAINT developers_slug_unique UNIQUE (slug);


--
-- Name: games games_name_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_name_unique UNIQUE (name);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: games_platforms__platforms_games games_platforms__platforms_games_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.games_platforms__platforms_games
    ADD CONSTRAINT games_platforms__platforms_games_pkey PRIMARY KEY (id);


--
-- Name: games games_slug_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_slug_unique UNIQUE (slug);


--
-- Name: i18n_locales i18n_locales_code_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);


--
-- Name: i18n_locales i18n_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);


--
-- Name: platforms platforms_name_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT platforms_name_unique UNIQUE (name);


--
-- Name: platforms platforms_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT platforms_pkey PRIMARY KEY (id);


--
-- Name: platforms platforms_slug_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT platforms_slug_unique UNIQUE (slug);


--
-- Name: publishers publishers_name_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publishers_name_unique UNIQUE (name);


--
-- Name: publishers publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publishers_pkey PRIMARY KEY (id);


--
-- Name: publishers publishers_slug_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publishers_slug_unique UNIQUE (slug);


--
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: wongames
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- PostgreSQL database dump complete
--

