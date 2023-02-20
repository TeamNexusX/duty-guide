PGDMP     0                    {         
   duty-guide    15.2    15.1 N    ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            `           1262    18796 
   duty-guide    DATABASE     �   CREATE DATABASE "duty-guide" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "duty-guide";
                postgres    false            �            1259    20786 
   categories    TABLE     g   CREATE TABLE public.categories (
    id integer NOT NULL,
    title character varying(255) NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    20785    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    225            a           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    224            �            1259    20814    category-task    TABLE     q   CREATE TABLE public."category-task" (
    id integer NOT NULL,
    "categoryId" integer,
    "taskId" integer
);
 #   DROP TABLE public."category-task";
       public         heap    postgres    false            �            1259    20813    category-task_id_seq    SEQUENCE     �   CREATE SEQUENCE public."category-task_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."category-task_id_seq";
       public          postgres    false    229            b           0    0    category-task_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."category-task_id_seq" OWNED BY public."category-task".id;
          public          postgres    false    228            �            1259    20795    category-theory    TABLE     u   CREATE TABLE public."category-theory" (
    id integer NOT NULL,
    "categoryId" integer,
    "theoryId" integer
);
 %   DROP TABLE public."category-theory";
       public         heap    postgres    false            �            1259    20794    category-theory_id_seq    SEQUENCE     �   CREATE SEQUENCE public."category-theory_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."category-theory_id_seq";
       public          postgres    false    227            c           0    0    category-theory_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."category-theory_id_seq" OWNED BY public."category-theory".id;
          public          postgres    false    226            �            1259    20774 	   filenames    TABLE     }   CREATE TABLE public.filenames (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "theoryId" integer
);
    DROP TABLE public.filenames;
       public         heap    postgres    false            �            1259    20773    filenames_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filenames_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.filenames_id_seq;
       public          postgres    false    223            d           0    0    filenames_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.filenames_id_seq OWNED BY public.filenames.id;
          public          postgres    false    222            �            1259    20226    solves    TABLE     y   CREATE TABLE public.solves (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    "taskId" integer
);
    DROP TABLE public.solves;
       public         heap    postgres    false            �            1259    20225    solves_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solves_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.solves_id_seq;
       public          postgres    false    215            e           0    0    solves_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.solves_id_seq OWNED BY public.solves.id;
          public          postgres    false    214            �            1259    20276 
   task-solve    TABLE     j   CREATE TABLE public."task-solve" (
    id integer NOT NULL,
    "taskId" integer,
    "solfId" integer
);
     DROP TABLE public."task-solve";
       public         heap    postgres    false            �            1259    20275    task-solve_id_seq    SEQUENCE     �   CREATE SEQUENCE public."task-solve_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."task-solve_id_seq";
       public          postgres    false    217            f           0    0    task-solve_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."task-solve_id_seq" OWNED BY public."task-solve".id;
          public          postgres    false    216            �            1259    20754    tasks    TABLE       CREATE TABLE public.tasks (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    "rightAnswer" text NOT NULL,
    question1 text NOT NULL,
    question2 text NOT NULL,
    question3 text NOT NULL,
    question4 text NOT NULL
);
    DROP TABLE public.tasks;
       public         heap    postgres    false            �            1259    20753    tasks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tasks_id_seq;
       public          postgres    false    219            g           0    0    tasks_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;
          public          postgres    false    218            �            1259    20763    theory    TABLE     ~   CREATE TABLE public.theory (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL
);
    DROP TABLE public.theory;
       public         heap    postgres    false            �            1259    20762    theory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.theory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.theory_id_seq;
       public          postgres    false    221            h           0    0    theory_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.theory_id_seq OWNED BY public.theory.id;
          public          postgres    false    220            �            1259    20835    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    firstname character varying(255) NOT NULL,
    middlename character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    password character varying(255),
    role character varying(255) DEFAULT 'user'::character varying NOT NULL,
    "solvedTasksAmount" integer DEFAULT 0 NOT NULL,
    "correctlySolved" integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    20834    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    231            i           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    230            �           2604    20789    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    20817    category-task id    DEFAULT     x   ALTER TABLE ONLY public."category-task" ALTER COLUMN id SET DEFAULT nextval('public."category-task_id_seq"'::regclass);
 A   ALTER TABLE public."category-task" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    20798    category-theory id    DEFAULT     |   ALTER TABLE ONLY public."category-theory" ALTER COLUMN id SET DEFAULT nextval('public."category-theory_id_seq"'::regclass);
 C   ALTER TABLE public."category-theory" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    20777    filenames id    DEFAULT     l   ALTER TABLE ONLY public.filenames ALTER COLUMN id SET DEFAULT nextval('public.filenames_id_seq'::regclass);
 ;   ALTER TABLE public.filenames ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    20229 	   solves id    DEFAULT     f   ALTER TABLE ONLY public.solves ALTER COLUMN id SET DEFAULT nextval('public.solves_id_seq'::regclass);
 8   ALTER TABLE public.solves ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    20279    task-solve id    DEFAULT     r   ALTER TABLE ONLY public."task-solve" ALTER COLUMN id SET DEFAULT nextval('public."task-solve_id_seq"'::regclass);
 >   ALTER TABLE public."task-solve" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    20757    tasks id    DEFAULT     d   ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);
 7   ALTER TABLE public.tasks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    20766 	   theory id    DEFAULT     f   ALTER TABLE ONLY public.theory ALTER COLUMN id SET DEFAULT nextval('public.theory_id_seq'::regclass);
 8   ALTER TABLE public.theory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    20838    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            T          0    20786 
   categories 
   TABLE DATA           /   COPY public.categories (id, title) FROM stdin;
    public          postgres    false    225   �Y       X          0    20814    category-task 
   TABLE DATA           E   COPY public."category-task" (id, "categoryId", "taskId") FROM stdin;
    public          postgres    false    229   Z       V          0    20795    category-theory 
   TABLE DATA           I   COPY public."category-theory" (id, "categoryId", "theoryId") FROM stdin;
    public          postgres    false    227   [       R          0    20774 	   filenames 
   TABLE DATA           9   COPY public.filenames (id, name, "theoryId") FROM stdin;
    public          postgres    false    223   @[       J          0    20226    solves 
   TABLE DATA           5   COPY public.solves (id, value, "taskId") FROM stdin;
    public          postgres    false    215   ~[       L          0    20276 
   task-solve 
   TABLE DATA           >   COPY public."task-solve" (id, "taskId", "solfId") FROM stdin;
    public          postgres    false    217   �[       N          0    20754    tasks 
   TABLE DATA           r   COPY public.tasks (id, title, description, "rightAnswer", question1, question2, question3, question4) FROM stdin;
    public          postgres    false    219   �[       P          0    20763    theory 
   TABLE DATA           4   COPY public.theory (id, title, content) FROM stdin;
    public          postgres    false    221   �j       Z          0    20835    users 
   TABLE DATA           |   COPY public.users (id, firstname, middlename, lastname, password, role, "solvedTasksAmount", "correctlySolved") FROM stdin;
    public          postgres    false    231   �o       j           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 8, true);
          public          postgres    false    224            k           0    0    category-task_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."category-task_id_seq"', 90, true);
          public          postgres    false    228            l           0    0    category-theory_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."category-theory_id_seq"', 4, true);
          public          postgres    false    226            m           0    0    filenames_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.filenames_id_seq', 2, true);
          public          postgres    false    222            n           0    0    solves_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.solves_id_seq', 1, true);
          public          postgres    false    214            o           0    0    task-solve_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."task-solve_id_seq"', 1, false);
          public          postgres    false    216            p           0    0    tasks_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tasks_id_seq', 35, true);
          public          postgres    false    218            q           0    0    theory_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.theory_id_seq', 2, true);
          public          postgres    false    220            r           0    0    users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.users_id_seq', 122, true);
          public          postgres    false    230            �           2606    20791    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    225            �           2606    20793    categories categories_title_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_title_key UNIQUE (title);
 I   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_title_key;
       public            postgres    false    225            �           2606    20821 1   category-task category-task_categoryId_taskId_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."category-task"
    ADD CONSTRAINT "category-task_categoryId_taskId_key" UNIQUE ("categoryId", "taskId");
 _   ALTER TABLE ONLY public."category-task" DROP CONSTRAINT "category-task_categoryId_taskId_key";
       public            postgres    false    229    229            �           2606    20819     category-task category-task_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."category-task"
    ADD CONSTRAINT "category-task_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."category-task" DROP CONSTRAINT "category-task_pkey";
       public            postgres    false    229            �           2606    20802 7   category-theory category-theory_categoryId_theoryId_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."category-theory"
    ADD CONSTRAINT "category-theory_categoryId_theoryId_key" UNIQUE ("categoryId", "theoryId");
 e   ALTER TABLE ONLY public."category-theory" DROP CONSTRAINT "category-theory_categoryId_theoryId_key";
       public            postgres    false    227    227            �           2606    20800 $   category-theory category-theory_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."category-theory"
    ADD CONSTRAINT "category-theory_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."category-theory" DROP CONSTRAINT "category-theory_pkey";
       public            postgres    false    227            �           2606    20779    filenames filenames_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.filenames
    ADD CONSTRAINT filenames_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.filenames DROP CONSTRAINT filenames_pkey;
       public            postgres    false    223            �           2606    20231    solves solves_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.solves
    ADD CONSTRAINT solves_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.solves DROP CONSTRAINT solves_pkey;
       public            postgres    false    215            �           2606    20281    task-solve task-solve_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."task-solve"
    ADD CONSTRAINT "task-solve_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."task-solve" DROP CONSTRAINT "task-solve_pkey";
       public            postgres    false    217            �           2606    20283 '   task-solve task-solve_taskId_solfId_key 
   CONSTRAINT     t   ALTER TABLE ONLY public."task-solve"
    ADD CONSTRAINT "task-solve_taskId_solfId_key" UNIQUE ("taskId", "solfId");
 U   ALTER TABLE ONLY public."task-solve" DROP CONSTRAINT "task-solve_taskId_solfId_key";
       public            postgres    false    217    217            �           2606    20761    tasks tasks_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tasks DROP CONSTRAINT tasks_pkey;
       public            postgres    false    219            �           2606    20770    theory theory_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.theory
    ADD CONSTRAINT theory_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.theory DROP CONSTRAINT theory_pkey;
       public            postgres    false    221            �           2606    20772    theory theory_title_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.theory
    ADD CONSTRAINT theory_title_key UNIQUE (title);
 A   ALTER TABLE ONLY public.theory DROP CONSTRAINT theory_title_key;
       public            postgres    false    221            �           2606    20845    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    231            �           2606    20822 +   category-task category-task_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."category-task"
    ADD CONSTRAINT "category-task_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public."category-task" DROP CONSTRAINT "category-task_categoryId_fkey";
       public          postgres    false    225    3240    229            �           2606    20827 '   category-task category-task_taskId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."category-task"
    ADD CONSTRAINT "category-task_taskId_fkey" FOREIGN KEY ("taskId") REFERENCES public.tasks(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."category-task" DROP CONSTRAINT "category-task_taskId_fkey";
       public          postgres    false    3232    219    229            �           2606    20803 /   category-theory category-theory_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."category-theory"
    ADD CONSTRAINT "category-theory_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public."category-theory" DROP CONSTRAINT "category-theory_categoryId_fkey";
       public          postgres    false    225    3240    227            �           2606    20808 -   category-theory category-theory_theoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."category-theory"
    ADD CONSTRAINT "category-theory_theoryId_fkey" FOREIGN KEY ("theoryId") REFERENCES public.theory(id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public."category-theory" DROP CONSTRAINT "category-theory_theoryId_fkey";
       public          postgres    false    3234    221    227            �           2606    20780 !   filenames filenames_theoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.filenames
    ADD CONSTRAINT "filenames_theoryId_fkey" FOREIGN KEY ("theoryId") REFERENCES public.theory(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.filenames DROP CONSTRAINT "filenames_theoryId_fkey";
       public          postgres    false    221    3234    223            �           2606    20289 !   task-solve task-solve_solfId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."task-solve"
    ADD CONSTRAINT "task-solve_solfId_fkey" FOREIGN KEY ("solfId") REFERENCES public.solves(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public."task-solve" DROP CONSTRAINT "task-solve_solfId_fkey";
       public          postgres    false    217    3226    215            T      x�U��	�PD��V�
�c1р���p�!$	Q�5���?7s83C#gO}���GƁ��F�&ƑV+�+��O�aKŕ���AI������_47N<�A��oHM����v����� g�      X   �   x��ۍE!�q1���g/��:֓�h�!���ky��ާ|���t����^�����U\��������s!5�cx�S�4dܜA~5���\#�&��9s��ē�&��\yh���f��Q3��M^Zԃ�T̩MG�f��v��M�<������w�f��N����ɜY̙�{:�3�g��l���>]|�����!}+u��+�� �WS�?�l���8/��$�2IJ      V   !   x�3�4�4�2�4�Ɯf@�(b����� 4�u      R   .   x�3�HNN332�03�+�K�4�2�406KK3�LJJ�
��qqq �-
'      J      x�3��ta��}��\1z\\\ :��      L      x������ � �      N     x��]�n�H�->'�@1ƒs��}�}�N�x���l�����Y��Z��M��A�B��ꃇN۱���%�ݬ������n��j��\����ا�Ylr�02i�_哙��9���Ob&��9ݙI��Ib3)�A1����n���e�)���i��̋c�H}э�_E��ˌ���yq����1�St�i��1��]�z��̉��Y�̘/o��G�u��/u�J�����|�1?ɽ��W�����$�X`A$��S?�X8B�7U��ޭ	�X"'b�ɚ'w����P�dY�7��M��:�Ob��TXiq$¢R�q/9��n)�O�?5(��+��!n����|M��j��bB
��PVJ�gL@�)��T���ߤ鯐Ԑ:��)���XHn���W� 0#=EGs�(=��qZP;��KB&F(��=�2U��w�xb����Y��받Q��@�?GOG"��ڍ�%Q�U�Fl�Eԟ��q�2g��GD��d��Ա�.�!��;��3��1g��^GM`�F�x�~ObQ��\�2j?c*�c�Pl�1ˇ���&����4���K�a�dj?d��q�/�Șn�A�4������abr� 5�r8q��IISָ|�m��QGv�8�V��T�t�����X�F�%�n��o%z���������X��tǖ�c���	�^�����A���Ǣ��b'V�����
xN���r��6H`T�0ъ���WO1��Lr�7gL=����b#2	�v"=^����-�*�8�����T��jy���v	�n���c���>�����g�Tg\1SY,O	k1�+yP��Ror�b�B�����9�N��Y�Pp���4�UyD��������`�߳u�W U ��cq������*�*F`�Nh�������x�V�	Zf��c�B�i��q��XP���Y�3�<��''�,�*,S���fl/��낪:c����ΈK�����ׂ#����F�X�{P�ݗ!�#�B����Е臇Z�0���-�҇��(��:�N�=�v�_� M�3ہ/]��T蘟1'�5���D�Su�ip��.!��/rk�75�lU�lD�J*�]rk�����L3[&}3�,�Tc�w�6&ӱG���	1�� C���u C��/�9�w^X��]AmF��r����v�ۖ�;�9h%����� S@מ�7�]�8�^,�z�O4ڀ�l<����؅u��ϡ6d���t�2}���5]~uc�^O��,���5�O���}�q�� �f��df2<���X(�{�˶����C����)��.�|���M�j�pW�>]F�oe�ΓʋWV�+Z������D�U�#�$���������P.�$_�=h�8�#��3ܽ�m�F�4c�~�k��&-���3 �@� �6���Sr�����SB�Kb�p�t��|p��UaJ��y̾��i2�^�,�`á�n�+��ʬ�%����mV�������=���㧷܂na�=�*���E�����*��M$8 z�xU�)2�A�1�t�v4ĐMp	W˽�u��25�!ok�9�̓S����k�*�T1��k��0�������g��@��/:����=ȁ�"`���@P:_#���Ρ�3Й:}��{�/ƨk7刚_�yr|��l[�	T�i֮�^�2n�O����
��9Ȍ=���6C���ة�1u�Q�s
g�,c���1�K���`z��Ԯ��8��I���R�2xT���p� ���T���ΰ>g�Oe���q,ʷ���߰��Cľ�6�y�����crE�[��s֟�}�PL�g5S�����o"�Xr���?ڜ�Vg�Z(�Pl��B�	�-j�� ��(P�����b���⚄F������D���(h�d�Ah�?�>�q�-YV�X�R��h��:�А����4�$;��trp"k���:B2��D@~�#�JE�U??Q^tI��Au�~Ѕ�x��]��5�..���n�/�W���H��W���/IU�B���t�/T���*2���K-��7���Gk:�F��K���d��^��*ՠ�ps܊�^jnP��&���T�h�V�z3�\���� !�a�-^W�k��5d���G��q�r7����So���Dq�de�2�V&�m��z{(�r�+��x�puR1�e���t�I�b)�G�Iݦ{]5�az���M��A��g5��`�״�r��eq�>�;c�F*/�_C[��%���!�,����F[4霝Jٹ�����/�PHޖB����7�V�)Hl%��BE+'�S�;�Oe�x�BG���-��<Fd6[l������ ��/��I�;�M���1��^��9k����=����{������?{��/&�\�����*�-�x���z/��n����{�^�	��:I�%w�9�;2U��S�ީ���{'ͪ��.���+v7��:��]#�r�l��>��
!��jYSV���'b_F,S�8��2�R���3�v�͖k��Z�,,]��k�+h�K�{6�q����n�6�1{�o���,"R݁��GI�C%Z3Ce�HA��@�79p���V��չB�o`��y��)�Z�< Դ���D;��)�g�^Ӱ����W�����.|�r��KqkN���]C�ݙ<,�p��tiH2�A�*���W>����ݘ_�JF�QT.�I��!�Z_��v�0�7��G�R�u���u� ��3�e-!'��[A�dO��L�nx�ն��Nlc��9Օ�� TUW&���;2�ƞ��=	vq���y8�i1r?0��g˪Q�\n�քs��!ING��I�5r�n��f�~�'@�&�W-��cE�ﮟ	o}�������i����
���h^.lj�̸�	O:,���+rtʾ���)Lr[�J%��0�'˸��=��)%%�|WgM'�%���m!p�h����`��4�v*���Xw�db#L�UP�"螺b�M�@���-s���?�
;{x�	���i�5`)�n*�k�YtS9����J�-�F�Z'G4��@�9��uEI,J��\k�ܗ��\�(�&�Pf�_�Vh�nO	��Q��wi�9t��[��������u'�H�'��f�Y��ح�
[�H���E�z�E�G �A-�i����*�Q!�f���=Ξ�;��y2�����.y�[�-���Ry|8��: �������"��ѕ�F}ꎰ&��	O�~d��E'8��R��,X)��=Ry]��+�>�²z���r:7XJ�ˏ���+1�+��&\su'��V↜�e����sT�Y�������޼#�K��K����:�*��Q���`g�/��ۊ��q��b����ꮮ����Ɓ��ԯ�^�H��H�nC���R�0y�V����v��w(4�@���D��2ҍ�.@�I���-G������1���Nl�y���3�eA,���K�p�	��0�.��-.�[<�?���HF9.=�$���`l�b�N���,�S�$�����'�F�?�lb��K�f��%r�Q~����Q����o��U͝��mpS�㭓��Ʀi�Og|#ykaE��ҏ� ���i���`�t�:�/�:-�Q��*̈H����F0���)�aI�«l��C��3��T��t%O73�[�YAC�i
������J"Ws���R�����+0U݆��Z�����>�-B>x����}�9h�_g�:nL�6�m�Jb ��'&�ǲx ���~44l��	�:2qQE�tu�����^ωN���/�J��JJ�����*2�̆z}��D��3�$^؈�v�\�������u���BA��v����E������      P   �  x��VKn�F][��e��A��\�g�"'�������.� 9 E�b[�+t�(�ꦨ�Y�0��~��^Շ�߹8��P�Y�_\�+��t����]�'��}�B����.tq�a��lB|��s��U��ϡ�����wq��Y��]���B4TG�y�oݲ��.�\��]�;���P�M�ñ��n��QXg������� �PAE
}S�7�n�Q�a�8*�Y�e�7��e��������j:���Am���3�g��&:A�D��Z="�4�PDMN`'8�o\�g��5�ɏ5�X��NY�'m�dE[��"���Q��%\x����|0��䧄#��-0Z|"��`Ab9��&~AL��>C����beį�s�P"ou_����:vɑ��@�� �S��N�/p*}z&�����:=�K�G��T�����'�=(�s��T����d�8��'�2��T�^��]��[.
���,k��Ke��,�}e�y��1Q9��;f���n��@U��jٳ!$����\]�?=����z�x�=�Y ��R�ց�����$��Ҋ��z��e5�&H��@�Y��3��7�홎VK}��u�n��u������H&�<F�%h��S+����2y���ۭzFtor�g=�H@#�q�YM���-��UA�6_���*���Q^�]�����;�p�Q1�Z(��Z�J��s�������ٍ��D�2�<��#���HTя6l,�L�Tc*�*��zn��ʯt�8{s*� B����襈|Lq�:e�{��V9m������2�}����iY��I!�:�E�S�W��T��C?ʴ;Tr����.��X��i�����`t-c��Q��T���!�t{1�n���;��H%��y�����������<�kh�Zf�Y��d�ؘ�nH@Å�M�V���+�w'��b��Y�]���;w�`N��%��z�aD@����N�J}�p*s�0t�e�}!��ݏ>�}���[vd����זL�ܚO��id�;�&�<j���׿�ۥ���(��&^�$u�m����~y���O���Z}J<x8je�yoہwy�4���l�a�p�35����2]��=ю���F�0����%�z�k����#��M������~�p?��-�Ԗ      Z   �  x��Y[oW~������y/�U+�*�x�%��*�
�>�4T��`"P�&� ҇��؍�����3s��˜�dov���o���+���a��+�bPv�>(�Ű���^qX��v�����������x��o�|�Ë���O��I1��&�p�Jw@m�ҁ%�/���|���I�b�ʆx��k�4Tx�6l(w�����5ESV�w]8r�T�����.1�a��<uH���#8��p��$�x�7o����<�a����Q���#��'yבAŔ���T�bZ���˂��G1󾺚X*E�Q�R�ĕ�{�����~sk��(��0r�#}�:��w�'�����H ��G֜z�S�J�n�ѣU�+Ar�}y����ۛ[�!�HK?�< �@��؂�%�=,w�A��.����C�@3�?Iϙ&M��#Z!��jGT^SG^P`�(k��y��CC?��,��P�ǘP�B$�G��EZ�o߼��Dwڼ���|}M&��)��bZ�(�x	����Gi
a�Qc����Q$��}xv�Џ�Y":�s���33
�2�y_	����OxL8 ֏N5�ZT��0���<�U�O��]0�8`9��Y�QtQ�dM��K	�Z�T��΅	� �:��d�p�CDv���*)����4YS��`{qk�: �8!�&/���RZ�v��{c�lb��5]:Vӵ4m ��1T�Eq�I��(�@:�<�N����hA�NOU蔏��Ǖ��X��kɦG��P�{��HU@�B�GP9^p��|���l�sL:a�L6����K�Z���a?��`���|���}�=*},�#���F������Y�`�~o�-,���"��W��FP9�P-�|k�S��A��cS~��@��⭞p@_�Q�`�����83jf�6��g�H��L�D1�S̺+\�R�BӊV=?�+�"ƍ��q�ه�Mnp:S���9�?''t|F��O���~`#%W��N�H�g�PG�t�Ws��Cb#l�K��G�?��U��s�l9�>3�Q����M<��l�sl�yN�3�m�J0�{�&���d"�R��NB�D۞��a����G�M>S��ٵhV����&Q5��Eԏ�D������z>Su�S�1�v�W�K�]u�j���q�KZ��`1�K��N}�Q$?���E��9;�X�����:v_���g�ڙ�j�!]biO���;�3��c&�W��U���0luDteO5�(�L>��(D�0s��ʭ�b�#�~��I~����`i��/.�`C3�td&|pa�nj� ;{�8XF�в"���v	Օ��ۛ?n+w�4q,(�6}D7gl���P���!�����3�P��T`��3ޥ��	`��>�˘o����Gy(j=�Y`�k��V�v(?�Ӻ�}ެ�H<2�n�$^�ޔ�c�`k�y[�e��|�'3D��M�)�u�OŌ�Ԛ�R�/@fEq�'/E4���2��^�7聤������ݓ��`��v�}cz�?:��'��$D�y��*,��y(LQ%M�9�w!�j&��B�.iB����ޜ߫�u�Z��-	�>���OX��JF�&�<�Gy�n!X�B���C�s�8]���p�k�����5A�K���R��\����o�?\��_�0�	G�7b�_0��D�;�A�V�a���Ƨ
P��a�'�7��>�z���J���(|�X���%L����-�L�=KBoɘ�bv�sk'����~�S��k�;�kI*��d�df��N�.�\U*pv:󎚛&�O*̪��F���b�	ǚ0Kh��e:ό�8r��j��ɪ��
��=�D�\������)��;r����{L�3��'��[���T��.RH�p��儝�&�2� ���@�=Q�Ǹ�&Q�����/�5�l&V�?ȕ\^,2������FM�g     