PGDMP      "                }            postgres    17.3    17.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    5    postgres    DATABASE     n   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'tr-TR';
    DROP DATABASE postgres;
                     postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    4801            �            1259    24591    departments    TABLE     z   CREATE TABLE public.departments (
    departmentid integer NOT NULL,
    departmentname character varying(50) NOT NULL
);
    DROP TABLE public.departments;
       public         heap r       postgres    false            �            1259    24596 	   employees    TABLE     �   CREATE TABLE public.employees (
    employeeid integer NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    age integer,
    departmentid integer,
    salary numeric(10,2),
    joindate date
);
    DROP TABLE public.employees;
       public         heap r       postgres    false            �          0    24591    departments 
   TABLE DATA           C   COPY public.departments (departmentid, departmentname) FROM stdin;
    public               postgres    false    217   �       �          0    24596 	   employees 
   TABLE DATA           i   COPY public.employees (employeeid, firstname, lastname, age, departmentid, salary, joindate) FROM stdin;
    public               postgres    false    218   &       %           2606    24595    departments departments_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (departmentid);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public                 postgres    false    217            '           2606    24600    employees employees_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employeeid);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public                 postgres    false    218            (           2606    24601 %   employees employees_departmentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_departmentid_fkey FOREIGN KEY (departmentid) REFERENCES public.departments(departmentid);
 O   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_departmentid_fkey;
       public               postgres    false    217    4645    218            �   !   x�3���2���2�t��K�KN����� E6c      �   �   x�Mα
�@�z�_VvO�3�b*�4i9P�
����Ja���(���p�#R��LD8q¢�FU�"��_;d��hi���	�hr��\�S%cg������_�AC
/uaIY2��2�|�v����i�X7�(G�i�-1N�d�u�<�l�gBD��/i     