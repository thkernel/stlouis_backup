PGDMP                          z            stlouis_development %   10.19 (Ubuntu 10.19-0ubuntu0.18.04.1) %   10.19 (Ubuntu 10.19-0ubuntu0.18.04.1) )   &           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            '           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            (           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            )           1262    1891522    stlouis_development    DATABASE     ?   CREATE DATABASE stlouis_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'fr_FR.UTF-8' LC_CTYPE = 'fr_FR.UTF-8';
 #   DROP DATABASE stlouis_development;
             stlouis_admin    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            *           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6                        3079    13047    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            +           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    1891633    accounts    TABLE     ?  CREATE TABLE public.accounts (
    id bigint NOT NULL,
    uid character varying,
    login character varying,
    slug character varying,
    role_id bigint NOT NULL,
    status character varying,
    accountable_type character varying,
    accountable_id bigint,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying,
    failed_attempts integer DEFAULT 0 NOT NULL,
    unlock_token character varying,
    locked_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.accounts;
       public         stlouis_admin    false    6            ?            1259    1891631    accounts_id_seq    SEQUENCE     x   CREATE SEQUENCE public.accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.accounts_id_seq;
       public       stlouis_admin    false    6    211            ,           0    0    accounts_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.accounts_id_seq OWNED BY public.accounts.id;
            public       stlouis_admin    false    210            ?            1259    1891564    active_storage_attachments    TABLE       CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 .   DROP TABLE public.active_storage_attachments;
       public         stlouis_admin    false    6            ?            1259    1891562 !   active_storage_attachments_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.active_storage_attachments_id_seq;
       public       stlouis_admin    false    6    203            -           0    0 !   active_storage_attachments_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;
            public       stlouis_admin    false    202            ?            1259    1891552    active_storage_blobs    TABLE     F  CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.active_storage_blobs;
       public         stlouis_admin    false    6            ?            1259    1891550    active_storage_blobs_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.active_storage_blobs_id_seq;
       public       stlouis_admin    false    6    201            .           0    0    active_storage_blobs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;
            public       stlouis_admin    false    200            ?            1259    1907410    activity_logs    TABLE     ?   CREATE TABLE public.activity_logs (
    id bigint NOT NULL,
    uid character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 !   DROP TABLE public.activity_logs;
       public         stlouis_admin    false    6            ?            1259    1907408    activity_logs_id_seq    SEQUENCE     }   CREATE SEQUENCE public.activity_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.activity_logs_id_seq;
       public       stlouis_admin    false    253    6            /           0    0    activity_logs_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.activity_logs_id_seq OWNED BY public.activity_logs.id;
            public       stlouis_admin    false    252            ?            1259    1899201    api_keys    TABLE       CREATE TABLE public.api_keys (
    id bigint NOT NULL,
    access_token character varying,
    account_id bigint,
    expires_at timestamp without time zone,
    active boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.api_keys;
       public         stlouis_admin    false    6            ?            1259    1899199    api_keys_id_seq    SEQUENCE     x   CREATE SEQUENCE public.api_keys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.api_keys_id_seq;
       public       stlouis_admin    false    247    6            0           0    0    api_keys_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.api_keys_id_seq OWNED BY public.api_keys.id;
            public       stlouis_admin    false    246            ?            1259    1891531    ar_internal_metadata    TABLE     ?   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         stlouis_admin    false    6            ?            1259    1891925    customer_fidelity_cards    TABLE     7  CREATE TABLE public.customer_fidelity_cards (
    id bigint NOT NULL,
    uid character varying,
    customer_id bigint,
    fidelity_card_id bigint,
    status character varying,
    account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 +   DROP TABLE public.customer_fidelity_cards;
       public         stlouis_admin    false    6            ?            1259    1891923    customer_fidelity_cards_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.customer_fidelity_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.customer_fidelity_cards_id_seq;
       public       stlouis_admin    false    6    239            1           0    0    customer_fidelity_cards_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.customer_fidelity_cards_id_seq OWNED BY public.customer_fidelity_cards.id;
            public       stlouis_admin    false    238            ?            1259    1891670 	   customers    TABLE     ?  CREATE TABLE public.customers (
    id bigint NOT NULL,
    uid character varying,
    company_name character varying,
    first_name character varying,
    last_name character varying,
    civility character varying,
    address character varying,
    country character varying,
    city character varying,
    phone character varying,
    street character varying,
    po_box character varying,
    zip_code character varying,
    email character varying,
    description character varying,
    status character varying,
    account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.customers;
       public         stlouis_admin    false    6            ?            1259    1891668    customers_id_seq    SEQUENCE     y   CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public       stlouis_admin    false    215    6            2           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
            public       stlouis_admin    false    214            ?            1259    1891582    features    TABLE     @  CREATE TABLE public.features (
    id bigint NOT NULL,
    uid character varying,
    name character varying,
    subject_class character varying,
    description character varying,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.features;
       public         stlouis_admin    false    6            ?            1259    1891580    features_id_seq    SEQUENCE     x   CREATE SEQUENCE public.features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.features_id_seq;
       public       stlouis_admin    false    6    205            3           0    0    features_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.features_id_seq OWNED BY public.features.id;
            public       stlouis_admin    false    204            ?            1259    1891907    fidelity_cards    TABLE     #  CREATE TABLE public.fidelity_cards (
    id bigint NOT NULL,
    uid character varying,
    balance double precision DEFAULT 0.0,
    status character varying,
    account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 "   DROP TABLE public.fidelity_cards;
       public         stlouis_admin    false    6            ?            1259    1891905    fidelity_cards_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.fidelity_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.fidelity_cards_id_seq;
       public       stlouis_admin    false    6    237            4           0    0    fidelity_cards_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.fidelity_cards_id_seq OWNED BY public.fidelity_cards.id;
            public       stlouis_admin    false    236            ?            1259    1891704    food_categories    TABLE     ,  CREATE TABLE public.food_categories (
    id bigint NOT NULL,
    uid character varying,
    name character varying,
    description text,
    status character varying,
    account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 #   DROP TABLE public.food_categories;
       public         stlouis_admin    false    6            ?            1259    1891702    food_categories_id_seq    SEQUENCE        CREATE SEQUENCE public.food_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.food_categories_id_seq;
       public       stlouis_admin    false    219    6            5           0    0    food_categories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.food_categories_id_seq OWNED BY public.food_categories.id;
            public       stlouis_admin    false    218            ?            1259    1891721    foods    TABLE     ?  CREATE TABLE public.foods (
    id bigint NOT NULL,
    uid character varying,
    slug character varying,
    food_category_id bigint,
    name character varying,
    min_cooking_time time without time zone,
    max_cooking_time time without time zone,
    price double precision,
    descriptions character varying,
    status character varying,
    account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.foods;
       public         stlouis_admin    false    6            ?            1259    1891719    foods_id_seq    SEQUENCE     u   CREATE SEQUENCE public.foods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.foods_id_seq;
       public       stlouis_admin    false    221    6            6           0    0    foods_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.foods_id_seq OWNED BY public.foods.id;
            public       stlouis_admin    false    220            ?            1259    1899252    order_item_drinks    TABLE     5  CREATE TABLE public.order_item_drinks (
    id bigint NOT NULL,
    order_id bigint,
    product_id bigint,
    quantity double precision,
    unit_price double precision,
    amount double precision,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 %   DROP TABLE public.order_item_drinks;
       public         stlouis_admin    false    6            ?            1259    1899250    order_item_drinks_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.order_item_drinks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.order_item_drinks_id_seq;
       public       stlouis_admin    false    6    251            7           0    0    order_item_drinks_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.order_item_drinks_id_seq OWNED BY public.order_item_drinks.id;
            public       stlouis_admin    false    250            ?            1259    1891811    order_items    TABLE     ?  CREATE TABLE public.order_items (
    id bigint NOT NULL,
    uid character varying,
    order_id bigint,
    food_id bigint,
    quantity double precision DEFAULT 0.0,
    price double precision DEFAULT 0.0,
    amount double precision DEFAULT 0.0,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    product_id bigint
);
    DROP TABLE public.order_items;
       public         stlouis_admin    false    6            ?            1259    1891809    order_items_id_seq    SEQUENCE     {   CREATE SEQUENCE public.order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.order_items_id_seq;
       public       stlouis_admin    false    6    229            8           0    0    order_items_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;
            public       stlouis_admin    false    228            ?            1259    1891778    orders    TABLE     )  CREATE TABLE public.orders (
    id bigint NOT NULL,
    uid character varying,
    customer_id bigint,
    table_id bigint,
    subtotal double precision DEFAULT 0.0,
    total double precision DEFAULT 0.0,
    tax double precision DEFAULT 0.0,
    shipping double precision DEFAULT 0.0,
    status character varying,
    paid character varying,
    payment_method character varying,
    account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    vip_space boolean DEFAULT false
);
    DROP TABLE public.orders;
       public         stlouis_admin    false    6            ?            1259    1891776    orders_id_seq    SEQUENCE     v   CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public       stlouis_admin    false    6    227            9           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
            public       stlouis_admin    false    226            ?            1259    1891616    permission_items    TABLE     !  CREATE TABLE public.permission_items (
    id bigint NOT NULL,
    uid character varying,
    permission_id bigint,
    action_name character varying,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 $   DROP TABLE public.permission_items;
       public         stlouis_admin    false    6            ?            1259    1891614    permission_items_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.permission_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.permission_items_id_seq;
       public       stlouis_admin    false    6    209            :           0    0    permission_items_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.permission_items_id_seq OWNED BY public.permission_items.id;
            public       stlouis_admin    false    208            ?            1259    1891593    permissions    TABLE     
  CREATE TABLE public.permissions (
    id bigint NOT NULL,
    uid character varying,
    feature_id bigint,
    role_id bigint,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.permissions;
       public         stlouis_admin    false    6            ?            1259    1891591    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public       stlouis_admin    false    6    207            ;           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       stlouis_admin    false    206            ?            1259    1891854    product_categories    TABLE     X  CREATE TABLE public.product_categories (
    id bigint NOT NULL,
    uid character varying,
    slug character varying,
    name character varying,
    description character varying,
    account_id bigint,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 &   DROP TABLE public.product_categories;
       public         stlouis_admin    false    6            ?            1259    1891852    product_categories_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.product_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.product_categories_id_seq;
       public       stlouis_admin    false    6    233            <           0    0    product_categories_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.product_categories_id_seq OWNED BY public.product_categories.id;
            public       stlouis_admin    false    232            ?            1259    1891871    products    TABLE     4  CREATE TABLE public.products (
    id bigint NOT NULL,
    uid character varying,
    slug character varying,
    product_category_id bigint,
    name character varying,
    unity_id bigint,
    bar_code character varying,
    unit_price double precision,
    provider_id bigint,
    reorder_threshold double precision,
    current_stock double precision DEFAULT 0.0,
    description character varying,
    account_id bigint,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.products;
       public         stlouis_admin    false    6            ?            1259    1891869    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public       stlouis_admin    false    235    6            =           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
            public       stlouis_admin    false    234            ?            1259    1891687 	   providers    TABLE     q  CREATE TABLE public.providers (
    id bigint NOT NULL,
    uid character varying,
    company_name character varying,
    first_name character varying,
    last_name character varying,
    civility character varying,
    address character varying,
    country character varying,
    city character varying,
    phone character varying,
    street character varying,
    po_box character varying,
    zip_code character varying,
    description character varying,
    status character varying,
    account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.providers;
       public         stlouis_admin    false    6            ?            1259    1891685    providers_id_seq    SEQUENCE     y   CREATE SEQUENCE public.providers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.providers_id_seq;
       public       stlouis_admin    false    6    217            >           0    0    providers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.providers_id_seq OWNED BY public.providers.id;
            public       stlouis_admin    false    216            ?            1259    1891954    recharge_fidelity_cards    TABLE     H  CREATE TABLE public.recharge_fidelity_cards (
    id bigint NOT NULL,
    uid character varying,
    fidelity_card_id bigint,
    amount double precision DEFAULT 0.0,
    status character varying,
    account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 +   DROP TABLE public.recharge_fidelity_cards;
       public         stlouis_admin    false    6            ?            1259    1891952    recharge_fidelity_cards_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.recharge_fidelity_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.recharge_fidelity_cards_id_seq;
       public       stlouis_admin    false    6    241            ?           0    0    recharge_fidelity_cards_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.recharge_fidelity_cards_id_seq OWNED BY public.recharge_fidelity_cards.id;
            public       stlouis_admin    false    240            ?            1259    1891541    roles    TABLE       CREATE TABLE public.roles (
    id bigint NOT NULL,
    uid character varying,
    name character varying,
    description text,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.roles;
       public         stlouis_admin    false    6            ?            1259    1891539    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       stlouis_admin    false    6    199            @           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public       stlouis_admin    false    198            ?            1259    1891523    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         stlouis_admin    false    6            ?            1259    1891837    smtp_server_settings    TABLE     ?  CREATE TABLE public.smtp_server_settings (
    id bigint NOT NULL,
    uid character varying,
    host_name character varying,
    user_name character varying,
    user_password character varying,
    domain character varying,
    port integer,
    authentication character varying,
    enable_starttls_auto boolean,
    ssl boolean,
    account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.smtp_server_settings;
       public         stlouis_admin    false    6            ?            1259    1891835    smtp_server_settings_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.smtp_server_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.smtp_server_settings_id_seq;
       public       stlouis_admin    false    231    6            A           0    0    smtp_server_settings_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.smtp_server_settings_id_seq OWNED BY public.smtp_server_settings.id;
            public       stlouis_admin    false    230            ?            1259    1891978    stock_entries    TABLE     ?  CREATE TABLE public.stock_entries (
    id bigint NOT NULL,
    uid character varying,
    product_id bigint,
    reason character varying,
    quantity double precision DEFAULT 0.0,
    unity_id bigint,
    description text,
    status character varying,
    account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 !   DROP TABLE public.stock_entries;
       public         stlouis_admin    false    6            ?            1259    1891976    stock_entries_id_seq    SEQUENCE     }   CREATE SEQUENCE public.stock_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.stock_entries_id_seq;
       public       stlouis_admin    false    243    6            B           0    0    stock_entries_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.stock_entries_id_seq OWNED BY public.stock_entries.id;
            public       stlouis_admin    false    242            ?            1259    1892008    stock_exits    TABLE     ?  CREATE TABLE public.stock_exits (
    id bigint NOT NULL,
    uid character varying,
    product_id bigint,
    reason character varying,
    quantity double precision DEFAULT 0.0,
    unity_id bigint,
    description text,
    status character varying,
    account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.stock_exits;
       public         stlouis_admin    false    6            ?            1259    1892006    stock_exits_id_seq    SEQUENCE     {   CREATE SEQUENCE public.stock_exits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.stock_exits_id_seq;
       public       stlouis_admin    false    6    245            C           0    0    stock_exits_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.stock_exits_id_seq OWNED BY public.stock_exits.id;
            public       stlouis_admin    false    244            ?            1259    1891761    tables    TABLE       CREATE TABLE public.tables (
    id bigint NOT NULL,
    uid character varying,
    name character varying,
    status character varying,
    account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.tables;
       public         stlouis_admin    false    6            ?            1259    1891759    tables_id_seq    SEQUENCE     v   CREATE SEQUENCE public.tables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tables_id_seq;
       public       stlouis_admin    false    6    225            D           0    0    tables_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tables_id_seq OWNED BY public.tables.id;
            public       stlouis_admin    false    224            ?            1259    1899218    tenants    TABLE     ?  CREATE TABLE public.tenants (
    id bigint NOT NULL,
    uid character varying,
    organization_name character varying,
    address character varying,
    phone character varying,
    country character varying,
    city character varying,
    email character varying,
    website character varying,
    subdomain character varying,
    status character varying,
    account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.tenants;
       public         stlouis_admin    false    6            ?            1259    1899216    tenants_id_seq    SEQUENCE     w   CREATE SEQUENCE public.tenants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tenants_id_seq;
       public       stlouis_admin    false    249    6            E           0    0    tenants_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tenants_id_seq OWNED BY public.tenants.id;
            public       stlouis_admin    false    248            ?            1259    1891744    unities    TABLE     G  CREATE TABLE public.unities (
    id bigint NOT NULL,
    uid character varying,
    name character varying,
    unity_symbol character varying,
    decription text,
    status character varying,
    account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.unities;
       public         stlouis_admin    false    6            ?            1259    1891742    unities_id_seq    SEQUENCE     w   CREATE SEQUENCE public.unities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.unities_id_seq;
       public       stlouis_admin    false    223    6            F           0    0    unities_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.unities_id_seq OWNED BY public.unities.id;
            public       stlouis_admin    false    222            ?            1259    1891659    users    TABLE     7  CREATE TABLE public.users (
    id bigint NOT NULL,
    uid character varying,
    first_name character varying,
    last_name character varying,
    sex character varying,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.users;
       public         stlouis_admin    false    6            ?            1259    1891657    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       stlouis_admin    false    6    213            G           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       stlouis_admin    false    212            ?           2604    1891636    accounts id    DEFAULT     j   ALTER TABLE ONLY public.accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_id_seq'::regclass);
 :   ALTER TABLE public.accounts ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    211    210    211            ?           2604    1891567    active_storage_attachments id    DEFAULT     ?   ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);
 L   ALTER TABLE public.active_storage_attachments ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    202    203    203            ?           2604    1891555    active_storage_blobs id    DEFAULT     ?   ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);
 F   ALTER TABLE public.active_storage_blobs ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    201    200    201            ?           2604    1907413    activity_logs id    DEFAULT     t   ALTER TABLE ONLY public.activity_logs ALTER COLUMN id SET DEFAULT nextval('public.activity_logs_id_seq'::regclass);
 ?   ALTER TABLE public.activity_logs ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    252    253    253            ?           2604    1899204    api_keys id    DEFAULT     j   ALTER TABLE ONLY public.api_keys ALTER COLUMN id SET DEFAULT nextval('public.api_keys_id_seq'::regclass);
 :   ALTER TABLE public.api_keys ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    246    247    247            ?           2604    1891928    customer_fidelity_cards id    DEFAULT     ?   ALTER TABLE ONLY public.customer_fidelity_cards ALTER COLUMN id SET DEFAULT nextval('public.customer_fidelity_cards_id_seq'::regclass);
 I   ALTER TABLE public.customer_fidelity_cards ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    239    238    239            ?           2604    1891673    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    215    214    215            ?           2604    1891585    features id    DEFAULT     j   ALTER TABLE ONLY public.features ALTER COLUMN id SET DEFAULT nextval('public.features_id_seq'::regclass);
 :   ALTER TABLE public.features ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    204    205    205            ?           2604    1891910    fidelity_cards id    DEFAULT     v   ALTER TABLE ONLY public.fidelity_cards ALTER COLUMN id SET DEFAULT nextval('public.fidelity_cards_id_seq'::regclass);
 @   ALTER TABLE public.fidelity_cards ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    237    236    237            ?           2604    1891707    food_categories id    DEFAULT     x   ALTER TABLE ONLY public.food_categories ALTER COLUMN id SET DEFAULT nextval('public.food_categories_id_seq'::regclass);
 A   ALTER TABLE public.food_categories ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    219    218    219            ?           2604    1891724    foods id    DEFAULT     d   ALTER TABLE ONLY public.foods ALTER COLUMN id SET DEFAULT nextval('public.foods_id_seq'::regclass);
 7   ALTER TABLE public.foods ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    220    221    221            ?           2604    1899255    order_item_drinks id    DEFAULT     |   ALTER TABLE ONLY public.order_item_drinks ALTER COLUMN id SET DEFAULT nextval('public.order_item_drinks_id_seq'::regclass);
 C   ALTER TABLE public.order_item_drinks ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    251    250    251            ?           2604    1891814    order_items id    DEFAULT     p   ALTER TABLE ONLY public.order_items ALTER COLUMN id SET DEFAULT nextval('public.order_items_id_seq'::regclass);
 =   ALTER TABLE public.order_items ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    229    228    229            ?           2604    1891781 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    226    227    227            ?           2604    1891619    permission_items id    DEFAULT     z   ALTER TABLE ONLY public.permission_items ALTER COLUMN id SET DEFAULT nextval('public.permission_items_id_seq'::regclass);
 B   ALTER TABLE public.permission_items ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    209    208    209            ?           2604    1891596    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    207    206    207            ?           2604    1891857    product_categories id    DEFAULT     ~   ALTER TABLE ONLY public.product_categories ALTER COLUMN id SET DEFAULT nextval('public.product_categories_id_seq'::regclass);
 D   ALTER TABLE public.product_categories ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    232    233    233            ?           2604    1891874    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    235    234    235            ?           2604    1891690    providers id    DEFAULT     l   ALTER TABLE ONLY public.providers ALTER COLUMN id SET DEFAULT nextval('public.providers_id_seq'::regclass);
 ;   ALTER TABLE public.providers ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    217    216    217            ?           2604    1891957    recharge_fidelity_cards id    DEFAULT     ?   ALTER TABLE ONLY public.recharge_fidelity_cards ALTER COLUMN id SET DEFAULT nextval('public.recharge_fidelity_cards_id_seq'::regclass);
 I   ALTER TABLE public.recharge_fidelity_cards ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    241    240    241            ?           2604    1891544    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    199    198    199            ?           2604    1891840    smtp_server_settings id    DEFAULT     ?   ALTER TABLE ONLY public.smtp_server_settings ALTER COLUMN id SET DEFAULT nextval('public.smtp_server_settings_id_seq'::regclass);
 F   ALTER TABLE public.smtp_server_settings ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    230    231    231            ?           2604    1891981    stock_entries id    DEFAULT     t   ALTER TABLE ONLY public.stock_entries ALTER COLUMN id SET DEFAULT nextval('public.stock_entries_id_seq'::regclass);
 ?   ALTER TABLE public.stock_entries ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    242    243    243            ?           2604    1892011    stock_exits id    DEFAULT     p   ALTER TABLE ONLY public.stock_exits ALTER COLUMN id SET DEFAULT nextval('public.stock_exits_id_seq'::regclass);
 =   ALTER TABLE public.stock_exits ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    245    244    245            ?           2604    1891764 	   tables id    DEFAULT     f   ALTER TABLE ONLY public.tables ALTER COLUMN id SET DEFAULT nextval('public.tables_id_seq'::regclass);
 8   ALTER TABLE public.tables ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    224    225    225            ?           2604    1899221 
   tenants id    DEFAULT     h   ALTER TABLE ONLY public.tenants ALTER COLUMN id SET DEFAULT nextval('public.tenants_id_seq'::regclass);
 9   ALTER TABLE public.tenants ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    249    248    249            ?           2604    1891747 
   unities id    DEFAULT     h   ALTER TABLE ONLY public.unities ALTER COLUMN id SET DEFAULT nextval('public.unities_id_seq'::regclass);
 9   ALTER TABLE public.unities ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    222    223    223            ?           2604    1891662    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       stlouis_admin    false    212    213    213            ?          0    1891633    accounts 
   TABLE DATA               ?  COPY public.accounts (id, uid, login, slug, role_id, status, accountable_type, accountable_id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email, failed_attempts, unlock_token, locked_at, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    211   ?      ?          0    1891564    active_storage_attachments 
   TABLE DATA               k   COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
    public       stlouis_admin    false    203   d?      ?          0    1891552    active_storage_blobs 
   TABLE DATA               z   COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
    public       stlouis_admin    false    201   ??      #          0    1907410    activity_logs 
   TABLE DATA               H   COPY public.activity_logs (id, uid, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    253   ??                0    1899201    api_keys 
   TABLE DATA               l   COPY public.api_keys (id, access_token, account_id, expires_at, active, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    247   ??      ?          0    1891531    ar_internal_metadata 
   TABLE DATA               R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    197   ??                0    1891925    customer_fidelity_cards 
   TABLE DATA               ?   COPY public.customer_fidelity_cards (id, uid, customer_id, fidelity_card_id, status, account_id, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    239   ??      ?          0    1891670 	   customers 
   TABLE DATA               ?   COPY public.customers (id, uid, company_name, first_name, last_name, civility, address, country, city, phone, street, po_box, zip_code, email, description, status, account_id, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    215   Q?      ?          0    1891582    features 
   TABLE DATA               m   COPY public.features (id, uid, name, subject_class, description, status, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    205   ن                0    1891907    fidelity_cards 
   TABLE DATA               f   COPY public.fidelity_cards (id, uid, balance, status, account_id, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    237   ]?                0    1891704    food_categories 
   TABLE DATA               q   COPY public.food_categories (id, uid, name, description, status, account_id, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    219   ??                0    1891721    foods 
   TABLE DATA               ?   COPY public.foods (id, uid, slug, food_category_id, name, min_cooking_time, max_cooking_time, price, descriptions, status, account_id, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    221   ?      !          0    1899252    order_item_drinks 
   TABLE DATA               {   COPY public.order_item_drinks (id, order_id, product_id, quantity, unit_price, amount, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    251   ??                0    1891811    order_items 
   TABLE DATA               ?   COPY public.order_items (id, uid, order_id, food_id, quantity, price, amount, status, created_at, updated_at, product_id) FROM stdin;
    public       stlouis_admin    false    229   ͈      	          0    1891778    orders 
   TABLE DATA               ?   COPY public.orders (id, uid, customer_id, table_id, subtotal, total, tax, shipping, status, paid, payment_method, account_id, created_at, updated_at, vip_space) FROM stdin;
    public       stlouis_admin    false    227   ??      ?          0    1891616    permission_items 
   TABLE DATA               o   COPY public.permission_items (id, uid, permission_id, action_name, status, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    209   ??      ?          0    1891593    permissions 
   TABLE DATA               c   COPY public.permissions (id, uid, feature_id, role_id, status, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    207   M?                0    1891854    product_categories 
   TABLE DATA               z   COPY public.product_categories (id, uid, slug, name, description, account_id, status, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    233   ??                0    1891871    products 
   TABLE DATA               ?   COPY public.products (id, uid, slug, product_category_id, name, unity_id, bar_code, unit_price, provider_id, reorder_threshold, current_stock, description, account_id, status, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    235   ??      ?          0    1891687 	   providers 
   TABLE DATA               ?   COPY public.providers (id, uid, company_name, first_name, last_name, civility, address, country, city, phone, street, po_box, zip_code, description, status, account_id, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    217   \?                0    1891954    recharge_fidelity_cards 
   TABLE DATA               ?   COPY public.recharge_fidelity_cards (id, uid, fidelity_card_id, amount, status, account_id, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    241   ??      ?          0    1891541    roles 
   TABLE DATA               [   COPY public.roles (id, uid, name, description, status, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    199   N?      ?          0    1891523    schema_migrations 
   TABLE DATA               4   COPY public.schema_migrations (version) FROM stdin;
    public       stlouis_admin    false    196   F?                0    1891837    smtp_server_settings 
   TABLE DATA               ?   COPY public.smtp_server_settings (id, uid, host_name, user_name, user_password, domain, port, authentication, enable_starttls_auto, ssl, account_id, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    231   ێ                0    1891978    stock_entries 
   TABLE DATA               ?   COPY public.stock_entries (id, uid, product_id, reason, quantity, unity_id, description, status, account_id, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    243   ??                0    1892008    stock_exits 
   TABLE DATA               ?   COPY public.stock_exits (id, uid, product_id, reason, quantity, unity_id, description, status, account_id, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    245   ?                0    1891761    tables 
   TABLE DATA               [   COPY public.tables (id, uid, name, status, account_id, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    225   2?                0    1899218    tenants 
   TABLE DATA               ?   COPY public.tenants (id, uid, organization_name, address, phone, country, city, email, website, subdomain, status, account_id, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    249   ??                0    1891744    unities 
   TABLE DATA               v   COPY public.unities (id, uid, name, unity_symbol, decription, status, account_id, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    223   Ǐ      ?          0    1891659    users 
   TABLE DATA               d   COPY public.users (id, uid, first_name, last_name, sex, status, created_at, updated_at) FROM stdin;
    public       stlouis_admin    false    213   P?      H           0    0    accounts_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.accounts_id_seq', 5, true);
            public       stlouis_admin    false    210            I           0    0 !   active_storage_attachments_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 1, false);
            public       stlouis_admin    false    202            J           0    0    active_storage_blobs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 1, false);
            public       stlouis_admin    false    200            K           0    0    activity_logs_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.activity_logs_id_seq', 1, false);
            public       stlouis_admin    false    252            L           0    0    api_keys_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.api_keys_id_seq', 9, true);
            public       stlouis_admin    false    246            M           0    0    customer_fidelity_cards_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.customer_fidelity_cards_id_seq', 1, true);
            public       stlouis_admin    false    238            N           0    0    customers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customers_id_seq', 2, true);
            public       stlouis_admin    false    214            O           0    0    features_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.features_id_seq', 2, true);
            public       stlouis_admin    false    204            P           0    0    fidelity_cards_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.fidelity_cards_id_seq', 1, true);
            public       stlouis_admin    false    236            Q           0    0    food_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.food_categories_id_seq', 1, true);
            public       stlouis_admin    false    218            R           0    0    foods_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.foods_id_seq', 2, true);
            public       stlouis_admin    false    220            S           0    0    order_item_drinks_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.order_item_drinks_id_seq', 1, false);
            public       stlouis_admin    false    250            T           0    0    order_items_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.order_items_id_seq', 12, true);
            public       stlouis_admin    false    228            U           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 11, true);
            public       stlouis_admin    false    226            V           0    0    permission_items_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.permission_items_id_seq', 4, true);
            public       stlouis_admin    false    208            W           0    0    permissions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.permissions_id_seq', 1, true);
            public       stlouis_admin    false    206            X           0    0    product_categories_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.product_categories_id_seq', 4, true);
            public       stlouis_admin    false    232            Y           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 1, false);
            public       stlouis_admin    false    234            Z           0    0    providers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.providers_id_seq', 1, true);
            public       stlouis_admin    false    216            [           0    0    recharge_fidelity_cards_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.recharge_fidelity_cards_id_seq', 3, true);
            public       stlouis_admin    false    240            \           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 8, true);
            public       stlouis_admin    false    198            ]           0    0    smtp_server_settings_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.smtp_server_settings_id_seq', 1, false);
            public       stlouis_admin    false    230            ^           0    0    stock_entries_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.stock_entries_id_seq', 1, false);
            public       stlouis_admin    false    242            _           0    0    stock_exits_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.stock_exits_id_seq', 1, false);
            public       stlouis_admin    false    244            `           0    0    tables_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tables_id_seq', 3, true);
            public       stlouis_admin    false    224            a           0    0    tenants_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tenants_id_seq', 1, false);
            public       stlouis_admin    false    248            b           0    0    unities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.unities_id_seq', 3, true);
            public       stlouis_admin    false    222            c           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
            public       stlouis_admin    false    212            ?           2606    1891645    accounts accounts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_pkey;
       public         stlouis_admin    false    211            ?           2606    1891572 :   active_storage_attachments active_storage_attachments_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT active_storage_attachments_pkey;
       public         stlouis_admin    false    203            ?           2606    1891560 .   active_storage_blobs active_storage_blobs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.active_storage_blobs DROP CONSTRAINT active_storage_blobs_pkey;
       public         stlouis_admin    false    201            H           2606    1907418     activity_logs activity_logs_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.activity_logs
    ADD CONSTRAINT activity_logs_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.activity_logs DROP CONSTRAINT activity_logs_pkey;
       public         stlouis_admin    false    253            >           2606    1899209    api_keys api_keys_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT api_keys_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.api_keys DROP CONSTRAINT api_keys_pkey;
       public         stlouis_admin    false    247            ?           2606    1891538 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public         stlouis_admin    false    197            +           2606    1891933 4   customer_fidelity_cards customer_fidelity_cards_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.customer_fidelity_cards
    ADD CONSTRAINT customer_fidelity_cards_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.customer_fidelity_cards DROP CONSTRAINT customer_fidelity_cards_pkey;
       public         stlouis_admin    false    239            ?           2606    1891678    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public         stlouis_admin    false    215            ?           2606    1891590    features features_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.features DROP CONSTRAINT features_pkey;
       public         stlouis_admin    false    205            (           2606    1891916 "   fidelity_cards fidelity_cards_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.fidelity_cards
    ADD CONSTRAINT fidelity_cards_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.fidelity_cards DROP CONSTRAINT fidelity_cards_pkey;
       public         stlouis_admin    false    237                       2606    1891712 $   food_categories food_categories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.food_categories
    ADD CONSTRAINT food_categories_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.food_categories DROP CONSTRAINT food_categories_pkey;
       public         stlouis_admin    false    219                       2606    1891729    foods foods_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.foods
    ADD CONSTRAINT foods_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.foods DROP CONSTRAINT foods_pkey;
       public         stlouis_admin    false    221            F           2606    1899257 (   order_item_drinks order_item_drinks_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.order_item_drinks
    ADD CONSTRAINT order_item_drinks_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.order_item_drinks DROP CONSTRAINT order_item_drinks_pkey;
       public         stlouis_admin    false    251                       2606    1891822    order_items order_items_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_pkey;
       public         stlouis_admin    false    229                       2606    1891790    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public         stlouis_admin    false    227            ?           2606    1891624 &   permission_items permission_items_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.permission_items
    ADD CONSTRAINT permission_items_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.permission_items DROP CONSTRAINT permission_items_pkey;
       public         stlouis_admin    false    209            ?           2606    1891601    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         stlouis_admin    false    207                        2606    1891862 *   product_categories product_categories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.product_categories DROP CONSTRAINT product_categories_pkey;
       public         stlouis_admin    false    233            &           2606    1891880    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public         stlouis_admin    false    235                       2606    1891695    providers providers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.providers
    ADD CONSTRAINT providers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.providers DROP CONSTRAINT providers_pkey;
       public         stlouis_admin    false    217            2           2606    1891963 4   recharge_fidelity_cards recharge_fidelity_cards_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.recharge_fidelity_cards
    ADD CONSTRAINT recharge_fidelity_cards_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.recharge_fidelity_cards DROP CONSTRAINT recharge_fidelity_cards_pkey;
       public         stlouis_admin    false    241            ?           2606    1891549    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         stlouis_admin    false    199            ?           2606    1891530 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public         stlouis_admin    false    196                       2606    1891845 .   smtp_server_settings smtp_server_settings_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.smtp_server_settings
    ADD CONSTRAINT smtp_server_settings_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.smtp_server_settings DROP CONSTRAINT smtp_server_settings_pkey;
       public         stlouis_admin    false    231            7           2606    1891987     stock_entries stock_entries_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.stock_entries
    ADD CONSTRAINT stock_entries_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.stock_entries DROP CONSTRAINT stock_entries_pkey;
       public         stlouis_admin    false    243            <           2606    1892017    stock_exits stock_exits_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.stock_exits
    ADD CONSTRAINT stock_exits_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.stock_exits DROP CONSTRAINT stock_exits_pkey;
       public         stlouis_admin    false    245                       2606    1891769    tables tables_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tables
    ADD CONSTRAINT tables_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tables DROP CONSTRAINT tables_pkey;
       public         stlouis_admin    false    225            B           2606    1899226    tenants tenants_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tenants
    ADD CONSTRAINT tenants_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tenants DROP CONSTRAINT tenants_pkey;
       public         stlouis_admin    false    249                       2606    1891752    unities unities_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.unities
    ADD CONSTRAINT unities_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.unities DROP CONSTRAINT unities_pkey;
       public         stlouis_admin    false    223            ?           2606    1891667    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         stlouis_admin    false    213            ?           1259    1891652 5   index_accounts_on_accountable_type_and_accountable_id    INDEX     ?   CREATE INDEX index_accounts_on_accountable_type_and_accountable_id ON public.accounts USING btree (accountable_type, accountable_id);
 I   DROP INDEX public.index_accounts_on_accountable_type_and_accountable_id;
       public         stlouis_admin    false    211    211            ?           1259    1891655 $   index_accounts_on_confirmation_token    INDEX     n   CREATE UNIQUE INDEX index_accounts_on_confirmation_token ON public.accounts USING btree (confirmation_token);
 8   DROP INDEX public.index_accounts_on_confirmation_token;
       public         stlouis_admin    false    211            ?           1259    1891653    index_accounts_on_email    INDEX     T   CREATE UNIQUE INDEX index_accounts_on_email ON public.accounts USING btree (email);
 +   DROP INDEX public.index_accounts_on_email;
       public         stlouis_admin    false    211            ?           1259    1891654 &   index_accounts_on_reset_password_token    INDEX     r   CREATE UNIQUE INDEX index_accounts_on_reset_password_token ON public.accounts USING btree (reset_password_token);
 :   DROP INDEX public.index_accounts_on_reset_password_token;
       public         stlouis_admin    false    211            ?           1259    1891651    index_accounts_on_role_id    INDEX     Q   CREATE INDEX index_accounts_on_role_id ON public.accounts USING btree (role_id);
 -   DROP INDEX public.index_accounts_on_role_id;
       public         stlouis_admin    false    211            ?           1259    1891656    index_accounts_on_unlock_token    INDEX     b   CREATE UNIQUE INDEX index_accounts_on_unlock_token ON public.accounts USING btree (unlock_token);
 2   DROP INDEX public.index_accounts_on_unlock_token;
       public         stlouis_admin    false    211            ?           1259    1891578 +   index_active_storage_attachments_on_blob_id    INDEX     u   CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_on_blob_id;
       public         stlouis_admin    false    203            ?           1259    1891579 +   index_active_storage_attachments_uniqueness    INDEX     ?   CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_uniqueness;
       public         stlouis_admin    false    203    203    203    203            ?           1259    1891561 !   index_active_storage_blobs_on_key    INDEX     h   CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);
 5   DROP INDEX public.index_active_storage_blobs_on_key;
       public         stlouis_admin    false    201            ?           1259    1899215    index_api_keys_on_account_id    INDEX     W   CREATE INDEX index_api_keys_on_account_id ON public.api_keys USING btree (account_id);
 0   DROP INDEX public.index_api_keys_on_account_id;
       public         stlouis_admin    false    247            ,           1259    1891951 +   index_customer_fidelity_cards_on_account_id    INDEX     u   CREATE INDEX index_customer_fidelity_cards_on_account_id ON public.customer_fidelity_cards USING btree (account_id);
 ?   DROP INDEX public.index_customer_fidelity_cards_on_account_id;
       public         stlouis_admin    false    239            -           1259    1891949 ,   index_customer_fidelity_cards_on_customer_id    INDEX     w   CREATE INDEX index_customer_fidelity_cards_on_customer_id ON public.customer_fidelity_cards USING btree (customer_id);
 @   DROP INDEX public.index_customer_fidelity_cards_on_customer_id;
       public         stlouis_admin    false    239            .           1259    1891950 1   index_customer_fidelity_cards_on_fidelity_card_id    INDEX     ?   CREATE INDEX index_customer_fidelity_cards_on_fidelity_card_id ON public.customer_fidelity_cards USING btree (fidelity_card_id);
 E   DROP INDEX public.index_customer_fidelity_cards_on_fidelity_card_id;
       public         stlouis_admin    false    239                        1259    1891684    index_customers_on_account_id    INDEX     Y   CREATE INDEX index_customers_on_account_id ON public.customers USING btree (account_id);
 1   DROP INDEX public.index_customers_on_account_id;
       public         stlouis_admin    false    215            )           1259    1891922 "   index_fidelity_cards_on_account_id    INDEX     c   CREATE INDEX index_fidelity_cards_on_account_id ON public.fidelity_cards USING btree (account_id);
 6   DROP INDEX public.index_fidelity_cards_on_account_id;
       public         stlouis_admin    false    237                       1259    1891718 #   index_food_categories_on_account_id    INDEX     e   CREATE INDEX index_food_categories_on_account_id ON public.food_categories USING btree (account_id);
 7   DROP INDEX public.index_food_categories_on_account_id;
       public         stlouis_admin    false    219            	           1259    1891741    index_foods_on_account_id    INDEX     Q   CREATE INDEX index_foods_on_account_id ON public.foods USING btree (account_id);
 -   DROP INDEX public.index_foods_on_account_id;
       public         stlouis_admin    false    221            
           1259    1891740    index_foods_on_food_category_id    INDEX     ]   CREATE INDEX index_foods_on_food_category_id ON public.foods USING btree (food_category_id);
 3   DROP INDEX public.index_foods_on_food_category_id;
       public         stlouis_admin    false    221            C           1259    1899268 #   index_order_item_drinks_on_order_id    INDEX     e   CREATE INDEX index_order_item_drinks_on_order_id ON public.order_item_drinks USING btree (order_id);
 7   DROP INDEX public.index_order_item_drinks_on_order_id;
       public         stlouis_admin    false    251            D           1259    1899269 %   index_order_item_drinks_on_product_id    INDEX     i   CREATE INDEX index_order_item_drinks_on_product_id ON public.order_item_drinks USING btree (product_id);
 9   DROP INDEX public.index_order_item_drinks_on_product_id;
       public         stlouis_admin    false    251                       1259    1891834    index_order_items_on_food_id    INDEX     W   CREATE INDEX index_order_items_on_food_id ON public.order_items USING btree (food_id);
 0   DROP INDEX public.index_order_items_on_food_id;
       public         stlouis_admin    false    229                       1259    1891833    index_order_items_on_order_id    INDEX     Y   CREATE INDEX index_order_items_on_order_id ON public.order_items USING btree (order_id);
 1   DROP INDEX public.index_order_items_on_order_id;
       public         stlouis_admin    false    229                       1259    1899233    index_order_items_on_product_id    INDEX     ]   CREATE INDEX index_order_items_on_product_id ON public.order_items USING btree (product_id);
 3   DROP INDEX public.index_order_items_on_product_id;
       public         stlouis_admin    false    229                       1259    1891808    index_orders_on_account_id    INDEX     S   CREATE INDEX index_orders_on_account_id ON public.orders USING btree (account_id);
 .   DROP INDEX public.index_orders_on_account_id;
       public         stlouis_admin    false    227                       1259    1891806    index_orders_on_customer_id    INDEX     U   CREATE INDEX index_orders_on_customer_id ON public.orders USING btree (customer_id);
 /   DROP INDEX public.index_orders_on_customer_id;
       public         stlouis_admin    false    227                       1259    1891807    index_orders_on_table_id    INDEX     O   CREATE INDEX index_orders_on_table_id ON public.orders USING btree (table_id);
 ,   DROP INDEX public.index_orders_on_table_id;
       public         stlouis_admin    false    227            ?           1259    1891630 '   index_permission_items_on_permission_id    INDEX     m   CREATE INDEX index_permission_items_on_permission_id ON public.permission_items USING btree (permission_id);
 ;   DROP INDEX public.index_permission_items_on_permission_id;
       public         stlouis_admin    false    209            ?           1259    1891612    index_permissions_on_feature_id    INDEX     ]   CREATE INDEX index_permissions_on_feature_id ON public.permissions USING btree (feature_id);
 3   DROP INDEX public.index_permissions_on_feature_id;
       public         stlouis_admin    false    207            ?           1259    1891613    index_permissions_on_role_id    INDEX     W   CREATE INDEX index_permissions_on_role_id ON public.permissions USING btree (role_id);
 0   DROP INDEX public.index_permissions_on_role_id;
       public         stlouis_admin    false    207                       1259    1891868 &   index_product_categories_on_account_id    INDEX     k   CREATE INDEX index_product_categories_on_account_id ON public.product_categories USING btree (account_id);
 :   DROP INDEX public.index_product_categories_on_account_id;
       public         stlouis_admin    false    233            !           1259    1891904    index_products_on_account_id    INDEX     W   CREATE INDEX index_products_on_account_id ON public.products USING btree (account_id);
 0   DROP INDEX public.index_products_on_account_id;
       public         stlouis_admin    false    235            "           1259    1891901 %   index_products_on_product_category_id    INDEX     i   CREATE INDEX index_products_on_product_category_id ON public.products USING btree (product_category_id);
 9   DROP INDEX public.index_products_on_product_category_id;
       public         stlouis_admin    false    235            #           1259    1891903    index_products_on_provider_id    INDEX     Y   CREATE INDEX index_products_on_provider_id ON public.products USING btree (provider_id);
 1   DROP INDEX public.index_products_on_provider_id;
       public         stlouis_admin    false    235            $           1259    1891902    index_products_on_unity_id    INDEX     S   CREATE INDEX index_products_on_unity_id ON public.products USING btree (unity_id);
 .   DROP INDEX public.index_products_on_unity_id;
       public         stlouis_admin    false    235                       1259    1891701    index_providers_on_account_id    INDEX     Y   CREATE INDEX index_providers_on_account_id ON public.providers USING btree (account_id);
 1   DROP INDEX public.index_providers_on_account_id;
       public         stlouis_admin    false    217            /           1259    1891975 +   index_recharge_fidelity_cards_on_account_id    INDEX     u   CREATE INDEX index_recharge_fidelity_cards_on_account_id ON public.recharge_fidelity_cards USING btree (account_id);
 ?   DROP INDEX public.index_recharge_fidelity_cards_on_account_id;
       public         stlouis_admin    false    241            0           1259    1891974 1   index_recharge_fidelity_cards_on_fidelity_card_id    INDEX     ?   CREATE INDEX index_recharge_fidelity_cards_on_fidelity_card_id ON public.recharge_fidelity_cards USING btree (fidelity_card_id);
 E   DROP INDEX public.index_recharge_fidelity_cards_on_fidelity_card_id;
       public         stlouis_admin    false    241                       1259    1891851 (   index_smtp_server_settings_on_account_id    INDEX     o   CREATE INDEX index_smtp_server_settings_on_account_id ON public.smtp_server_settings USING btree (account_id);
 <   DROP INDEX public.index_smtp_server_settings_on_account_id;
       public         stlouis_admin    false    231            3           1259    1892005 !   index_stock_entries_on_account_id    INDEX     a   CREATE INDEX index_stock_entries_on_account_id ON public.stock_entries USING btree (account_id);
 5   DROP INDEX public.index_stock_entries_on_account_id;
       public         stlouis_admin    false    243            4           1259    1892003 !   index_stock_entries_on_product_id    INDEX     a   CREATE INDEX index_stock_entries_on_product_id ON public.stock_entries USING btree (product_id);
 5   DROP INDEX public.index_stock_entries_on_product_id;
       public         stlouis_admin    false    243            5           1259    1892004    index_stock_entries_on_unity_id    INDEX     ]   CREATE INDEX index_stock_entries_on_unity_id ON public.stock_entries USING btree (unity_id);
 3   DROP INDEX public.index_stock_entries_on_unity_id;
       public         stlouis_admin    false    243            8           1259    1892035    index_stock_exits_on_account_id    INDEX     ]   CREATE INDEX index_stock_exits_on_account_id ON public.stock_exits USING btree (account_id);
 3   DROP INDEX public.index_stock_exits_on_account_id;
       public         stlouis_admin    false    245            9           1259    1892033    index_stock_exits_on_product_id    INDEX     ]   CREATE INDEX index_stock_exits_on_product_id ON public.stock_exits USING btree (product_id);
 3   DROP INDEX public.index_stock_exits_on_product_id;
       public         stlouis_admin    false    245            :           1259    1892034    index_stock_exits_on_unity_id    INDEX     Y   CREATE INDEX index_stock_exits_on_unity_id ON public.stock_exits USING btree (unity_id);
 1   DROP INDEX public.index_stock_exits_on_unity_id;
       public         stlouis_admin    false    245                       1259    1891775    index_tables_on_account_id    INDEX     S   CREATE INDEX index_tables_on_account_id ON public.tables USING btree (account_id);
 .   DROP INDEX public.index_tables_on_account_id;
       public         stlouis_admin    false    225            @           1259    1899232    index_tenants_on_account_id    INDEX     U   CREATE INDEX index_tenants_on_account_id ON public.tenants USING btree (account_id);
 /   DROP INDEX public.index_tenants_on_account_id;
       public         stlouis_admin    false    249                       1259    1891758    index_unities_on_account_id    INDEX     U   CREATE INDEX index_unities_on_account_id ON public.unities USING btree (account_id);
 /   DROP INDEX public.index_unities_on_account_id;
       public         stlouis_admin    false    223            O           2606    1891696    providers fk_rails_0e8521b583    FK CONSTRAINT     ?   ALTER TABLE ONLY public.providers
    ADD CONSTRAINT fk_rails_0e8521b583 FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 G   ALTER TABLE ONLY public.providers DROP CONSTRAINT fk_rails_0e8521b583;
       public       stlouis_admin    false    3061    211    217            Y           2606    1891828    order_items fk_rails_0eb6a555b3    FK CONSTRAINT     ~   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT fk_rails_0eb6a555b3 FOREIGN KEY (food_id) REFERENCES public.foods(id);
 I   ALTER TABLE ONLY public.order_items DROP CONSTRAINT fk_rails_0eb6a555b3;
       public       stlouis_admin    false    221    229    3080            T           2606    1891770    tables fk_rails_13ab025330    FK CONSTRAINT        ALTER TABLE ONLY public.tables
    ADD CONSTRAINT fk_rails_13ab025330 FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 D   ALTER TABLE ONLY public.tables DROP CONSTRAINT fk_rails_13ab025330;
       public       stlouis_admin    false    3061    211    225            W           2606    1891801    orders fk_rails_144e25bef6    FK CONSTRAINT        ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_144e25bef6 FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_rails_144e25bef6;
       public       stlouis_admin    false    211    227    3061            J           2606    1891602    permissions fk_rails_2078943d09    FK CONSTRAINT     ?   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT fk_rails_2078943d09 FOREIGN KEY (feature_id) REFERENCES public.features(id);
 I   ALTER TABLE ONLY public.permissions DROP CONSTRAINT fk_rails_2078943d09;
       public       stlouis_admin    false    3052    205    207            p           2606    1899263 %   order_item_drinks fk_rails_24322e3efe    FK CONSTRAINT     ?   ALTER TABLE ONLY public.order_item_drinks
    ADD CONSTRAINT fk_rails_24322e3efe FOREIGN KEY (product_id) REFERENCES public.products(id);
 O   ALTER TABLE ONLY public.order_item_drinks DROP CONSTRAINT fk_rails_24322e3efe;
       public       stlouis_admin    false    3110    235    251            o           2606    1899258 %   order_item_drinks fk_rails_26fa03a653    FK CONSTRAINT     ?   ALTER TABLE ONLY public.order_item_drinks
    ADD CONSTRAINT fk_rails_26fa03a653 FOREIGN KEY (order_id) REFERENCES public.orders(id);
 O   ALTER TABLE ONLY public.order_item_drinks DROP CONSTRAINT fk_rails_26fa03a653;
       public       stlouis_admin    false    251    227    3093            n           2606    1899227    tenants fk_rails_2e0b862e40    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tenants
    ADD CONSTRAINT fk_rails_2e0b862e40 FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 E   ALTER TABLE ONLY public.tenants DROP CONSTRAINT fk_rails_2e0b862e40;
       public       stlouis_admin    false    3061    211    249            M           2606    1891646    accounts fk_rails_30e3719454    FK CONSTRAINT     {   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT fk_rails_30e3719454 FOREIGN KEY (role_id) REFERENCES public.roles(id);
 F   ALTER TABLE ONLY public.accounts DROP CONSTRAINT fk_rails_30e3719454;
       public       stlouis_admin    false    199    3043    211            b           2606    1891934 +   customer_fidelity_cards fk_rails_34d6674a97    FK CONSTRAINT     ?   ALTER TABLE ONLY public.customer_fidelity_cards
    ADD CONSTRAINT fk_rails_34d6674a97 FOREIGN KEY (customer_id) REFERENCES public.customers(id);
 U   ALTER TABLE ONLY public.customer_fidelity_cards DROP CONSTRAINT fk_rails_34d6674a97;
       public       stlouis_admin    false    239    215    3071            c           2606    1891939 +   customer_fidelity_cards fk_rails_3587f34106    FK CONSTRAINT     ?   ALTER TABLE ONLY public.customer_fidelity_cards
    ADD CONSTRAINT fk_rails_3587f34106 FOREIGN KEY (fidelity_card_id) REFERENCES public.fidelity_cards(id);
 U   ALTER TABLE ONLY public.customer_fidelity_cards DROP CONSTRAINT fk_rails_3587f34106;
       public       stlouis_admin    false    3112    239    237            U           2606    1891791    orders fk_rails_3dad120da9    FK CONSTRAINT     ?   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_3dad120da9 FOREIGN KEY (customer_id) REFERENCES public.customers(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_rails_3dad120da9;
       public       stlouis_admin    false    215    3071    227            f           2606    1891969 +   recharge_fidelity_cards fk_rails_3e614843f8    FK CONSTRAINT     ?   ALTER TABLE ONLY public.recharge_fidelity_cards
    ADD CONSTRAINT fk_rails_3e614843f8 FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 U   ALTER TABLE ONLY public.recharge_fidelity_cards DROP CONSTRAINT fk_rails_3e614843f8;
       public       stlouis_admin    false    241    3061    211            i           2606    1891998 !   stock_entries fk_rails_414dea2c08    FK CONSTRAINT     ?   ALTER TABLE ONLY public.stock_entries
    ADD CONSTRAINT fk_rails_414dea2c08 FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 K   ALTER TABLE ONLY public.stock_entries DROP CONSTRAINT fk_rails_414dea2c08;
       public       stlouis_admin    false    3061    243    211            _           2606    1891891    products fk_rails_419606e347    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_419606e347 FOREIGN KEY (provider_id) REFERENCES public.providers(id);
 F   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_rails_419606e347;
       public       stlouis_admin    false    3075    217    235            S           2606    1891753    unities fk_rails_41a5dd094c    FK CONSTRAINT     ?   ALTER TABLE ONLY public.unities
    ADD CONSTRAINT fk_rails_41a5dd094c FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 E   ALTER TABLE ONLY public.unities DROP CONSTRAINT fk_rails_41a5dd094c;
       public       stlouis_admin    false    223    3061    211            \           2606    1891863 &   product_categories fk_rails_457aab887d    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT fk_rails_457aab887d FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 P   ALTER TABLE ONLY public.product_categories DROP CONSTRAINT fk_rails_457aab887d;
       public       stlouis_admin    false    211    3061    233            P           2606    1891713 #   food_categories fk_rails_553fe2b992    FK CONSTRAINT     ?   ALTER TABLE ONLY public.food_categories
    ADD CONSTRAINT fk_rails_553fe2b992 FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 M   ALTER TABLE ONLY public.food_categories DROP CONSTRAINT fk_rails_553fe2b992;
       public       stlouis_admin    false    211    3061    219            e           2606    1891964 +   recharge_fidelity_cards fk_rails_5e25e60732    FK CONSTRAINT     ?   ALTER TABLE ONLY public.recharge_fidelity_cards
    ADD CONSTRAINT fk_rails_5e25e60732 FOREIGN KEY (fidelity_card_id) REFERENCES public.fidelity_cards(id);
 U   ALTER TABLE ONLY public.recharge_fidelity_cards DROP CONSTRAINT fk_rails_5e25e60732;
       public       stlouis_admin    false    3112    241    237            g           2606    1891988 !   stock_entries fk_rails_610e7df26e    FK CONSTRAINT     ?   ALTER TABLE ONLY public.stock_entries
    ADD CONSTRAINT fk_rails_610e7df26e FOREIGN KEY (product_id) REFERENCES public.products(id);
 K   ALTER TABLE ONLY public.stock_entries DROP CONSTRAINT fk_rails_610e7df26e;
       public       stlouis_admin    false    243    3110    235            `           2606    1891896    products fk_rails_6dc06b37ef    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_6dc06b37ef FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 F   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_rails_6dc06b37ef;
       public       stlouis_admin    false    235    211    3061            L           2606    1891625 $   permission_items fk_rails_785a0b5a6e    FK CONSTRAINT     ?   ALTER TABLE ONLY public.permission_items
    ADD CONSTRAINT fk_rails_785a0b5a6e FOREIGN KEY (permission_id) REFERENCES public.permissions(id);
 N   ALTER TABLE ONLY public.permission_items DROP CONSTRAINT fk_rails_785a0b5a6e;
       public       stlouis_admin    false    3056    209    207            K           2606    1891607    permissions fk_rails_93c739e1a2    FK CONSTRAINT     ~   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT fk_rails_93c739e1a2 FOREIGN KEY (role_id) REFERENCES public.roles(id);
 I   ALTER TABLE ONLY public.permissions DROP CONSTRAINT fk_rails_93c739e1a2;
       public       stlouis_admin    false    207    3043    199            Q           2606    1891730    foods fk_rails_a28abb337f    FK CONSTRAINT     ?   ALTER TABLE ONLY public.foods
    ADD CONSTRAINT fk_rails_a28abb337f FOREIGN KEY (food_category_id) REFERENCES public.food_categories(id);
 C   ALTER TABLE ONLY public.foods DROP CONSTRAINT fk_rails_a28abb337f;
       public       stlouis_admin    false    219    221    3077            V           2606    1891796    orders fk_rails_aaccb1d5d0    FK CONSTRAINT     {   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_aaccb1d5d0 FOREIGN KEY (table_id) REFERENCES public.tables(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_rails_aaccb1d5d0;
       public       stlouis_admin    false    227    225    3088            [           2606    1891846 (   smtp_server_settings fk_rails_b59ed991f4    FK CONSTRAINT     ?   ALTER TABLE ONLY public.smtp_server_settings
    ADD CONSTRAINT fk_rails_b59ed991f4 FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 R   ALTER TABLE ONLY public.smtp_server_settings DROP CONSTRAINT fk_rails_b59ed991f4;
       public       stlouis_admin    false    231    3061    211            h           2606    1891993 !   stock_entries fk_rails_b6090f6da0    FK CONSTRAINT     ?   ALTER TABLE ONLY public.stock_entries
    ADD CONSTRAINT fk_rails_b6090f6da0 FOREIGN KEY (unity_id) REFERENCES public.unities(id);
 K   ALTER TABLE ONLY public.stock_entries DROP CONSTRAINT fk_rails_b6090f6da0;
       public       stlouis_admin    false    243    3085    223            I           2606    1891573 .   active_storage_attachments fk_rails_c3b3935057    FK CONSTRAINT     ?   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);
 X   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT fk_rails_c3b3935057;
       public       stlouis_admin    false    203    201    3045            j           2606    1892018    stock_exits fk_rails_c8a491190d    FK CONSTRAINT     ?   ALTER TABLE ONLY public.stock_exits
    ADD CONSTRAINT fk_rails_c8a491190d FOREIGN KEY (product_id) REFERENCES public.products(id);
 I   ALTER TABLE ONLY public.stock_exits DROP CONSTRAINT fk_rails_c8a491190d;
       public       stlouis_admin    false    245    235    3110            d           2606    1891944 +   customer_fidelity_cards fk_rails_de2838a08f    FK CONSTRAINT     ?   ALTER TABLE ONLY public.customer_fidelity_cards
    ADD CONSTRAINT fk_rails_de2838a08f FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 U   ALTER TABLE ONLY public.customer_fidelity_cards DROP CONSTRAINT fk_rails_de2838a08f;
       public       stlouis_admin    false    211    3061    239            R           2606    1891735    foods fk_rails_de6aa6c240    FK CONSTRAINT     ~   ALTER TABLE ONLY public.foods
    ADD CONSTRAINT fk_rails_de6aa6c240 FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 C   ALTER TABLE ONLY public.foods DROP CONSTRAINT fk_rails_de6aa6c240;
       public       stlouis_admin    false    221    3061    211            X           2606    1891823    order_items fk_rails_e3cb28f071    FK CONSTRAINT     ?   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT fk_rails_e3cb28f071 FOREIGN KEY (order_id) REFERENCES public.orders(id);
 I   ALTER TABLE ONLY public.order_items DROP CONSTRAINT fk_rails_e3cb28f071;
       public       stlouis_admin    false    229    227    3093            l           2606    1892028    stock_exits fk_rails_e4855645f2    FK CONSTRAINT     ?   ALTER TABLE ONLY public.stock_exits
    ADD CONSTRAINT fk_rails_e4855645f2 FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 I   ALTER TABLE ONLY public.stock_exits DROP CONSTRAINT fk_rails_e4855645f2;
       public       stlouis_admin    false    211    245    3061            N           2606    1891679    customers fk_rails_ed7ccfecee    FK CONSTRAINT     ?   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT fk_rails_ed7ccfecee FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 G   ALTER TABLE ONLY public.customers DROP CONSTRAINT fk_rails_ed7ccfecee;
       public       stlouis_admin    false    3061    211    215            ]           2606    1891881    products fk_rails_efe167855e    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_efe167855e FOREIGN KEY (product_category_id) REFERENCES public.product_categories(id);
 F   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_rails_efe167855e;
       public       stlouis_admin    false    3104    233    235            Z           2606    1899234    order_items fk_rails_f1a29ddd47    FK CONSTRAINT     ?   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT fk_rails_f1a29ddd47 FOREIGN KEY (product_id) REFERENCES public.products(id);
 I   ALTER TABLE ONLY public.order_items DROP CONSTRAINT fk_rails_f1a29ddd47;
       public       stlouis_admin    false    229    235    3110            m           2606    1899210    api_keys fk_rails_f4470e16d5    FK CONSTRAINT     ?   ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT fk_rails_f4470e16d5 FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 F   ALTER TABLE ONLY public.api_keys DROP CONSTRAINT fk_rails_f4470e16d5;
       public       stlouis_admin    false    247    211    3061            ^           2606    1891886    products fk_rails_f464998a1c    FK CONSTRAINT     ~   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_f464998a1c FOREIGN KEY (unity_id) REFERENCES public.unities(id);
 F   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_rails_f464998a1c;
       public       stlouis_admin    false    223    3085    235            k           2606    1892023    stock_exits fk_rails_fb46c16008    FK CONSTRAINT     ?   ALTER TABLE ONLY public.stock_exits
    ADD CONSTRAINT fk_rails_fb46c16008 FOREIGN KEY (unity_id) REFERENCES public.unities(id);
 I   ALTER TABLE ONLY public.stock_exits DROP CONSTRAINT fk_rails_fb46c16008;
       public       stlouis_admin    false    245    3085    223            a           2606    1891917 "   fidelity_cards fk_rails_fe096a1452    FK CONSTRAINT     ?   ALTER TABLE ONLY public.fidelity_cards
    ADD CONSTRAINT fk_rails_fe096a1452 FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 L   ALTER TABLE ONLY public.fidelity_cards DROP CONSTRAINT fk_rails_fe096a1452;
       public       stlouis_admin    false    237    211    3061            ?   I  x???Mo?@???+<xu??/?S??UPjmk? RD>Q??o?Z??xh??dw?d?<??r?)???RQ???,??4?$8???????????J?*????Gu܉?G????>??q?V?VW??b?????%~????f@L????????΄`Bjj *@4?5?Ŕ2???D)?+Er?u?߱??p?^;?T???EM????d??P?]????in???.????n?3?%?q"?B?T?	?`U??d.QTL?=7,?????q_[u?V?鳲??·ż?????`f??kŁ???Dͮ?͸???c?VL?}m???'H??O????      ?      x?????? ? ?      ?      x?????? ? ?      #      x?????? ? ?         ?   x?}?[n!E??Ud???6??
?3??%?F?:J:H?G??E??????1??h?1n`?
gd/???Z?Z?3??J?P?J?	
??+?(?B??-??Y???
?
???????R?V(V??A?@?
?J?"خI?M;???٨铇 ??:>????'ˎ???(;??????bc??F????ѽ??sp??
H??E??t???~?t?)?o?u??      ?   ?   x?K?+?,???M?+?LI-K??/ ????tu???LM?L???-MM?Hq??qqq ??`         G   x?3?4?02670331?4?4?t??K?,?=?2?1202?50?52P04?2??26?302706?#????? x|      ?   x   x?e?;
?0 ?Y>E.#??d?њ?3$
9E??to?m??[Ch?B~?r???)۳?:EHm?M`???
?@K?@N-????8??/F?if?ȭή?w???1^G?읺?R??v!      ?   t   x?}?1
?@F?z????̿qt?Bz??وn!D??z??Dx?O???C?Č^e}????3?c??s/4?? @%Z!?Ժ?;i?C? y?M$=?m??%ѐ???}?????c`?/,?)z         G   x?3??4?4473455??43650?tL.?,K?4?4202?50?5?T0??2??25?3?05?0?#????? pC         U   x?3?4601762??06?8??????r?S??-?????ϕ?3ƏӐ????H??P??L????????X???????W? ??         ?   x?}??
?0F盧?4ܟ$7?Vh(Y??n]D\?|?Zq??ǁ??!`4?F?	??m?T?S??Z اk?~?<n׮32HE??R!t9P?{?a??XCN???փ?Z]?#o?7?-;????"?(?\fuƘ'A?0!      !      x?????? ? ?         ?   x?}?ˍ!??(6?A??? &???????-?ĥ?(???pO????Rf~??K`????In?6Y.?8??{9Ue?x????8?OY/?ڰ????s???k?J?O/??x5kl?e??sBcN?Բ`??I<?~5ۄ????vBc.??????ܛ??VIT???,?SΩv#??_<ny5x?m??aP????뺮?Bc?      	     x???MjC!???"?̗???d?M??	?	?$?t?#??X????G???_?1;??ȑC? ?5??z;??xF????^?~ig???K?j!-??M4?\T???
?F?躗;????BR??"K?sQ?ѡ%C5?IKJ?h??X??Li.?>9fT?]??o??h???V??<,?â????~w?^???J???n??U?N??m?1N??[?C??9d?,y.??U51?,	??????ާ??}?????????9?WU?\T?:x??̌??      ?   ?   x?}?=?0@??>he??_?	? ?T??퉺7??>=W???????`?C?R&??ȍ}!]?fU7?A??B?I"?k??ۥg?!??F??R?J???6?,???LX??????w?m?c?.A'g$\gD???AN      ?   =   x?3?4?03226??F???1~?FFF???F?
??V?Vz&??x??b???? Py?         ?   x?}?=
?@??z?^ ???????f#??Z???K?Lʏ>???VKec?\???v?!???c;??T{?D%s?NB??U??"teN???I?&?B?w*d	?"?!+s?i?&Z????N???5???c?6Ւp1?s??pN??cB?            x?????? ? ?      ?   U   x?}?1? @ѹ=????B[ˆ?Q?????ɟ?=??F.???ޮ?????ʜ]E??~'??҅rMV??{ي????/?s         }   x??̻AE?خ?v????3)m??D HtE4ƒ!!??^????t/	? h??????q|?.?E???çy??߇???C?Tb5:??1?[???b?w?L????6??j?UE??X|h??ke8?      ?   ?   x???1jAEk??????H34!?[7?b 1ag?w?9r????2L??????lΦ?N?׼l}^??v{B";???!?C?=?X?P??Ԩjqx~?l???eZ?-??DI?	?MK?\??zm??Ւ? THc??^~????F?"9? a?ZI??sv8N??&?QKr?p?V?Y?Ncx<?E?z??A??GQS??v]Պ?1?!,?D?J?j?m;?_Gw|7??="?dݎ?      ?   ?   x?U?K!н??(?e??!??Xƍ/|f4˾??2????\>?PnHr_ӕi[9-o^?????]?!#?LmŸjY??@j4?[J??ca?h?p:oLF???U?>?f	???B???6???3??%?Q,            x?????? ? ?            x?????? ? ?            x?????? ? ?         h   x?}̱?0D?X????]YBvHD??_?9?????A?H?L??}
?Fn??g??hν??,?dT?X?? ?_???u?b???	ˆQ??o??T??W,O            x?????? ? ?         y   x???;?@k?\ +?v??(?H@?(s?s?:?^7z?53 ??A?i~\???\h??RQ?	:F?????h??ܼ#?b7??s?!?"ҾI??? .??et?#VBj? ?
3? ??4<      ?      x?????? ? ?     