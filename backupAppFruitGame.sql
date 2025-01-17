PGDMP     1    8    	            w            appfruitgame    11.5    11.5 8    H           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            I           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            J           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            K           1262    16814    appfruitgame    DATABASE     �   CREATE DATABASE appfruitgame WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Latin_World.1252' LC_CTYPE = 'Latin_World.1252';
    DROP DATABASE appfruitgame;
             postgres    false            �            1259    16865 	   Categoria    TABLE     �   CREATE TABLE public."Categoria" (
    id integer NOT NULL,
    nombre character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Categoria";
       public         postgres    false            �            1259    16863    Categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Categoria_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Categoria_id_seq";
       public       postgres    false    208            L           0    0    Categoria_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Categoria_id_seq" OWNED BY public."Categoria".id;
            public       postgres    false    207            �            1259    16873    Fruta    TABLE       CREATE TABLE public."Fruta" (
    id integer NOT NULL,
    nombre character varying(255),
    url character varying(255),
    categoriaid integer,
    preguntaid integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Fruta";
       public         postgres    false            �            1259    16871    Fruta_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Fruta_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Fruta_id_seq";
       public       postgres    false    210            M           0    0    Fruta_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Fruta_id_seq" OWNED BY public."Fruta".id;
            public       postgres    false    209            �            1259    16849    Nivel    TABLE     �   CREATE TABLE public."Nivel" (
    id integer NOT NULL,
    descripcion character varying(255),
    valor integer,
    categoriaid integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Nivel";
       public         postgres    false            �            1259    16847    Nivel_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Nivel_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Nivel_id_seq";
       public       postgres    false    204            N           0    0    Nivel_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Nivel_id_seq" OWNED BY public."Nivel".id;
            public       postgres    false    203            �            1259    16857    OpcionRespuesta    TABLE     
  CREATE TABLE public."OpcionRespuesta" (
    id integer NOT NULL,
    descripcion character varying(255),
    "idPregunta" integer,
    "respuestaValida" boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 %   DROP TABLE public."OpcionRespuesta";
       public         postgres    false            �            1259    16855    OpcionRespuesta_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OpcionRespuesta_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."OpcionRespuesta_id_seq";
       public       postgres    false    206            O           0    0    OpcionRespuesta_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."OpcionRespuesta_id_seq" OWNED BY public."OpcionRespuesta".id;
            public       postgres    false    205            �            1259    16833    Pregunta    TABLE     �   CREATE TABLE public."Pregunta" (
    id integer NOT NULL,
    idnivel integer,
    descripcion character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Pregunta";
       public         postgres    false            �            1259    16831    Pregunta_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Pregunta_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Pregunta_id_seq";
       public       postgres    false    200            P           0    0    Pregunta_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Pregunta_id_seq" OWNED BY public."Pregunta".id;
            public       postgres    false    199            �            1259    16841    Puntaje    TABLE     �   CREATE TABLE public."Puntaje" (
    id integer NOT NULL,
    "idFruta" integer,
    "idPregunta" integer,
    "valorPuntaje" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Puntaje";
       public         postgres    false            �            1259    16839    Puntaje_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Puntaje_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Puntaje_id_seq";
       public       postgres    false    202            Q           0    0    Puntaje_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Puntaje_id_seq" OWNED BY public."Puntaje".id;
            public       postgres    false    201            �            1259    16815    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         postgres    false            �            1259    16822    User    TABLE     ;  CREATE TABLE public."User" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    puntaje integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."User";
       public         postgres    false            �            1259    16820    User_id_seq    SEQUENCE     �   CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."User_id_seq";
       public       postgres    false    198            R           0    0    User_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;
            public       postgres    false    197            �
           2604    16868    Categoria id    DEFAULT     p   ALTER TABLE ONLY public."Categoria" ALTER COLUMN id SET DEFAULT nextval('public."Categoria_id_seq"'::regclass);
 =   ALTER TABLE public."Categoria" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    207    208            �
           2604    16876    Fruta id    DEFAULT     h   ALTER TABLE ONLY public."Fruta" ALTER COLUMN id SET DEFAULT nextval('public."Fruta_id_seq"'::regclass);
 9   ALTER TABLE public."Fruta" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    210    210            �
           2604    16852    Nivel id    DEFAULT     h   ALTER TABLE ONLY public."Nivel" ALTER COLUMN id SET DEFAULT nextval('public."Nivel_id_seq"'::regclass);
 9   ALTER TABLE public."Nivel" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203    204            �
           2604    16860    OpcionRespuesta id    DEFAULT     |   ALTER TABLE ONLY public."OpcionRespuesta" ALTER COLUMN id SET DEFAULT nextval('public."OpcionRespuesta_id_seq"'::regclass);
 C   ALTER TABLE public."OpcionRespuesta" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    206    206            �
           2604    16836    Pregunta id    DEFAULT     n   ALTER TABLE ONLY public."Pregunta" ALTER COLUMN id SET DEFAULT nextval('public."Pregunta_id_seq"'::regclass);
 <   ALTER TABLE public."Pregunta" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    199    200            �
           2604    16844 
   Puntaje id    DEFAULT     l   ALTER TABLE ONLY public."Puntaje" ALTER COLUMN id SET DEFAULT nextval('public."Puntaje_id_seq"'::regclass);
 ;   ALTER TABLE public."Puntaje" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201    202            �
           2604    16825    User id    DEFAULT     f   ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);
 8   ALTER TABLE public."User" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    198    198            C          0    16865 	   Categoria 
   TABLE DATA               K   COPY public."Categoria" (id, nombre, "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    208   =       E          0    16873    Fruta 
   TABLE DATA               e   COPY public."Fruta" (id, nombre, url, categoriaid, preguntaid, "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    210   Z=       ?          0    16849    Nivel 
   TABLE DATA               `   COPY public."Nivel" (id, descripcion, valor, categoriaid, "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    204   �>       A          0    16857    OpcionRespuesta 
   TABLE DATA               w   COPY public."OpcionRespuesta" (id, descripcion, "idPregunta", "respuestaValida", "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    206   ?       ;          0    16833    Pregunta 
   TABLE DATA               X   COPY public."Pregunta" (id, idnivel, descripcion, "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    200   ?@       =          0    16841    Puntaje 
   TABLE DATA               j   COPY public."Puntaje" (id, "idFruta", "idPregunta", "valorPuntaje", "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    202   A       7          0    16815    SequelizeMeta 
   TABLE DATA               /   COPY public."SequelizeMeta" (name) FROM stdin;
    public       postgres    false    196   �A       9          0    16822    User 
   TABLE DATA               c   COPY public."User" (id, nombre, username, password, puntaje, "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    198   #B       S           0    0    Categoria_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Categoria_id_seq"', 3, true);
            public       postgres    false    207            T           0    0    Fruta_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Fruta_id_seq"', 20, true);
            public       postgres    false    209            U           0    0    Nivel_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Nivel_id_seq"', 2, true);
            public       postgres    false    203            V           0    0    OpcionRespuesta_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."OpcionRespuesta_id_seq"', 15, true);
            public       postgres    false    205            W           0    0    Pregunta_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Pregunta_id_seq"', 6, true);
            public       postgres    false    199            X           0    0    Puntaje_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Puntaje_id_seq"', 6, true);
            public       postgres    false    201            Y           0    0    User_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."User_id_seq"', 2, true);
            public       postgres    false    197            �
           2606    16870    Categoria Categoria_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Categoria"
    ADD CONSTRAINT "Categoria_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Categoria" DROP CONSTRAINT "Categoria_pkey";
       public         postgres    false    208            �
           2606    16881    Fruta Fruta_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Fruta"
    ADD CONSTRAINT "Fruta_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Fruta" DROP CONSTRAINT "Fruta_pkey";
       public         postgres    false    210            �
           2606    16854    Nivel Nivel_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Nivel"
    ADD CONSTRAINT "Nivel_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Nivel" DROP CONSTRAINT "Nivel_pkey";
       public         postgres    false    204            �
           2606    16862 $   OpcionRespuesta OpcionRespuesta_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."OpcionRespuesta"
    ADD CONSTRAINT "OpcionRespuesta_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."OpcionRespuesta" DROP CONSTRAINT "OpcionRespuesta_pkey";
       public         postgres    false    206            �
           2606    16838    Pregunta Pregunta_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Pregunta"
    ADD CONSTRAINT "Pregunta_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Pregunta" DROP CONSTRAINT "Pregunta_pkey";
       public         postgres    false    200            �
           2606    16846    Puntaje Puntaje_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Puntaje"
    ADD CONSTRAINT "Puntaje_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Puntaje" DROP CONSTRAINT "Puntaje_pkey";
       public         postgres    false    202            �
           2606    16819     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public         postgres    false    196            �
           2606    16830    User User_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public         postgres    false    198            C   H   x�3�t�/.I�420��5��54P04�22�2��3�0�50�#�e���ZT������T����v$)�=... ��      E   ;  x��ӽn�0��<E_ ����ڮ��n]�)��@���k;T�HF��G:�t��&���5q�,�g,�3mOa��]��6��õo�0�q��~���g�t
M�.��#���WXh:��D�������_�y	�*]s��CщU`�k��8�(8kK[��"�D�_�W�kG�;Z���	��yt���!�B��庌��h(��#����Y�y9��������_N�2��SJT�br�m��m��P��^�mn�3�(��r�Oq)B�'�G��ሿ ��l.m�&7�����Jg�4���ڢ�VU���      ?   L   x�3�t;�093�Ӏӈ����R��R��@��������X,d�G�ˈ�%3��Z�!Ƙ*M�L��������� |$      A   .  x�u��N�0���S����i��&΀�'.��!��J��dl)1Ro_���o3��q�c�X�Cg��͝���d-پ3���Ӹ���"��<u�p�L�%�v�����,���|��4Q���u����>c��V5\�z��d,�M�����<_MI���a*�v�y}���J|rBFǍ`��C�_b���B8�~9�4M�e��6E��Mݨ�<ed1Q�\2_+��4}G�iۭ��ݻj))Q+�B���5C�*BbG>hA*��{���
�������L�GSjH�'��T_���1      ;   �   x�}�A�0��5=E/@ә��x�n�		�I��S���`d�v����@��q_w~��w����y���BӺc��\V9H�"X��K�'1��:v1q?,h?�.��rY(�]S�^��fLn
q�)
���ΐ\���Z�
,']3�����#ހV�
M�kb�v��Ee%���Dm%c>�Y0��|-�r      =   s   x�}���0��gi@W�T-鿎�$0���a�PL���P��o����!�'�A���%Y��D�����Q��(���P^�-?����dm�I4��ǖ`k�#ї��}�D�      7   }   x�]�A
� ��w18�&z�n�L������oB1�nf��A^.
�3V�� �*�W�Wu��Yߵ0m-� ���+���t��^C^��s.!�$�jiT�O��wγe��`�'���cB| �uF      9   �   x�m�M��@���+Z�M���i��q�(�Jn�6Sc�	����__A��p8�,΃V�gF_�4���vH:�;�2�Y����^#��{if��0s�k�z�$����?Q��8
�Eڕ�zj�h�+-d��"���+��{"�,�����&���^h�ۉ蜣r1�!FQ2R�A�*���ޟ��L��$�t@h��H�~ӡ����ڵm��>K     