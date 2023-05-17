PGDMP     9                    {            thelighttoy    15.2    15.2 I    X           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            [           1262    16527    thelighttoy    DATABASE     �   CREATE DATABASE thelighttoy WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE thelighttoy;
                postgres    false            �            1259    16534    cart_details    TABLE     �   CREATE TABLE public.cart_details (
    cart_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    total_price real NOT NULL
);
     DROP TABLE public.cart_details;
       public         heap    postgres    false            �            1259    16537    carts    TABLE     �   CREATE TABLE public.carts (
    id integer NOT NULL,
    total_price real NOT NULL,
    username character varying(20) NOT NULL
);
    DROP TABLE public.carts;
       public         heap    postgres    false            �            1259    16540    carts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.carts_id_seq;
       public          postgres    false    215            \           0    0    carts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;
          public          postgres    false    216            �            1259    16541 
   categories    TABLE     �   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    image character varying(255) NOT NULL,
    updated_date timestamp with time zone
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    16546    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    217            ]           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    218            �            1259    16547    contacts    TABLE     �   CREATE TABLE public.contacts (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    subject text NOT NULL,
    message text NOT NULL,
    send_date timestamp with time zone NOT NULL
);
    DROP TABLE public.contacts;
       public         heap    postgres    false            �            1259    16552    contact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.contact_id_seq;
       public          postgres    false    219            ^           0    0    contact_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.contact_id_seq OWNED BY public.contacts.id;
          public          postgres    false    220            �            1259    16553    order_details    TABLE     �   CREATE TABLE public.order_details (
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    total_price real NOT NULL
);
 !   DROP TABLE public.order_details;
       public         heap    postgres    false            �            1259    16556    orders    TABLE     �  CREATE TABLE public.orders (
    id integer NOT NULL,
    ordered_date timestamp with time zone NOT NULL,
    delivery_date timestamp with time zone NOT NULL,
    delivery_local text NOT NULL,
    cust_name character varying(100) NOT NULL,
    cust_phone character varying(12) NOT NULL,
    total_price real NOT NULL,
    username character varying(20) NOT NULL,
    status boolean NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16561    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    222            _           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    223            �            1259    16562    products    TABLE       CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    price real NOT NULL,
    old_price real NOT NULL,
    small_desc character varying(255) NOT NULL,
    detail_desc text NOT NULL,
    for_gender character varying(6) NOT NULL,
    for_age character varying(10) NOT NULL,
    updated_date timestamp with time zone NOT NULL,
    quantity integer NOT NULL,
    image character varying(255) NOT NULL,
    cat_id integer NOT NULL,
    sup_id integer NOT NULL,
    shop_id integer NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16567    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    224            `           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    225            �            1259    16568    shops    TABLE     �   CREATE TABLE public.shops (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    telephone character varying(12) NOT NULL,
    address text NOT NULL
);
    DROP TABLE public.shops;
       public         heap    postgres    false            �            1259    16573    shop_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.shop_id_seq;
       public          postgres    false    226            a           0    0    shop_id_seq    SEQUENCE OWNED BY     <   ALTER SEQUENCE public.shop_id_seq OWNED BY public.shops.id;
          public          postgres    false    227            �            1259    16574 	   suppliers    TABLE     �   CREATE TABLE public.suppliers (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    telephone character varying(12) NOT NULL,
    email character varying(255) NOT NULL,
    address text
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false            �            1259    16579    suppliers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.suppliers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.suppliers_id_seq;
       public          postgres    false    228            b           0    0    suppliers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.suppliers_id_seq OWNED BY public.suppliers.id;
          public          postgres    false    229            �            1259    16580    users    TABLE     y  CREATE TABLE public.users (
    username character varying(20) NOT NULL,
    password text NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    gender boolean NOT NULL,
    birthdate date NOT NULL,
    telephone character varying(12) NOT NULL,
    email text NOT NULL,
    address text NOT NULL,
    role boolean NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �           2604    16585    carts id    DEFAULT     d   ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);
 7   ALTER TABLE public.carts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    16586    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    16587    contacts id    DEFAULT     i   ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contact_id_seq'::regclass);
 :   ALTER TABLE public.contacts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    16588 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16589    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16590    shops id    DEFAULT     c   ALTER TABLE ONLY public.shops ALTER COLUMN id SET DEFAULT nextval('public.shop_id_seq'::regclass);
 7   ALTER TABLE public.shops ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    16591    suppliers id    DEFAULT     l   ALTER TABLE ONLY public.suppliers ALTER COLUMN id SET DEFAULT nextval('public.suppliers_id_seq'::regclass);
 ;   ALTER TABLE public.suppliers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            E          0    16534    cart_details 
   TABLE DATA           R   COPY public.cart_details (cart_id, product_id, quantity, total_price) FROM stdin;
    public          postgres    false    214   �V       F          0    16537    carts 
   TABLE DATA           :   COPY public.carts (id, total_price, username) FROM stdin;
    public          postgres    false    215   �V       H          0    16541 
   categories 
   TABLE DATA           P   COPY public.categories (id, name, description, image, updated_date) FROM stdin;
    public          postgres    false    217   W       J          0    16547    contacts 
   TABLE DATA           P   COPY public.contacts (id, name, email, subject, message, send_date) FROM stdin;
    public          postgres    false    219   AX       L          0    16553    order_details 
   TABLE DATA           T   COPY public.order_details (order_id, product_id, quantity, total_price) FROM stdin;
    public          postgres    false    221   �X       M          0    16556    orders 
   TABLE DATA           �   COPY public.orders (id, ordered_date, delivery_date, delivery_local, cust_name, cust_phone, total_price, username, status) FROM stdin;
    public          postgres    false    222   �Y       O          0    16562    products 
   TABLE DATA           �   COPY public.products (id, name, price, old_price, small_desc, detail_desc, for_gender, for_age, updated_date, quantity, image, cat_id, sup_id, shop_id) FROM stdin;
    public          postgres    false    224   ^\       Q          0    16568    shops 
   TABLE DATA           =   COPY public.shops (id, name, telephone, address) FROM stdin;
    public          postgres    false    226   &b       S          0    16574 	   suppliers 
   TABLE DATA           H   COPY public.suppliers (id, name, telephone, email, address) FROM stdin;
    public          postgres    false    228   �b       U          0    16580    users 
   TABLE DATA           |   COPY public.users (username, password, firstname, lastname, gender, birthdate, telephone, email, address, role) FROM stdin;
    public          postgres    false    230   bc       c           0    0    carts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.carts_id_seq', 41, true);
          public          postgres    false    216            d           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 37, true);
          public          postgres    false    218            e           0    0    contact_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.contact_id_seq', 175, true);
          public          postgres    false    220            f           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 30, true);
          public          postgres    false    223            g           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 47, true);
          public          postgres    false    225            h           0    0    shop_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.shop_id_seq', 15, true);
          public          postgres    false    227            i           0    0    suppliers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.suppliers_id_seq', 18, true);
          public          postgres    false    229            �           2606    16593    categories PK_categories 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT "PK_categories" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT "PK_categories";
       public            postgres    false    217            �           2606    16595    order_details PK_orderdetail 
   CONSTRAINT     n   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT "PK_orderdetail" PRIMARY KEY (order_id, product_id);
 H   ALTER TABLE ONLY public.order_details DROP CONSTRAINT "PK_orderdetail";
       public            postgres    false    221    221            �           2606    16597    shops PK_shop 
   CONSTRAINT     M   ALTER TABLE ONLY public.shops
    ADD CONSTRAINT "PK_shop" PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.shops DROP CONSTRAINT "PK_shop";
       public            postgres    false    226            �           2606    16599    suppliers PK_suppliers 
   CONSTRAINT     V   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT "PK_suppliers" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT "PK_suppliers";
       public            postgres    false    228            �           2606    16601    users PK_username 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "PK_username" PRIMARY KEY (username);
 =   ALTER TABLE ONLY public.users DROP CONSTRAINT "PK_username";
       public            postgres    false    230            �           2606    16603    cart_details cart_details_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.cart_details
    ADD CONSTRAINT cart_details_pkey PRIMARY KEY (cart_id, product_id);
 H   ALTER TABLE ONLY public.cart_details DROP CONSTRAINT cart_details_pkey;
       public            postgres    false    214    214            �           2606    16605    carts carts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
       public            postgres    false    215            �           2606    16607    contacts contact_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.contacts DROP CONSTRAINT contact_pkey;
       public            postgres    false    219            �           2606    16609    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    222            �           2606    16611    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    224            �           2606    16613    shops uq_shop 
   CONSTRAINT     M   ALTER TABLE ONLY public.shops
    ADD CONSTRAINT uq_shop UNIQUE (telephone);
 7   ALTER TABLE ONLY public.shops DROP CONSTRAINT uq_shop;
       public            postgres    false    226            �           2606    16615    suppliers uq_suppliers 
   CONSTRAINT     ]   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT uq_suppliers UNIQUE (telephone, email);
 @   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT uq_suppliers;
       public            postgres    false    228    228            �           2606    16616    products FK_categories    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "FK_categories" FOREIGN KEY (cat_id) REFERENCES public.categories(id) ON DELETE CASCADE NOT VALID;
 B   ALTER TABLE ONLY public.products DROP CONSTRAINT "FK_categories";
       public          postgres    false    217    224    3227            �           2606    16621    products FK_shops    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "FK_shops" FOREIGN KEY (shop_id) REFERENCES public.shops(id) ON DELETE CASCADE NOT VALID;
 =   ALTER TABLE ONLY public.products DROP CONSTRAINT "FK_shops";
       public          postgres    false    3237    224    226            �           2606    16626    products FK_suppliers    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "FK_suppliers" FOREIGN KEY (sup_id) REFERENCES public.suppliers(id) ON DELETE CASCADE NOT VALID;
 A   ALTER TABLE ONLY public.products DROP CONSTRAINT "FK_suppliers";
       public          postgres    false    228    224    3241            �           2606    16631 &   cart_details cart_details_cart_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_details
    ADD CONSTRAINT cart_details_cart_id_fkey FOREIGN KEY (cart_id) REFERENCES public.carts(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.cart_details DROP CONSTRAINT cart_details_cart_id_fkey;
       public          postgres    false    3225    214    215            �           2606    16636 )   cart_details cart_details_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_details
    ADD CONSTRAINT cart_details_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.cart_details DROP CONSTRAINT cart_details_product_id_fkey;
       public          postgres    false    3235    214    224            �           2606    16641    carts carts_username_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_username_fkey FOREIGN KEY (username) REFERENCES public.users(username) ON DELETE CASCADE NOT VALID;
 C   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_username_fkey;
       public          postgres    false    230    3245    215            �           2606    16646 )   order_details order_details_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE NOT VALID;
 S   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_order_id_fkey;
       public          postgres    false    222    3233    221            �           2606    16651 +   order_details order_details_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE NOT VALID;
 U   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_product_id_fkey;
       public          postgres    false    221    3235    224            �           2606    16656    orders orders_username_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_username_fkey FOREIGN KEY (username) REFERENCES public.users(username) ON DELETE CASCADE NOT VALID;
 E   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_username_fkey;
       public          postgres    false    3245    230    222            E      x�36�42�4�42�3������� T�      F      x�36�42�3��,)J��+����� 4}�      H   "  x�m�Mk�0��+r5�$�Vn-ݠl�;��`�5���4��_�d���F�9H�j^��)^��x��7u��|k�e����e4��v7[�o�O�P�
�̚���R��X����eq,����C ����5'1�Ķ�49�9��_Y�g�_Ƈ(�i_���7@�:1�E�|��cϷ�}m��Xx�q��Y^u׈rFXĭoW�SPH��Dg�z.ʟ��Y�w[{�i�Y-l�=�Uwi�nvS5M;����؈/������߷p�3I�H{��1��(�~I���      J   �   x�M�;�0���+�n ��X|-�'�Zm�^-��/u"99'9��쪍���gYE�~zH$��$�c-}���#�kǐ#�)��CZ7<[��y�UՆ�Q�Z?/ȣ �X2=s��}�>L����ǟ/��3<MP)�`&o�e��ҁ���Šݼg��dE�eR`��mߒ(�~��=Z      L   �   x�M���0C��0F�K���d�|���'�Y(L�0�@k��px�m^jc�U��#�3l�c����>V�_�K�y�/Q�6�p&���>�	V[ up��+-q�l9ख़Qm��t*�����A�p��u�y�=�L�:����d�,3��^-"      M   �  x���OO�@�ϛO�����������T�"j�^z1!%��]�])߾��ظ�"EQ�q��fޛPh��iH�q�9�l|�����U���o�ϛ�V/�v���R~^�v�U�O���� Xؠ��/�7���d`C����!�c�'f��EY�rB�b#�GW�JYv�&J
�	��z}��X H�8 �� ��Jl,�N�Y��ϕ4#�X?�ҝ���|��Y�Ⱥ�<7�y_xk]L4����ކ)�C�A� $��!�Md�H�8X1}� �8����Ѝ=�
\a�I���.2�K����D��u�N�f�ź�$q�G'��
,��n�+��#�����0t Q#�@zO�������S���kޓ���x�}��,%å��/��+ч��]���eC�g��\P*�3��zB2:�.�}w�9o��?ڞ��{1�]��sPΛ�Z��uƆÃ���=��d
��rp�_��nQū����n��q��IЙ�`����)�����3���#���,���ij0��m��1Z�k����nV�v����u������~ο>��M�l���L����6R�ʁ�{��MD��dB���<;Y}S�q���>���U�,����$�J�A]����Z����Ӓ��~Y}Q�|Z&����f�Y�b#��˕����J��=����fݼ��      O   �  x��XMo�H=�_�}�U՟ܒ�j3+�4JF�e$�qH�;��0�������B�8Ją��u���kPeWU�\����C�˫�CNy��ԇC�n�C���p�{�v���>l��K�m��;K���~h?�΀��/@\ �%�Raa����QZ+e���Y��n��ߗ�m�2�B��u�����Z��B��|'`��������%�B��J�
���,U`�&�$�'�f���@f V$�_�O�"��2O�;A��^b��TX�����>�4��&�D�8"J=Q�]�զ�?W���wx���e�7O�N���:�A A+7��1$�-�6�f�gN��Y
�ܺz��"e�gH�zL�xt����Uo��h�Ј��<�R(%�{�	�"�왪`Ѻ�A_�Ou{��`Q��TT-�1U�H(��"DCϓ�?3�m����NX���(&�K�%��
�����X ����%W�b�s_q������ym�q'��o/ѕ�h�T�V8Q[G*Q%��2��z�?G�c\����	Ub)Uဤ��*I�E�J��Jn}n �n����i��n�{��e!�|�st�����̅)ɔ��p�
3�3%!}۳ָڞX���[~�}]v�9v5G'X�A�f%BAZ	��&�6ب�f�"i?��f�Z~���@X:\��@l� ��;���+�0� ��4���5"��K�M�>�S���ڳǜQ�%)y����͕�HT��T[ia%�a�H?|�En���)�m��o�6����`��N�Hi%	Lۜ*�a/.��֎���a[��
������:�

�	&��z������n��	����v�+�H��.��U��l"��g�W%�Y����u�����'���GN.		��)��@�����
��~�$S i�O�$&����}�?|���2�%h��.U����!�)wܛ�s�
iw��K����1�!N���Ɯ ����\��<`��ҥ�H���5�5$`��Ȯ�M״<h�N�d�w &%�\���)�"�~:�,ȑ8jr�Iq����L	���P?�y���&�����'n>�JJcaMbȄ���T�DSp�99���]��pR�Ȝ�xn%�l�~˿��-�Eg�!BOl�L!8��XK�*6i�M��	ߔg�8�T��c[K��@ .�'�V�0�l��6�ۀ� ::n e�W8���Q������<�d��� �6�����24�kx�Z\�͐|��`9���ڏ���s<�<{U|>H��ь����(�Ʌ+�(��� ν뙋�� ��.�,*>�Ni_3�n��P�uj�� X<9�Rq�'%�grm9�H?��Yܭ�Wn~�~�1/�S���|������ŁN>j猕��/�$��>�(��[N�g��9���;�[�Ad8;�@KC��ɺ8�A7�N����?����>�a���������,(���x�+@��g^-�o�o�j���K��      Q   �   x�]�!�0@Ql��'��.N\���EC#QU%&�4u�z��`$�'�B^i֔7
u'��VX,��P�}��u��8xh�4ג�M�`z?Xw@��Ҙ��'_tۑ����q0��4�D�w�jYV|^��	0      S   �   x�MͿ�0����}��?)�	���R��M�g�������o~�\��MJ#��Z	����6�'BK��C��ifX��vޓ]$*m����j;ẨE�R��u��'����U>��9�|k��C	(��{��6���le7>汍��
��c&B�      U   �  x���Ks�H����`�e�����EQQ�f�4O�H���4&�<�_3S�.(��=�\������_6��y���6���ޖ0�����=Yv��QR�S�.�;ǐj�N3�����H B�B�uۏ��s"N�M�-�P�ҸȀ�rJGy�J-�<��EQ����1Β�~pa5��?ǵ0�͡����.��溜\�J{+��y�����$�"(�`�AՂ�](w� �"��Ĳ�bO`fAS�_)�xʮ� �^�~N-bB�P�RfKl$���X�	n^4�8qA�;x�Hc�څv2}g]\h����h�,dg=�uGp\�}��O<��8�M TT�i@�n�,R��l��҅,�� �,+2������|B��H~����z0
�b��tl���1�	s�%��Л����E�nt�!�6¾.��h���y���(�6��2�ќ$H<È��{r��TM��M/~��Nr�*ELg��X����|�ZH�O���I�J?fr^0��r�j�O���7VӅ�u�B@��xA�dܤ"���B��B�=ikv�����3�p�Ih+J�g&�����0z�k����p԰��8���u ͭ�^��|J��;Y�1�_BO.�Ŝ�A���)۱d���Fi1�M�/��|}t��_Ǟ`�#uɞY��Y�`��~���E�ۥ��W�97�i�%2�.���M�{j_�$���w�������dV�!um����C��\�R�"'���J<��2�+���f�_,#6&�(�/�{dMfϑ�S����|����Ҡݣ�`����b�}L�̴�(Ao�f���\��S[G�e�LO?��� 6����c���E��P�\P��Kݟ�I�7~#\1;?I��\��]�X��"]�r8vvQ�	sF�cK��2��ס��e��!_�h�e+Q_�������3z�KR4�����VF�����%^���o�4�r��*}Ѝ�iY/�00"�O��[n�!D�R�W3��LWK�/���/�����Nw:�? �%�     