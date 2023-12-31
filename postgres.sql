PGDMP      	    
             |            postgres    16.1    16.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    5    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = icu LOCALE = 'en_US.UTF-8' ICU_LOCALE = 'en-US';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    6028            �           0    0    postgres    DATABASE PROPERTIES     S   ALTER DATABASE postgres SET search_path TO '$user', 'public', 'topology', 'tiger';
                     postgres    false                        2615    18242    tiger    SCHEMA        CREATE SCHEMA tiger;
    DROP SCHEMA tiger;
                postgres    false                        2615    18498 
   tiger_data    SCHEMA        CREATE SCHEMA tiger_data;
    DROP SCHEMA tiger_data;
                postgres    false                        2615    17466    topology    SCHEMA        CREATE SCHEMA topology;
    DROP SCHEMA topology;
                dungngo    false            �           0    0    SCHEMA topology    COMMENT     9   COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';
                   dungngo    false    14                        3079    18646    address_standardizer 	   EXTENSION     H   CREATE EXTENSION IF NOT EXISTS address_standardizer WITH SCHEMA public;
 %   DROP EXTENSION address_standardizer;
                   false            �           0    0    EXTENSION address_standardizer    COMMENT     �   COMMENT ON EXTENSION address_standardizer IS 'Used to parse an address into constituent elements. Generally used to support geocoding address normalization step.';
                        false    8                        3079    18230    fuzzystrmatch 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;
    DROP EXTENSION fuzzystrmatch;
                   false            �           0    0    EXTENSION fuzzystrmatch    COMMENT     ]   COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';
                        false    6                        3079    16390    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false            �           0    0    EXTENSION postgis    COMMENT     ^   COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';
                        false    2            	            3079    18654 	   pgrouting 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS pgrouting WITH SCHEMA public;
    DROP EXTENSION pgrouting;
                   false    2            �           0    0    EXTENSION pgrouting    COMMENT     9   COMMENT ON EXTENSION pgrouting IS 'pgRouting Extension';
                        false    9                        3079    17640    postgis_raster 	   EXTENSION     B   CREATE EXTENSION IF NOT EXISTS postgis_raster WITH SCHEMA public;
    DROP EXTENSION postgis_raster;
                   false    2            �           0    0    EXTENSION postgis_raster    COMMENT     M   COMMENT ON EXTENSION postgis_raster IS 'PostGIS raster types and functions';
                        false    4                        3079    18197    postgis_sfcgal 	   EXTENSION     B   CREATE EXTENSION IF NOT EXISTS postgis_sfcgal WITH SCHEMA public;
    DROP EXTENSION postgis_sfcgal;
                   false    2            �           0    0    EXTENSION postgis_sfcgal    COMMENT     C   COMMENT ON EXTENSION postgis_sfcgal IS 'PostGIS SFCGAL functions';
                        false    5                        3079    18243    postgis_tiger_geocoder 	   EXTENSION     I   CREATE EXTENSION IF NOT EXISTS postgis_tiger_geocoder WITH SCHEMA tiger;
 '   DROP EXTENSION postgis_tiger_geocoder;
                   false    15    6    2            �           0    0     EXTENSION postgis_tiger_geocoder    COMMENT     ^   COMMENT ON EXTENSION postgis_tiger_geocoder IS 'PostGIS tiger geocoder and reverse geocoder';
                        false    7                        3079    17467    postgis_topology 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;
 !   DROP EXTENSION postgis_topology;
                   false    14    2            �           0    0    EXTENSION postgis_topology    COMMENT     Y   COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';
                        false    3            2           1259    19007 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            1           1259    19006    auth_group_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    306            4           1259    19015    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            3           1259    19014    auth_group_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    308            0           1259    19001    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            /           1259    19000    auth_permission_id_seq    SEQUENCE     �   ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    304            6           1259    19021 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            8           1259    19029    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            7           1259    19028    auth_user_groups_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    312            5           1259    19020    auth_user_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    310            :           1259    19035    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            9           1259    19034 !   auth_user_user_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    314            C           1259    19171    backend_area    TABLE     �   CREATE TABLE public.backend_area (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    mpoly public.geometry(MultiPolygon,4326) NOT NULL
);
     DROP TABLE public.backend_area;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            B           1259    19170    backend_area_id_seq    SEQUENCE     �   ALTER TABLE public.backend_area ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.backend_area_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    323            >           1259    19122    backend_category    TABLE     �   CREATE TABLE public.backend_category (
    id bigint NOT NULL,
    category_name character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL
);
 $   DROP TABLE public.backend_category;
       public         heap    postgres    false            =           1259    19121    backend_category_id_seq    SEQUENCE     �   ALTER TABLE public.backend_category ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.backend_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    318            G           1259    19190    backend_location    TABLE     �   CREATE TABLE public.backend_location (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    type character varying NOT NULL,
    point_geom public.geometry(Point,4326) NOT NULL
);
 $   DROP TABLE public.backend_location;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            F           1259    19189    backend_location_id_seq    SEQUENCE     �   ALTER TABLE public.backend_location ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.backend_location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    327            @           1259    19136    backend_place    TABLE     �  CREATE TABLE public.backend_place (
    id bigint NOT NULL,
    place_name character varying(50) NOT NULL,
    description text NOT NULL,
    image character varying(100),
    active boolean NOT NULL,
    point_geom public.geometry(Point,4326) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    categories_id bigint NOT NULL,
    color character varying(50) NOT NULL
);
 !   DROP TABLE public.backend_place;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            ?           1259    19135    backend_place_id_seq    SEQUENCE     �   ALTER TABLE public.backend_place ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.backend_place_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    320            E           1259    19181    backend_worldborder    TABLE     �  CREATE TABLE public.backend_worldborder (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    area integer NOT NULL,
    pop2005 integer NOT NULL,
    fips character varying(2) NOT NULL,
    iso2 character varying(2) NOT NULL,
    iso3 character varying(3) NOT NULL,
    un integer NOT NULL,
    region integer NOT NULL,
    subregion integer NOT NULL,
    lon double precision NOT NULL,
    lat double precision NOT NULL,
    mpoly public.geometry(MultiPolygon,4326) NOT NULL
);
 '   DROP TABLE public.backend_worldborder;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            D           1259    19180    backend_worldborder_id_seq    SEQUENCE     �   ALTER TABLE public.backend_worldborder ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.backend_worldborder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    325            <           1259    19093    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            ;           1259    19092    django_admin_log_id_seq    SEQUENCE     �   ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    316            .           1259    18993    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            -           1259    18992    django_content_type_id_seq    SEQUENCE     �   ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    302            ,           1259    18985    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            +           1259    18984    django_migrations_id_seq    SEQUENCE     �   ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    300            A           1259    19151    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            q          0    19007 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    306   7�       s          0    19015    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    308   T�       o          0    19001    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    304   q�       u          0    19021 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    310   ^�       w          0    19029    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    312   �       y          0    19035    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    314   0�       �          0    19171    backend_area 
   TABLE DATA           7   COPY public.backend_area (id, name, mpoly) FROM stdin;
    public          postgres    false    323   M�       }          0    19122    backend_category 
   TABLE DATA           V   COPY public.backend_category (id, category_name, created_at, modified_at) FROM stdin;
    public          postgres    false    318   j�       �          0    19190    backend_location 
   TABLE DATA           F   COPY public.backend_location (id, name, type, point_geom) FROM stdin;
    public          postgres    false    327    �                 0    19136    backend_place 
   TABLE DATA           �   COPY public.backend_place (id, place_name, description, image, active, point_geom, created_at, modified_at, categories_id, color) FROM stdin;
    public          postgres    false    320   ��       �          0    19181    backend_worldborder 
   TABLE DATA           �   COPY public.backend_worldborder (id, name, area, pop2005, fips, iso2, iso3, un, region, subregion, lon, lat, mpoly) FROM stdin;
    public          postgres    false    325   ��       {          0    19093    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    316   ��       m          0    18993    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    302   k�       k          0    18985    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    300   �       �          0    19151    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    321   Q�       g          0    16708    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          dungngo    false    227   k�       k          0    18249    geocode_settings 
   TABLE DATA           T   COPY tiger.geocode_settings (name, setting, unit, category, short_desc) FROM stdin;
    tiger          postgres    false    248   ��       l          0    18581    pagc_gaz 
   TABLE DATA           K   COPY tiger.pagc_gaz (id, seq, word, stdword, token, is_custom) FROM stdin;
    tiger          postgres    false    293   ��       m          0    18591    pagc_lex 
   TABLE DATA           K   COPY tiger.pagc_lex (id, seq, word, stdword, token, is_custom) FROM stdin;
    tiger          postgres    false    295   ��       n          0    18601 
   pagc_rules 
   TABLE DATA           8   COPY tiger.pagc_rules (id, rule, is_custom) FROM stdin;
    tiger          postgres    false    297   ��       i          0    17469    topology 
   TABLE DATA           G   COPY topology.topology (id, name, srid, "precision", hasz) FROM stdin;
    topology          dungngo    false    232   ��       j          0    17481    layer 
   TABLE DATA           �   COPY topology.layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM stdin;
    topology          dungngo    false    233   �       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    305            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    307            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
          public          postgres    false    303            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    311            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    309            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    313            �           0    0    backend_area_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.backend_area_id_seq', 1, false);
          public          postgres    false    322            �           0    0    backend_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.backend_category_id_seq', 2, true);
          public          postgres    false    317            �           0    0    backend_location_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.backend_location_id_seq', 2, true);
          public          postgres    false    326            �           0    0    backend_place_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.backend_place_id_seq', 4, true);
          public          postgres    false    319            �           0    0    backend_worldborder_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.backend_worldborder_id_seq', 1, false);
          public          postgres    false    324            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 53, true);
          public          postgres    false    315            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
          public          postgres    false    301            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);
          public          postgres    false    299            �           0    0    topology_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('topology.topology_id_seq', 1, false);
          topology          dungngo    false    231            �           2606    19119    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    306            �           2606    19050 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    308    308            �           2606    19019 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    308            �           2606    19011    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    306            �           2606    19041 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    304    304            �           2606    19005 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    304            �           2606    19033 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    312            �           2606    19065 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    312    312            �           2606    19025    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    310            �           2606    19039 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    314            �           2606    19079 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    314    314            �           2606    19114     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    310            �           2606    19177    backend_area backend_area_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.backend_area
    ADD CONSTRAINT backend_area_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.backend_area DROP CONSTRAINT backend_area_pkey;
       public            postgres    false    323            �           2606    19126 &   backend_category backend_category_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.backend_category
    ADD CONSTRAINT backend_category_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.backend_category DROP CONSTRAINT backend_category_pkey;
       public            postgres    false    318            �           2606    19196 &   backend_location backend_location_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.backend_location
    ADD CONSTRAINT backend_location_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.backend_location DROP CONSTRAINT backend_location_pkey;
       public            postgres    false    327            �           2606    19142     backend_place backend_place_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.backend_place
    ADD CONSTRAINT backend_place_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.backend_place DROP CONSTRAINT backend_place_pkey;
       public            postgres    false    320            �           2606    19187 ,   backend_worldborder backend_worldborder_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.backend_worldborder
    ADD CONSTRAINT backend_worldborder_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.backend_worldborder DROP CONSTRAINT backend_worldborder_pkey;
       public            postgres    false    325            �           2606    19100 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    316            �           2606    18999 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    302    302            �           2606    18997 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    302            �           2606    18991 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    300            �           2606    19157 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    321            �           1259    19120    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    306            �           1259    19061 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    308            �           1259    19062 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    308            �           1259    19047 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    304            �           1259    19077 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    312            �           1259    19076 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    312            �           1259    19091 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    314            �           1259    19090 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    314            �           1259    19115     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    310            �           1259    19179    backend_area_mpoly_edc8f6c0_id    INDEX     W   CREATE INDEX backend_area_mpoly_edc8f6c0_id ON public.backend_area USING gist (mpoly);
 2   DROP INDEX public.backend_area_mpoly_edc8f6c0_id;
       public            postgres    false    323    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    19197 '   backend_location_point_geom_2a6298de_id    INDEX     i   CREATE INDEX backend_location_point_geom_2a6298de_id ON public.backend_location USING gist (point_geom);
 ;   DROP INDEX public.backend_location_point_geom_2a6298de_id;
       public            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    327            �           1259    19150 $   backend_place_categories_id_109dbe3c    INDEX     g   CREATE INDEX backend_place_categories_id_109dbe3c ON public.backend_place USING btree (categories_id);
 8   DROP INDEX public.backend_place_categories_id_109dbe3c;
       public            postgres    false    320            �           1259    19149 $   backend_place_point_geom_e21d46ec_id    INDEX     c   CREATE INDEX backend_place_point_geom_e21d46ec_id ON public.backend_place USING gist (point_geom);
 8   DROP INDEX public.backend_place_point_geom_e21d46ec_id;
       public            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    320            �           1259    19188 %   backend_worldborder_mpoly_f6255e51_id    INDEX     e   CREATE INDEX backend_worldborder_mpoly_f6255e51_id ON public.backend_worldborder USING gist (mpoly);
 9   DROP INDEX public.backend_worldborder_mpoly_f6255e51_id;
       public            postgres    false    325    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    19111 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    316            �           1259    19112 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    316            �           1259    19159 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    321            �           1259    19158 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    321            �           2606    19056 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    5782    304    308            �           2606    19051 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    5787    306    308            �           2606    19042 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    304    5777    302            �           2606    19071 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    312    306    5787            �           2606    19066 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    310    5795    312            �           2606    19085 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    314    304    5782            �           2606    19080 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    310    314    5795            �           2606    19144 I   backend_place backend_place_categories_id_109dbe3c_fk_backend_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.backend_place
    ADD CONSTRAINT backend_place_categories_id_109dbe3c_fk_backend_category_id FOREIGN KEY (categories_id) REFERENCES public.backend_category(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.backend_place DROP CONSTRAINT backend_place_categories_id_109dbe3c_fk_backend_category_id;
       public          postgres    false    5816    318    320            �           2606    19101 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    302    316    5777            �           2606    19106 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    316    310    5795            q      x������ � �      s      x������ � �      o   �  x�]�[n�0E��U������mT�(D����f�~�6�}��27��>��h��羈Ӷ�\pi�����% �O3��PX���c�,�%k ���4�^���q��u�'W���Y���{�~�%A�^Eѐਸ[���qw�ڇw-�}�"$h'FH��RT jW����� �/}��|��xNz:4��̦6���%On�iK�Z���ѝ��J{Ň�9�$d���:����]44�6d�5�za����]�̘I�`��1�u��*#����b?��p�3��/M�Ň�A�q�eP\ax\�t���rW�JK_�lS�m 0�&�- P��6N����>6mt7����W&������I6#|�Q�f o7�%���.�n��}e��m@�$�	�D�2�}�]I�s^Ʈ���.ݿ���PÒ�M^�4I�Lr����@e�����%�㜒�>������&��O
�&Ϛ�o
�*К�G���7��?s�R�      u   �   x�m�A�0@�ۯ��M����R�V=$R�)���"��'t�]���(������� ��2�'c�<�X�fSMm�w�v�'���4���ǩ�+ȅ����.U1��}��.�1_# �<
��!��I��e��K$PQ����ϛ������e��8|^�����1�      w      x������ � �      y      x������ � �      �      x������ � �      }   �   x�M̽1@�:��=Jd;ΟK��4) �p�_�$�	w���#sh�õ��ޗ�5.p^�it���;�@��T�#���O30*��TC���es|?���?��R�MMX2}7����F�I���[k?�T%�      �   �   x�3�>�(O�=?'M!�
>�0O�/�ᮥ%��%�%��y��@F�f`�����������������������������������\�Û��<�/ S�
!��r���$%��`1����������b������������3��=... �L4�           x��U]k�V���c�RǕ�$[v��vc�W��M��K�-��QX�Vzы2X(�e̎	%���5c`]��d��/�s��8Β2���y����k�OgI��G�dq2�N�S'�	�A�)t�ay�6��u����G�O��m��)�į�mH�!y�����) O���kq�OO���Þ��1�k�³�C�+%V���1�'���c�I����c@��0�K���I�䟿%?Y��1��$>B�����U$��|7���R���U��#�[�C<��/N}�f�}y��]��h�|���Ԯ�ʎ
hI�C���N-w(�]�����P��8��5�3_�p����C��y17�^��`������^�j����Ӛ%����j�M�R1��嘸j�Ǳ��`���ƌ�m�2�fU���]��,[w���[�Wa��b���-/��GQ�y3��!�0��|h��Bj�#�����)Fq�aH@��ⲻ^����_z�/N���W����G����+�|(�=���8Uj?h�@LI��K��x6����@��?߼�.J���J����=�UN$a�Qާ�e�ǒ9i���k!�c�Ŷo+��u����"H���`�k�j�8�����z��H�g4L���-��r��D�5�4��ҭ4����r(���۪fI?��Z-.:����n&O#1�-��r�S�l�~f�X�����*�P[�6TbDה�IWr�2��$#����*W3��L�en��A�-�-�B@ᦈ��e�X��V�k���p��M<@�wP+e�w#)��pmQȌ���'I����z$̦~6�1�\���^�BA��I�Ӛ������d�pa��˗��JL�o�,)VCJ4�����*�B/�?�Rqf��e��P�+4��*��H�R���}�P�Y�D����� ƪ���r��a�V��
��@Ϟ#!c���Է���`���K��*�7j{�1��Y����#��j�1��}�aW��iU͐�]aZ��3m774}C3H�TM�
�K:35#��n��(���K�j!      �      x������ � �      {   q  x��W=kcG��_�P�x��1_��.d!֤ٸxHZI�c+�Y�J�MR��B��"�]z���?�}3O�4z��V�%�sϽw�=wNP#���) J�%��`��ϴ;��ռ?�]� _޼�T�^��)�w��_��?�b��d���H.���{-� Xʱ\*�=��Xc��j:H���Qܻ��o:��F�y1��&��eT^E��%r	�;F�5���n28K^AL�p�+!�6°�6h[�	�;�
�
�l����r"�W�~1�&�D��_M�A�	�EfWrP�j�L'rT�E���r��h+��\jm��FN1�v� ǚ�x�Ŭ�;���EѬ��z�8)�n>P (�dǽpp��
�:�^y����R:LZy�5�M��ǟ��t������#�x��ϋ�[�ݽ]�G�i�c˔���0u��C���<֙W\.�&;�7��pe:��wB�y��^K��2��Z���\�3.�%9����I��-�?۫��m��l:�T�d�E�3�ڢȆ�>�$)Tu�w��������G��c�vqs�ş|���E=�~�E��A�^��{��$|��D<o�Y�E�qo�w�M�7Z\Nym|��#�1�9 #�㈣i�0�]�'ђ�`��9�6F�ydS�U@΁;\ m����T�>�C?��yd[�a���q�|�lwt�6�DfTˏ\������������8����po���5���r�n���F.
ج�x���������@�}���02�ɰ�{��s-gJ��P}�	N�4��v�{2y ��'��&���-
�E��({Z\��?X�M�G��&��ɗl�&�(����6F��P�H}�vM-1Ϯֲ-,������M�Q�Ψ �=m��cSAN��e��G�c�µ�-z��{X��$����"sE�nn�}���\�W�f�b�$�d����|FL��4\��$MN:^��@��3M��d�:����ߦ���!�.��g�E���e�������i�x�����>O,�#�T�*�y�q���(�!��vA������vi�>"�&y��<���І4<�I���"�BN+�Wj1��t�5"\'S3N�R{�G%����'=�t8KU?�#+�������*·��]��:==�Є�h      m   �   x�M�K�0D��a)���q�D�q䤪r{��ߓf���>B��cъ�R�Xg������L*K��Kf�X���JM��ϐ����/0�}rt`��$m��S�T�uL�,��wAʄ�t^E�E]{�]i���_j�I�      k   <  x���ђ� E��W�}+݀�߲U�L�Zuv��$c����_��n�����4�� ������v���=@u�Pr� �_D�����XQ<+h���OH8e��]%��?F�ᤂ���Q��W���0��ʠWF�)������j߼mc7Y̬�G\���r�҉ton�2�	%��Pi7��Fz;M�Rҫ^*g�c��6�KR%T����L�czm�c�D&E����O����N<5V4w���[��Ӝ���f����ZP�!�B���bÚn�]���0j�y�\�S\�|hg;=�0��|P��&}��w	�U@WX}3����$�*���)��rA�_��0��DC�b@-cȨ1���fo�#@����:ˀ�[�����#ˬ�x��3t��DM�U�����cY��QC�-��C�[�:3���iC\)bU�!�L�8[F�R�E�z��V���PVRVQ&��J�Z;�����=���@�4?U��u:}[o�P(�$��������>��Ň΄��L6��QF!���{Y�[�7hg��s�$;8��3� )AVL�Q�]�v��B�$      �   
  x���n�@  г|E�fd�:T�F���41SF����LJ/Zu�
�?��몼�(p���lt���ܙ�ڲ���<��C���ϯ�b��M��A,����=dW�o��4��Q����5���*v��'k�j�&���6�K�i�%�/�	'�V�вҫm�D�����tvl�C�ɭ%�����bgy�.w:Q�	��yH��3�e(1��]}���o���*��Ͼv������X!�@h���
0D��H?kI��s+]�      g      x������ � �      k      x������ � �      l      x������ � �      m      x������ � �      n      x������ � �      i      x������ � �      j      x������ � �     