PGDMP     ;                     w            yanhua    11.3    11.3 w    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    41112    yanhua    DATABASE     �   CREATE DATABASE yanhua WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Chinese (Simplified)_People''s Republic of China.936' LC_CTYPE = 'Chinese (Simplified)_People''s Republic of China.936';
    DROP DATABASE yanhua;
             yanhua    false            �            1259    41113 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         yanhua    false            �            1259    41116    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       yanhua    false    196            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       yanhua    false    197            �            1259    41118    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         yanhua    false            �            1259    41121    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       yanhua    false    198            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       yanhua    false    199            �            1259    41123    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         yanhua    false            �            1259    41126    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       yanhua    false    200            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       yanhua    false    201            �            1259    41128    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         yanhua    false            �            1259    41135    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       yanhua    false    202            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       yanhua    false    203            �            1259    41137    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         yanhua    false            �            1259    41140    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       yanhua    false    204            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       yanhua    false    205            �            1259    41142    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         yanhua    false            �            1259    41148    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       yanhua    false    206            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       yanhua    false    207            �            1259    41150    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         yanhua    false            �            1259    41156 	   user_user    TABLE     �  CREATE TABLE public.user_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    cellphone character varying(11),
    nicename character varying(50) NOT NULL,
    slogan character varying(200) NOT NULL,
    uidentity character varying(18),
    address character varying(150),
    sex integer NOT NULL,
    head_image character varying(100) NOT NULL
);
    DROP TABLE public.user_user;
       public         yanhua    false            �            1259    41162    user_user_groups    TABLE        CREATE TABLE public.user_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.user_user_groups;
       public         yanhua    false            �            1259    41165    user_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.user_user_groups_id_seq;
       public       yanhua    false    210            �           0    0    user_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.user_user_groups_id_seq OWNED BY public.user_user_groups.id;
            public       yanhua    false    211            �            1259    41167    user_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_user_id_seq;
       public       yanhua    false    209            �           0    0    user_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_user_id_seq OWNED BY public.user_user.id;
            public       yanhua    false    212            �            1259    41169    user_user_user_permissions    TABLE     �   CREATE TABLE public.user_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.user_user_user_permissions;
       public         yanhua    false            �            1259    41172 !   user_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.user_user_user_permissions_id_seq;
       public       yanhua    false    213            �           0    0 !   user_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.user_user_user_permissions_id_seq OWNED BY public.user_user_user_permissions.id;
            public       yanhua    false    214            �            1259    41174    ziliao_category    TABLE     x  CREATE TABLE public.ziliao_category (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    name_full character varying(200) NOT NULL,
    note_lable character varying(200) NOT NULL,
    creat_datetime timestamp with time zone NOT NULL,
    update_datetime timestamp with time zone NOT NULL,
    parent_id integer,
    image character varying(100) NOT NULL
);
 #   DROP TABLE public.ziliao_category;
       public         yanhua    false            �            1259    41180    ziliao_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ziliao_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.ziliao_category_id_seq;
       public       yanhua    false    215            �           0    0    ziliao_category_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.ziliao_category_id_seq OWNED BY public.ziliao_category.id;
            public       yanhua    false    216            �            1259    41182    ziliao_datafile    TABLE     X  CREATE TABLE public.ziliao_datafile (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    note_lable character varying(200) NOT NULL,
    file_path character varying(200) NOT NULL,
    creat_datetime timestamp with time zone NOT NULL,
    update_datetime timestamp with time zone NOT NULL,
    category_id integer NOT NULL
);
 #   DROP TABLE public.ziliao_datafile;
       public         yanhua    false            �            1259    41185    ziliao_datafile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ziliao_datafile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.ziliao_datafile_id_seq;
       public       yanhua    false    217            �           0    0    ziliao_datafile_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.ziliao_datafile_id_seq OWNED BY public.ziliao_datafile.id;
            public       yanhua    false    218            �
           2604    41187    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       yanhua    false    197    196            �
           2604    41188    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       yanhua    false    199    198            �
           2604    41189    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       yanhua    false    201    200            �
           2604    41190    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       yanhua    false    203    202            �
           2604    41191    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       yanhua    false    205    204            �
           2604    41192    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       yanhua    false    207    206            �
           2604    41193    user_user id    DEFAULT     l   ALTER TABLE ONLY public.user_user ALTER COLUMN id SET DEFAULT nextval('public.user_user_id_seq'::regclass);
 ;   ALTER TABLE public.user_user ALTER COLUMN id DROP DEFAULT;
       public       yanhua    false    212    209            �
           2604    41194    user_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.user_user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.user_user_groups ALTER COLUMN id DROP DEFAULT;
       public       yanhua    false    211    210            �
           2604    41195    user_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.user_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.user_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.user_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       yanhua    false    214    213            �
           2604    41196    ziliao_category id    DEFAULT     x   ALTER TABLE ONLY public.ziliao_category ALTER COLUMN id SET DEFAULT nextval('public.ziliao_category_id_seq'::regclass);
 A   ALTER TABLE public.ziliao_category ALTER COLUMN id DROP DEFAULT;
       public       yanhua    false    216    215            �
           2604    41197    ziliao_datafile id    DEFAULT     x   ALTER TABLE ONLY public.ziliao_datafile ALTER COLUMN id SET DEFAULT nextval('public.ziliao_datafile_id_seq'::regclass);
 A   ALTER TABLE public.ziliao_datafile ALTER COLUMN id DROP DEFAULT;
       public       yanhua    false    218    217            �          0    41113 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       yanhua    false    196   ��       �          0    41118    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       yanhua    false    198   ֜       �          0    41123    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       yanhua    false    200   _�       �          0    41128    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       yanhua    false    202   ��       �          0    41137    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       yanhua    false    204   ~�       �          0    41142    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       yanhua    false    206   ��       �          0    41150    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       yanhua    false    208   ӡ       �          0    41156 	   user_user 
   TABLE DATA               �   COPY public.user_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, cellphone, nicename, slogan, uidentity, address, sex, head_image) FROM stdin;
    public       yanhua    false    209   $�       �          0    41162    user_user_groups 
   TABLE DATA               A   COPY public.user_user_groups (id, user_id, group_id) FROM stdin;
    public       yanhua    false    210   &�       �          0    41169    user_user_user_permissions 
   TABLE DATA               P   COPY public.user_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       yanhua    false    213   I�       �          0    41174    ziliao_category 
   TABLE DATA               }   COPY public.ziliao_category (id, name, name_full, note_lable, creat_datetime, update_datetime, parent_id, image) FROM stdin;
    public       yanhua    false    215   f�       �          0    41182    ziliao_datafile 
   TABLE DATA               x   COPY public.ziliao_datafile (id, name, note_lable, file_path, creat_datetime, update_datetime, category_id) FROM stdin;
    public       yanhua    false    217   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);
            public       yanhua    false    197            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 32, true);
            public       yanhua    false    199            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);
            public       yanhua    false    201            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2, true);
            public       yanhua    false    203            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);
            public       yanhua    false    205            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);
            public       yanhua    false    207            �           0    0    user_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.user_user_groups_id_seq', 1, true);
            public       yanhua    false    211            �           0    0    user_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_user_id_seq', 1, true);
            public       yanhua    false    212            �           0    0 !   user_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.user_user_user_permissions_id_seq', 1, false);
            public       yanhua    false    214            �           0    0    ziliao_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ziliao_category_id_seq', 1, false);
            public       yanhua    false    216            �           0    0    ziliao_datafile_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ziliao_datafile_id_seq', 1, false);
            public       yanhua    false    218            �
           2606    41199    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         yanhua    false    196            �
           2606    41201 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         yanhua    false    198    198            �
           2606    41203 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         yanhua    false    198            �
           2606    41205    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         yanhua    false    196            �
           2606    41207 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         yanhua    false    200    200            �
           2606    41209 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         yanhua    false    200            �
           2606    41211 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         yanhua    false    202            �
           2606    41213 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         yanhua    false    204    204            �
           2606    41215 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         yanhua    false    204            �
           2606    41217 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         yanhua    false    206            �
           2606    41219 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         yanhua    false    208            �
           2606    41221 &   user_user_groups user_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.user_user_groups DROP CONSTRAINT user_user_groups_pkey;
       public         yanhua    false    210            �
           2606    41223 @   user_user_groups user_user_groups_user_id_group_id_bb60391f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_group_id_bb60391f_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.user_user_groups DROP CONSTRAINT user_user_groups_user_id_group_id_bb60391f_uniq;
       public         yanhua    false    210    210            �
           2606    41225    user_user user_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_user DROP CONSTRAINT user_user_pkey;
       public         yanhua    false    209            �
           2606    41227 :   user_user_user_permissions user_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.user_user_user_permissions DROP CONSTRAINT user_user_user_permissions_pkey;
       public         yanhua    false    213            �
           2606    41229 Y   user_user_user_permissions user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.user_user_user_permissions DROP CONSTRAINT user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq;
       public         yanhua    false    213    213            �
           2606    41231     user_user user_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.user_user DROP CONSTRAINT user_user_username_key;
       public         yanhua    false    209            �
           2606    41233 (   ziliao_category ziliao_category_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.ziliao_category
    ADD CONSTRAINT ziliao_category_name_key UNIQUE (name);
 R   ALTER TABLE ONLY public.ziliao_category DROP CONSTRAINT ziliao_category_name_key;
       public         yanhua    false    215                       2606    41235 $   ziliao_category ziliao_category_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.ziliao_category
    ADD CONSTRAINT ziliao_category_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.ziliao_category DROP CONSTRAINT ziliao_category_pkey;
       public         yanhua    false    215                       2606    41237 $   ziliao_datafile ziliao_datafile_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.ziliao_datafile
    ADD CONSTRAINT ziliao_datafile_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.ziliao_datafile DROP CONSTRAINT ziliao_datafile_pkey;
       public         yanhua    false    217            �
           1259    41238    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         yanhua    false    196            �
           1259    41239 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         yanhua    false    198            �
           1259    41240 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         yanhua    false    198            �
           1259    41241 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         yanhua    false    200            �
           1259    41242 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         yanhua    false    202            �
           1259    41243 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         yanhua    false    202            �
           1259    41244 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         yanhua    false    208            �
           1259    41245 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         yanhua    false    208            �
           1259    41246 "   user_user_groups_group_id_c57f13c0    INDEX     c   CREATE INDEX user_user_groups_group_id_c57f13c0 ON public.user_user_groups USING btree (group_id);
 6   DROP INDEX public.user_user_groups_group_id_c57f13c0;
       public         yanhua    false    210            �
           1259    41247 !   user_user_groups_user_id_13f9a20d    INDEX     a   CREATE INDEX user_user_groups_user_id_13f9a20d ON public.user_user_groups USING btree (user_id);
 5   DROP INDEX public.user_user_groups_user_id_13f9a20d;
       public         yanhua    false    210            �
           1259    41248 1   user_user_user_permissions_permission_id_ce49d4de    INDEX     �   CREATE INDEX user_user_user_permissions_permission_id_ce49d4de ON public.user_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.user_user_user_permissions_permission_id_ce49d4de;
       public         yanhua    false    213            �
           1259    41249 +   user_user_user_permissions_user_id_31782f58    INDEX     u   CREATE INDEX user_user_user_permissions_user_id_31782f58 ON public.user_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.user_user_user_permissions_user_id_31782f58;
       public         yanhua    false    213            �
           1259    41250     user_user_username_e2bdfe0c_like    INDEX     n   CREATE INDEX user_user_username_e2bdfe0c_like ON public.user_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.user_user_username_e2bdfe0c_like;
       public         yanhua    false    209            �
           1259    41251 "   ziliao_category_name_dc67f6c8_like    INDEX     r   CREATE INDEX ziliao_category_name_dc67f6c8_like ON public.ziliao_category USING btree (name varchar_pattern_ops);
 6   DROP INDEX public.ziliao_category_name_dc67f6c8_like;
       public         yanhua    false    215                        1259    41252 "   ziliao_category_parent_id_af7c70d7    INDEX     c   CREATE INDEX ziliao_category_parent_id_af7c70d7 ON public.ziliao_category USING btree (parent_id);
 6   DROP INDEX public.ziliao_category_parent_id_af7c70d7;
       public         yanhua    false    215                       1259    41253 $   ziliao_datafile_category_id_b0284576    INDEX     g   CREATE INDEX ziliao_datafile_category_id_b0284576 ON public.ziliao_datafile USING btree (category_id);
 8   DROP INDEX public.ziliao_datafile_category_id_b0284576;
       public         yanhua    false    217                       2606    41254 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       yanhua    false    200    198    2781                       2606    41259 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       yanhua    false    196    198    2770                       2606    41264 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       yanhua    false    204    200    2789            	           2606    41269 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       yanhua    false    2789    204    202            
           2606    41274 B   django_admin_log django_admin_log_user_id_c564eba6_fk_user_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_user_id;
       public       yanhua    false    2797    202    209                       2606    41279 D   user_user_groups user_user_groups_group_id_c57f13c0_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_group_id_c57f13c0_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.user_user_groups DROP CONSTRAINT user_user_groups_group_id_c57f13c0_fk_auth_group_id;
       public       yanhua    false    2770    210    196                       2606    41284 B   user_user_groups user_user_groups_user_id_13f9a20d_fk_user_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_13f9a20d_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.user_user_groups DROP CONSTRAINT user_user_groups_user_id_13f9a20d_fk_user_user_id;
       public       yanhua    false    2797    210    209                       2606    41289 S   user_user_user_permissions user_user_user_permi_permission_id_ce49d4de_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permi_permission_id_ce49d4de_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.user_user_user_permissions DROP CONSTRAINT user_user_user_permi_permission_id_ce49d4de_fk_auth_perm;
       public       yanhua    false    213    200    2781                       2606    41294 V   user_user_user_permissions user_user_user_permissions_user_id_31782f58_fk_user_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_31782f58_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.user_user_user_permissions DROP CONSTRAINT user_user_user_permissions_user_id_31782f58_fk_user_user_id;
       public       yanhua    false    213    2797    209                       2606    41299 H   ziliao_category ziliao_category_parent_id_af7c70d7_fk_ziliao_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ziliao_category
    ADD CONSTRAINT ziliao_category_parent_id_af7c70d7_fk_ziliao_category_id FOREIGN KEY (parent_id) REFERENCES public.ziliao_category(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.ziliao_category DROP CONSTRAINT ziliao_category_parent_id_af7c70d7_fk_ziliao_category_id;
       public       yanhua    false    2818    215    215                       2606    41304 J   ziliao_datafile ziliao_datafile_category_id_b0284576_fk_ziliao_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ziliao_datafile
    ADD CONSTRAINT ziliao_datafile_category_id_b0284576_fk_ziliao_category_id FOREIGN KEY (category_id) REFERENCES public.ziliao_category(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.ziliao_datafile DROP CONSTRAINT ziliao_datafile_category_id_b0284576_fk_ziliao_category_id;
       public       yanhua    false    217    2818    215            �      x�3�|�z�˩��b���� 0fU      �   y   x�ιAA�&���rQ�q��3��=z������NVw����=�����h�m �
�Q
���h�@�(�
������<p<��� �x.�����q<���KūA�+Q��|?�� K      �   P  x�]�Mn�0��}
N��7�^�Re�K�( pZ����03f��G�]|F}�)s]�-~��m�'e�~��ڂj����;is��}��x'm�o���<n�+��_��,·�d���YQԲ�E��;$������৐���Uxu�hs�-�I�7���10�;/r�S�s�*���Ԧ����y���DPq>C@|�����g{��R%�~?�Q�F&H�,�EJ"i�%��2T����
��m2v6F,�93�"&&����[|?��u��MF.�9*���<�DPL^�8#B����}�W����d�a�d�RbK�s頎��Mk���i      �   �   x�]�A�0D��)H�
i��Ы 1-����h�p�<��1��a��M���!�b�����$�
̢�q��N����x{�G$��
�`��P@ ��c�(ጦɪߥm��^/i����n��V���jc�>@u�7Sez��紴�`M�7v^����󴃟v� �?�>      �   o   x�M��
�0�������av1���8�Ρ{����.B�$t&�1S����Z��GR�^q��JH�X�����K�w�i�B��V���w~<�Y�h�d��y���ߚ��/�=2      �   �  x���ݎ� �������~��eBZ�&Qq '���j�nڬ}����Npq�c�c�I�!��M0�/�����6kp]2��_ȋ�H����v!ӍՠQ5xE�B��v^j�M�*+�T}�NN��{cǥ�Է����W�((����e�P�����ߧԙR�)�XڱS��*`E@F�=�W>��v&6�G��!<C긍�ٸ��eO2Yv��[#_�7�
�y��Vj笓��^u�l,�2�Zs�q-�F$^z�
����цꜝ��0�QQ/��\��<E��������x�F����4�Y����cFI�l;���DK�o��OIy��p�Ǐ�Sش�CHX,x"����!��߽���f��%��+�^o��L��MLo�=������507�Zi����a�AP _�$xW��&%2~|q,��Wy�\��z�      �   A  x����j�@ @ѵ���23ɨ�hՄ�3b�yэ�D�Q�<��"�_���W�K]�wy����5W�Zp�sp��=��IO��2�E$��4ZvT�K�d���l6i3�M�U. �zh��ixN�����a�l�Fm �"�>?�)�L�"K�5O�
�Y�~�S>ֆ>�S�����1���c�
u�\��ta�b=_^�s!Cq�"�:>�O�H��!Q �+�ص��Y�I�)i�EGL%s��	*�vp�;�!oОaw�8�	�~SW0��h�q_W�~�7���������;g��d����z�=�,���Т      �   �   x�3�,H�NI3�/�H425S145 ���2�T�TS�o�����,O�W��0�$��\�#���P�,���R�`s�t[N#CK]s]#s#C+SS+Ss=S3cm���ļ��D���Lΐ��< "T����`hf����TW�l��������Ȉ?����_tm|�e��s9��oz�~��eM/g�I�!giqj�~qIbIf�~fnbz�~Fjb�~JjZbiN�^VA:W� ׵R�      �      x�3�4�4����� �X      �      x������ � �      �      x������ � �      �      x������ � �     