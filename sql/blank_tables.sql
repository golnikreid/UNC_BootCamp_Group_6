PGDMP     2    
                {           Wine_Quality_DB    12.14    12.14     
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24739    Wine_Quality_DB    DATABASE     �   CREATE DATABASE "Wine_Quality_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 !   DROP DATABASE "Wine_Quality_DB";
                postgres    false            �            1259    24754    wine    TABLE     �  CREATE TABLE public.wine (
    wine_id integer NOT NULL,
    wine_type_id integer NOT NULL,
    fixed_acidity numeric NOT NULL,
    volatile_acidity numeric NOT NULL,
    citric_acid numeric NOT NULL,
    residual_sugar numeric NOT NULL,
    chlorides numeric NOT NULL,
    free_sulfur_dioxide integer NOT NULL,
    total_sulfure_dioxide integer NOT NULL,
    density numeric NOT NULL,
    ph numeric NOT NULL,
    sulphates numeric NOT NULL,
    alcohol numeric NOT NULL,
    quality integer NOT NULL
);
    DROP TABLE public.wine;
       public         heap    postgres    false            �            1259    24762 	   wine_type    TABLE     o   CREATE TABLE public.wine_type (
    wine_type_id integer NOT NULL,
    wine_type character varying NOT NULL
);
    DROP TABLE public.wine_type;
       public         heap    postgres    false                      0    24754    wine 
   TABLE DATA           �   COPY public.wine (wine_id, wine_type_id, fixed_acidity, volatile_acidity, citric_acid, residual_sugar, chlorides, free_sulfur_dioxide, total_sulfure_dioxide, density, ph, sulphates, alcohol, quality) FROM stdin;
    public          postgres    false    202                    0    24762 	   wine_type 
   TABLE DATA           <   COPY public.wine_type (wine_type_id, wine_type) FROM stdin;
    public          postgres    false    203   ;       �
           2606    24761    wine pk_wine 
   CONSTRAINT     O   ALTER TABLE ONLY public.wine
    ADD CONSTRAINT pk_wine PRIMARY KEY (wine_id);
 6   ALTER TABLE ONLY public.wine DROP CONSTRAINT pk_wine;
       public            postgres    false    202            �
           2606    24769    wine_type pk_wine_type 
   CONSTRAINT     ^   ALTER TABLE ONLY public.wine_type
    ADD CONSTRAINT pk_wine_type PRIMARY KEY (wine_type_id);
 @   ALTER TABLE ONLY public.wine_type DROP CONSTRAINT pk_wine_type;
       public            postgres    false    203            �
           2606    24770    wine fk_wine_wine_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wine
    ADD CONSTRAINT fk_wine_wine_type_id FOREIGN KEY (wine_type_id) REFERENCES public.wine_type(wine_type_id);
 C   ALTER TABLE ONLY public.wine DROP CONSTRAINT fk_wine_wine_type_id;
       public          postgres    false    203    202    2694                  x������ � �            x������ � �     