    

--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alumnos; Type: TABLE; Schema: public; Owner: sergio; Tablespace: 
--

CREATE TABLE alumnos (
    id integer NOT NULL,
    alumno_rut integer NOT NULL,
    alumno_nombre character varying NOT NULL,
    alumno_apellido character varying,
    alumno_correo character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.alumnos OWNER TO sergio;

--
-- Name: alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: sergio
--

CREATE SEQUENCE alumnos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumnos_id_seq OWNER TO sergio;

--
-- Name: alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergio
--

ALTER SEQUENCE alumnos_id_seq OWNED BY alumnos.id;


--
-- Name: curso_alumnos; Type: TABLE; Schema: public; Owner: sergio; Tablespace: 
--

CREATE TABLE curso_alumnos (
    id integer NOT NULL,
    c_a_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.curso_alumnos OWNER TO sergio;

--
-- Name: curso_alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: sergio
--

CREATE SEQUENCE curso_alumnos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.curso_alumnos_id_seq OWNER TO sergio;

--
-- Name: curso_alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergio
--

ALTER SEQUENCE curso_alumnos_id_seq OWNED BY curso_alumnos.id;


--
-- Name: cursos; Type: TABLE; Schema: public; Owner: sergio; Tablespace: 
--

CREATE TABLE cursos (
    id integer NOT NULL,
    curso_id integer NOT NULL,
    curso_nombre character varying NOT NULL,
    curso_semestre integer NOT NULL,
    curso_ano integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.cursos OWNER TO sergio;

--
-- Name: cursos_id_seq; Type: SEQUENCE; Schema: public; Owner: sergio
--

CREATE SEQUENCE cursos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cursos_id_seq OWNER TO sergio;

--
-- Name: cursos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergio
--

ALTER SEQUENCE cursos_id_seq OWNED BY cursos.id;


--
-- Name: encuesta; Type: TABLE; Schema: public; Owner: sergio; Tablespace: 
--

CREATE TABLE encuesta (
    id integer NOT NULL,
    encuesta_id integer NOT NULL,
    encuesta_estado boolean NOT NULL,
    encuesta_nombre character varying NOT NULL,
    encuesta_descripcion character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.encuesta OWNER TO sergio;

--
-- Name: encuesta_id_seq; Type: SEQUENCE; Schema: public; Owner: sergio
--

CREATE SEQUENCE encuesta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.encuesta_id_seq OWNER TO sergio;

--
-- Name: encuesta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergio
--

ALTER SEQUENCE encuesta_id_seq OWNED BY encuesta.id;


--
-- Name: feedbacks; Type: TABLE; Schema: public; Owner: sergio; Tablespace: 
--

CREATE TABLE feedbacks (
    id integer NOT NULL,
    feed_id integer NOT NULL,
    feed_resumen integer,
    feed_motivo character varying,
    feed_fecha date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.feedbacks OWNER TO sergio;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE; Schema: public; Owner: sergio
--

CREATE SEQUENCE feedbacks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.feedbacks_id_seq OWNER TO sergio;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergio
--

ALTER SEQUENCE feedbacks_id_seq OWNED BY feedbacks.id;


--
-- Name: grupos; Type: TABLE; Schema: public; Owner: sergio; Tablespace: 
--

CREATE TABLE grupos (
    id integer NOT NULL,
    grupo_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.grupos OWNER TO sergio;

--
-- Name: grupos_id_seq; Type: SEQUENCE; Schema: public; Owner: sergio
--

CREATE SEQUENCE grupos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grupos_id_seq OWNER TO sergio;

--
-- Name: grupos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergio
--

ALTER SEQUENCE grupos_id_seq OWNED BY grupos.id;


--
-- Name: pregunta; Type: TABLE; Schema: public; Owner: sergio; Tablespace: 
--

CREATE TABLE pregunta (
    id integer NOT NULL,
    pregunta_id integer NOT NULL,
    pregunta_enunciado character varying NOT NULL,
    pregunta_descripcion character varying NOT NULL,
    pregunta_opciones integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.pregunta OWNER TO sergio;

--
-- Name: pregunta_id_seq; Type: SEQUENCE; Schema: public; Owner: sergio
--

CREATE SEQUENCE pregunta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pregunta_id_seq OWNER TO sergio;

--
-- Name: pregunta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergio
--

ALTER SEQUENCE pregunta_id_seq OWNED BY pregunta.id;


--
-- Name: profesors; Type: TABLE; Schema: public; Owner: sergio; Tablespace: 
--

CREATE TABLE profesors (
    id integer NOT NULL,
    profesor_rut integer NOT NULL,
    profesor_nombre character varying NOT NULL,
    profesor_apellido character varying,
    profesor_correo character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.profesors OWNER TO sergio;

--
-- Name: profesors_id_seq; Type: SEQUENCE; Schema: public; Owner: sergio
--

CREATE SEQUENCE profesors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profesors_id_seq OWNER TO sergio;

--
-- Name: profesors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergio
--

ALTER SEQUENCE profesors_id_seq OWNED BY profesors.id;


--
-- Name: respuesta; Type: TABLE; Schema: public; Owner: sergio; Tablespace: 
--

CREATE TABLE respuesta (
    id integer NOT NULL,
    respuesta_id integer NOT NULL,
    respuesta_valores integer,
    respuesta_fecha date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.respuesta OWNER TO sergio;

--
-- Name: respuesta_id_seq; Type: SEQUENCE; Schema: public; Owner: sergio
--

CREATE SEQUENCE respuesta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.respuesta_id_seq OWNER TO sergio;

--
-- Name: respuesta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergio
--

ALTER SEQUENCE respuesta_id_seq OWNED BY respuesta.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: sergio; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO sergio;

--
-- Name: tipo_encuesta; Type: TABLE; Schema: public; Owner: sergio; Tablespace: 
--

CREATE TABLE tipo_encuesta (
    id integer NOT NULL,
    tipo_id integer NOT NULL,
    tipo_nombre character varying NOT NULL,
    tipo_descripcion character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.tipo_encuesta OWNER TO sergio;

--
-- Name: tipo_encuesta_id_seq; Type: SEQUENCE; Schema: public; Owner: sergio
--

CREATE SEQUENCE tipo_encuesta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_encuesta_id_seq OWNER TO sergio;

--
-- Name: tipo_encuesta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergio
--

ALTER SEQUENCE tipo_encuesta_id_seq OWNED BY tipo_encuesta.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sergio
--

ALTER TABLE ONLY alumnos ALTER COLUMN id SET DEFAULT nextval('alumnos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sergio
--

ALTER TABLE ONLY curso_alumnos ALTER COLUMN id SET DEFAULT nextval('curso_alumnos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sergio
--

ALTER TABLE ONLY cursos ALTER COLUMN id SET DEFAULT nextval('cursos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sergio
--

ALTER TABLE ONLY encuesta ALTER COLUMN id SET DEFAULT nextval('encuesta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sergio
--

ALTER TABLE ONLY feedbacks ALTER COLUMN id SET DEFAULT nextval('feedbacks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sergio
--

ALTER TABLE ONLY grupos ALTER COLUMN id SET DEFAULT nextval('grupos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sergio
--

ALTER TABLE ONLY pregunta ALTER COLUMN id SET DEFAULT nextval('pregunta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sergio
--

ALTER TABLE ONLY profesors ALTER COLUMN id SET DEFAULT nextval('profesors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sergio
--

ALTER TABLE ONLY respuesta ALTER COLUMN id SET DEFAULT nextval('respuesta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sergio
--

ALTER TABLE ONLY tipo_encuesta ALTER COLUMN id SET DEFAULT nextval('tipo_encuesta_id_seq'::regclass);


--
-- Name: alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: sergio; Tablespace: 
--

ALTER TABLE ONLY alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (id);


--
-- Name: curso_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: sergio; Tablespace: 
--

ALTER TABLE ONLY curso_alumnos
    ADD CONSTRAINT curso_alumnos_pkey PRIMARY KEY (id);


--
-- Name: cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: sergio; Tablespace: 
--

ALTER TABLE ONLY cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (id);


--
-- Name: encuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: sergio; Tablespace: 
--

ALTER TABLE ONLY encuesta
    ADD CONSTRAINT encuesta_pkey PRIMARY KEY (id);


--
-- Name: feedbacks_pkey; Type: CONSTRAINT; Schema: public; Owner: sergio; Tablespace: 
--

ALTER TABLE ONLY feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);


--
-- Name: grupos_pkey; Type: CONSTRAINT; Schema: public; Owner: sergio; Tablespace: 
--

ALTER TABLE ONLY grupos
    ADD CONSTRAINT grupos_pkey PRIMARY KEY (id);


--
-- Name: pregunta_pkey; Type: CONSTRAINT; Schema: public; Owner: sergio; Tablespace: 
--

ALTER TABLE ONLY pregunta
    ADD CONSTRAINT pregunta_pkey PRIMARY KEY (id);


--
-- Name: profesors_pkey; Type: CONSTRAINT; Schema: public; Owner: sergio; Tablespace: 
--

ALTER TABLE ONLY profesors
    ADD CONSTRAINT profesors_pkey PRIMARY KEY (id);


--
-- Name: respuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: sergio; Tablespace: 
--

ALTER TABLE ONLY respuesta
    ADD CONSTRAINT respuesta_pkey PRIMARY KEY (id);


--
-- Name: tipo_encuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: sergio; Tablespace: 
--

ALTER TABLE ONLY tipo_encuesta
    ADD CONSTRAINT tipo_encuesta_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: sergio; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

