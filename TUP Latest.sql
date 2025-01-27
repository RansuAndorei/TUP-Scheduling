PGDMP          '                y            tup_scheduling_db_new    13.2    13.2    !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            $           1262    59491    tup_scheduling_db_new    DATABASE     y   CREATE DATABASE tup_scheduling_db_new WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
 %   DROP DATABASE tup_scheduling_db_new;
                renegado    false            �            1259    59492    account_emailaddress    TABLE     �   CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         heap    renegado    false            �            1259    59495    account_emailaddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public          renegado    false    200            %           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
          public          renegado    false    201            �            1259    59497    account_emailconfirmation    TABLE     �   CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         heap    renegado    false            �            1259    59500     account_emailconfirmation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public          renegado    false    202            &           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
          public          renegado    false    203            �            1259    59502    accounts_professors    TABLE     !  CREATE TABLE public.accounts_professors (
    id integer NOT NULL,
    first_name character varying(300),
    middle_name character varying(1),
    last_name character varying(300),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    preferred_start_time time without time zone,
    preferred_end_time time without time zone,
    status character varying(200) NOT NULL,
    choose_department_id integer,
    section_id integer,
    user_id integer,
    profile_picture_id integer,
    units integer NOT NULL
);
 '   DROP TABLE public.accounts_professors;
       public         heap    renegado    false            �            1259    59508    accounts_professors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_professors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.accounts_professors_id_seq;
       public          renegado    false    204            '           0    0    accounts_professors_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.accounts_professors_id_seq OWNED BY public.accounts_professors.id;
          public          renegado    false    205            �            1259    59510    accounts_students    TABLE     5  CREATE TABLE public.accounts_students (
    id integer NOT NULL,
    first_name character varying(300),
    middle_name character varying(1),
    last_name character varying(300),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    section_id integer,
    user_id integer
);
 %   DROP TABLE public.accounts_students;
       public         heap    renegado    false            �            1259    59516    accounts_students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.accounts_students_id_seq;
       public          renegado    false    206            (           0    0    accounts_students_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.accounts_students_id_seq OWNED BY public.accounts_students.id;
          public          renegado    false    207            �            1259    59518 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    renegado    false            �            1259    59521    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          renegado    false    208            )           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          renegado    false    209            �            1259    59523    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    renegado    false            �            1259    59526    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          renegado    false    210            *           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          renegado    false    211            �            1259    59528    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    renegado    false            �            1259    59531    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          renegado    false    212            +           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          renegado    false    213            �            1259    59533    base_basepage    TABLE     H   CREATE TABLE public.base_basepage (
    page_ptr_id integer NOT NULL
);
 !   DROP TABLE public.base_basepage;
       public         heap    renegado    false            �            1259    59536    base_bulksections    TABLE     �   CREATE TABLE public.base_bulksections (
    id integer NOT NULL,
    sem character varying(200) NOT NULL,
    first_year integer,
    second_year integer,
    third_year integer,
    fourth_year integer,
    course_curriculum_id integer
);
 %   DROP TABLE public.base_bulksections;
       public         heap    renegado    false            �            1259    59539    base_bulksections_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_bulksections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.base_bulksections_id_seq;
       public          renegado    false    215            ,           0    0    base_bulksections_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.base_bulksections_id_seq OWNED BY public.base_bulksections.id;
          public          renegado    false    216            �            1259    59541    base_colleges    TABLE     h   CREATE TABLE public.base_colleges (
    id integer NOT NULL,
    college_name character varying(300)
);
 !   DROP TABLE public.base_colleges;
       public         heap    renegado    false            �            1259    59544    base_colleges_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_colleges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.base_colleges_id_seq;
       public          renegado    false    217            -           0    0    base_colleges_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.base_colleges_id_seq OWNED BY public.base_colleges.id;
          public          renegado    false    218            �            1259    59546    base_coursecurriculum    TABLE     8  CREATE TABLE public.base_coursecurriculum (
    id integer NOT NULL,
    course_name character varying(300),
    curriculum_year integer,
    choose_department_id integer,
    course_abbreviation character varying(10),
    CONSTRAINT base_coursecurriculum_curriculum_year_check CHECK ((curriculum_year >= 0))
);
 )   DROP TABLE public.base_coursecurriculum;
       public         heap    renegado    false            �            1259    59550    base_coursecurriculum_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_coursecurriculum_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.base_coursecurriculum_id_seq;
       public          renegado    false    219            .           0    0    base_coursecurriculum_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.base_coursecurriculum_id_seq OWNED BY public.base_coursecurriculum.id;
          public          renegado    false    220            �            1259    59552    base_departmentorderable    TABLE     �   CREATE TABLE public.base_departmentorderable (
    id integer NOT NULL,
    sort_order integer,
    college_model_id integer,
    department_id integer
);
 ,   DROP TABLE public.base_departmentorderable;
       public         heap    renegado    false            �            1259    59555    base_departmentorderable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_departmentorderable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.base_departmentorderable_id_seq;
       public          renegado    false    221            /           0    0    base_departmentorderable_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.base_departmentorderable_id_seq OWNED BY public.base_departmentorderable.id;
          public          renegado    false    222            �            1259    59557    base_departments    TABLE     �   CREATE TABLE public.base_departments (
    id integer NOT NULL,
    "Department_Name" character varying(100),
    "Choose_College_id" integer
);
 $   DROP TABLE public.base_departments;
       public         heap    renegado    false            �            1259    59560    base_departments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_departments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.base_departments_id_seq;
       public          renegado    false    223            0           0    0    base_departments_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.base_departments_id_seq OWNED BY public.base_departments.id;
          public          renegado    false    224            �            1259    59562    base_professororderable    TABLE     �   CREATE TABLE public.base_professororderable (
    id integer NOT NULL,
    sort_order integer,
    professor_id integer,
    room_model_id integer NOT NULL
);
 +   DROP TABLE public.base_professororderable;
       public         heap    renegado    false            �            1259    59565    base_professororderable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_professororderable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.base_professororderable_id_seq;
       public          renegado    false    225            1           0    0    base_professororderable_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.base_professororderable_id_seq OWNED BY public.base_professororderable.id;
          public          renegado    false    226            �            1259    59572    base_roomorderable    TABLE     �   CREATE TABLE public.base_roomorderable (
    id integer NOT NULL,
    sort_order integer,
    room_id integer,
    room_model_id integer NOT NULL
);
 &   DROP TABLE public.base_roomorderable;
       public         heap    renegado    false            �            1259    59575    base_roomorderable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_roomorderable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.base_roomorderable_id_seq;
       public          renegado    false    227            2           0    0    base_roomorderable_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.base_roomorderable_id_seq OWNED BY public.base_roomorderable.id;
          public          renegado    false    228            �            1259    59577 
   base_rooms    TABLE     �   CREATE TABLE public.base_rooms (
    id integer NOT NULL,
    "Room_Name" character varying(20),
    "Room_Type" character varying(200) NOT NULL,
    choose_department_id integer
);
    DROP TABLE public.base_rooms;
       public         heap    renegado    false            �            1259    59580    base_rooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_rooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.base_rooms_id_seq;
       public          renegado    false    229            3           0    0    base_rooms_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.base_rooms_id_seq OWNED BY public.base_rooms.id;
          public          renegado    false    230            �            1259    59587    base_sections    TABLE     �   CREATE TABLE public.base_sections (
    id integer NOT NULL,
    section_name character varying(30),
    year_level character varying(200) NOT NULL,
    sem character varying(200) NOT NULL,
    course_curriculum_id integer
);
 !   DROP TABLE public.base_sections;
       public         heap    renegado    false            �            1259    59590    base_sections_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.base_sections_id_seq;
       public          renegado    false    231            4           0    0    base_sections_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.base_sections_id_seq OWNED BY public.base_sections.id;
          public          renegado    false    232            �            1259    59597    base_subjects    TABLE     #  CREATE TABLE public.base_subjects (
    id integer NOT NULL,
    subject_code character varying(200),
    description character varying(200),
    units integer NOT NULL,
    lab_or_lec character varying(200) NOT NULL,
    hours double precision NOT NULL,
    choose_department_id integer
);
 !   DROP TABLE public.base_subjects;
       public         heap    renegado    false            �            1259    59603    base_subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.base_subjects_id_seq;
       public          renegado    false    233            5           0    0    base_subjects_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.base_subjects_id_seq OWNED BY public.base_subjects.id;
          public          renegado    false    234            �            1259    59605    base_subjectsorderable    TABLE     �  CREATE TABLE public.base_subjectsorderable (
    id integer NOT NULL,
    sort_order integer,
    first_year_first_sem_id integer,
    first_year_second_sem_id integer,
    second_year_first_sem_id integer,
    second_year_second_sem_id integer,
    third_year_first_sem_id integer,
    third_year_second_sem_id integer,
    fourth_year_first_sem_id integer,
    fourth_year_second_sem_id integer,
    professor_model_id integer,
    subject_id integer
);
 *   DROP TABLE public.base_subjectsorderable;
       public         heap    renegado    false            �            1259    59608    base_subjectsorderable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_subjectsorderable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.base_subjectsorderable_id_seq;
       public          renegado    false    235            6           0    0    base_subjectsorderable_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.base_subjectsorderable_id_seq OWNED BY public.base_subjectsorderable.id;
          public          renegado    false    236            �            1259    59610    class_schedule_classschedule    TABLE     W   CREATE TABLE public.class_schedule_classschedule (
    page_ptr_id integer NOT NULL
);
 0   DROP TABLE public.class_schedule_classschedule;
       public         heap    renegado    false            �            1259    59613 $   class_schedule_classscheduleoverview    TABLE     _   CREATE TABLE public.class_schedule_classscheduleoverview (
    page_ptr_id integer NOT NULL
);
 8   DROP TABLE public.class_schedule_classscheduleoverview;
       public         heap    renegado    false            �            1259    59616    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    renegado    false            �            1259    59623    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          renegado    false    239            7           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          renegado    false    240            �            1259    59625    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    renegado    false            �            1259    59628    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          renegado    false    241            8           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          renegado    false    242            �            1259    59630    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    renegado    false            �            1259    59636    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          renegado    false    243            9           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          renegado    false    244            �            1259    59638    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    renegado    false            �            1259    59644    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    renegado    false            �            1259    59647    django_site_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          renegado    false    246            :           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          renegado    false    247            �            1259    59649 &   instructor_schedule_instructorschedule    TABLE     a   CREATE TABLE public.instructor_schedule_instructorschedule (
    page_ptr_id integer NOT NULL
);
 :   DROP TABLE public.instructor_schedule_instructorschedule;
       public         heap    renegado    false            �            1259    59652    room_schedule_roomschedule    TABLE     U   CREATE TABLE public.room_schedule_roomschedule (
    page_ptr_id integer NOT NULL
);
 .   DROP TABLE public.room_schedule_roomschedule;
       public         heap    renegado    false            T           1259    61013    schedule_schedule    TABLE       CREATE TABLE public.schedule_schedule (
    id integer NOT NULL,
    prof_id integer,
    room_id integer,
    school_year character varying(200),
    section_id integer,
    starting_time integer NOT NULL,
    subject_id integer,
    day character varying(20)
);
 %   DROP TABLE public.schedule_schedule;
       public         heap    renegado    false            S           1259    61011    schedule_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.schedule_schedule_id_seq;
       public          renegado    false    340            ;           0    0    schedule_schedule_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.schedule_schedule_id_seq OWNED BY public.schedule_schedule.id;
          public          renegado    false    339            �            1259    59665    schedule_schedulepage    TABLE     P   CREATE TABLE public.schedule_schedulepage (
    page_ptr_id integer NOT NULL
);
 )   DROP TABLE public.schedule_schedulepage;
       public         heap    renegado    false            �            1259    59673    socialaccount_socialaccount    TABLE     D  CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);
 /   DROP TABLE public.socialaccount_socialaccount;
       public         heap    renegado    false            �            1259    59679 "   socialaccount_socialaccount_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
       public          renegado    false    251            <           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;
          public          renegado    false    252            �            1259    59681    socialaccount_socialapp    TABLE     #  CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);
 +   DROP TABLE public.socialaccount_socialapp;
       public         heap    renegado    false            �            1259    59687    socialaccount_socialapp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.socialaccount_socialapp_id_seq;
       public          renegado    false    253            =           0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;
          public          renegado    false    254            �            1259    59689    socialaccount_socialapp_sites    TABLE     �   CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);
 1   DROP TABLE public.socialaccount_socialapp_sites;
       public         heap    renegado    false                        1259    59692 $   socialaccount_socialapp_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.socialaccount_socialapp_sites_id_seq;
       public          renegado    false    255            >           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;
          public          renegado    false    256                       1259    59694    socialaccount_socialtoken    TABLE     �   CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);
 -   DROP TABLE public.socialaccount_socialtoken;
       public         heap    renegado    false                       1259    59700     socialaccount_socialtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
       public          renegado    false    257            ?           0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;
          public          renegado    false    258                       1259    59702 
   taggit_tag    TABLE     �   CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);
    DROP TABLE public.taggit_tag;
       public         heap    renegado    false                       1259    59705    taggit_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.taggit_tag_id_seq;
       public          renegado    false    259            @           0    0    taggit_tag_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;
          public          renegado    false    260                       1259    59707    taggit_taggeditem    TABLE     �   CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);
 %   DROP TABLE public.taggit_taggeditem;
       public         heap    renegado    false                       1259    59710    taggit_taggeditem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.taggit_taggeditem_id_seq;
       public          renegado    false    261            A           0    0    taggit_taggeditem_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;
          public          renegado    false    262                       1259    59712 
   users_user    TABLE     $  CREATE TABLE public.users_user (
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
    date_joined timestamp with time zone NOT NULL,
    is_professor boolean NOT NULL,
    is_student boolean NOT NULL
);
    DROP TABLE public.users_user;
       public         heap    renegado    false                       1259    59718    users_user_groups    TABLE     �   CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 %   DROP TABLE public.users_user_groups;
       public         heap    renegado    false            	           1259    59721    users_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_user_groups_id_seq;
       public          renegado    false    264            B           0    0    users_user_groups_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;
          public          renegado    false    265            
           1259    59723    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          renegado    false    263            C           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;
          public          renegado    false    266                       1259    59725    users_user_user_permissions    TABLE     �   CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 /   DROP TABLE public.users_user_user_permissions;
       public         heap    renegado    false                       1259    59728 "   users_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.users_user_user_permissions_id_seq;
       public          renegado    false    267            D           0    0 "   users_user_user_permissions_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;
          public          renegado    false    268                       1259    59730    wagtailadmin_admin    TABLE     D   CREATE TABLE public.wagtailadmin_admin (
    id integer NOT NULL
);
 &   DROP TABLE public.wagtailadmin_admin;
       public         heap    renegado    false                       1259    59733    wagtailadmin_admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailadmin_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.wagtailadmin_admin_id_seq;
       public          renegado    false    269            E           0    0    wagtailadmin_admin_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.wagtailadmin_admin_id_seq OWNED BY public.wagtailadmin_admin.id;
          public          renegado    false    270                       1259    59735    wagtailcore_collection    TABLE     �  CREATE TABLE public.wagtailcore_collection (
    id integer NOT NULL,
    path character varying(255) NOT NULL COLLATE pg_catalog."C",
    depth integer NOT NULL,
    numchild integer NOT NULL,
    name character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_collection_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_collection_numchild_check CHECK ((numchild >= 0))
);
 *   DROP TABLE public.wagtailcore_collection;
       public         heap    renegado    false                       1259    59743    wagtailcore_collection_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.wagtailcore_collection_id_seq;
       public          renegado    false    271            F           0    0    wagtailcore_collection_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.wagtailcore_collection_id_seq OWNED BY public.wagtailcore_collection.id;
          public          renegado    false    272                       1259    59745 %   wagtailcore_collectionviewrestriction    TABLE     �   CREATE TABLE public.wagtailcore_collectionviewrestriction (
    id integer NOT NULL,
    restriction_type character varying(20) NOT NULL,
    password character varying(255) NOT NULL,
    collection_id integer NOT NULL
);
 9   DROP TABLE public.wagtailcore_collectionviewrestriction;
       public         heap    renegado    false                       1259    59748 ,   wagtailcore_collectionviewrestriction_groups    TABLE     �   CREATE TABLE public.wagtailcore_collectionviewrestriction_groups (
    id integer NOT NULL,
    collectionviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);
 @   DROP TABLE public.wagtailcore_collectionviewrestriction_groups;
       public         heap    renegado    false                       1259    59751 3   wagtailcore_collectionviewrestriction_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq;
       public          renegado    false    274            G           0    0 3   wagtailcore_collectionviewrestriction_groups_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_groups_id_seq OWNED BY public.wagtailcore_collectionviewrestriction_groups.id;
          public          renegado    false    275                       1259    59753 ,   wagtailcore_collectionviewrestriction_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq;
       public          renegado    false    273            H           0    0 ,   wagtailcore_collectionviewrestriction_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.wagtailcore_collectionviewrestriction_id_seq OWNED BY public.wagtailcore_collectionviewrestriction.id;
          public          renegado    false    276            N           1259    60871    wagtailcore_comment    TABLE     �  CREATE TABLE public.wagtailcore_comment (
    id integer NOT NULL,
    text text NOT NULL,
    contentpath text NOT NULL,
    "position" text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    resolved_at timestamp with time zone,
    page_id integer NOT NULL,
    resolved_by_id integer,
    revision_created_id integer,
    user_id integer NOT NULL
);
 '   DROP TABLE public.wagtailcore_comment;
       public         heap    renegado    false            M           1259    60869    wagtailcore_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.wagtailcore_comment_id_seq;
       public          renegado    false    334            I           0    0    wagtailcore_comment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.wagtailcore_comment_id_seq OWNED BY public.wagtailcore_comment.id;
          public          renegado    false    333            P           1259    60882    wagtailcore_commentreply    TABLE       CREATE TABLE public.wagtailcore_commentreply (
    id integer NOT NULL,
    text text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL
);
 ,   DROP TABLE public.wagtailcore_commentreply;
       public         heap    renegado    false            O           1259    60880    wagtailcore_commentreply_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_commentreply_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.wagtailcore_commentreply_id_seq;
       public          renegado    false    336            J           0    0    wagtailcore_commentreply_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.wagtailcore_commentreply_id_seq OWNED BY public.wagtailcore_commentreply.id;
          public          renegado    false    335                       1259    59755    wagtailcore_groupapprovaltask    TABLE     X   CREATE TABLE public.wagtailcore_groupapprovaltask (
    task_ptr_id integer NOT NULL
);
 1   DROP TABLE public.wagtailcore_groupapprovaltask;
       public         heap    renegado    false                       1259    59758 $   wagtailcore_groupapprovaltask_groups    TABLE     �   CREATE TABLE public.wagtailcore_groupapprovaltask_groups (
    id integer NOT NULL,
    groupapprovaltask_id integer NOT NULL,
    group_id integer NOT NULL
);
 8   DROP TABLE public.wagtailcore_groupapprovaltask_groups;
       public         heap    renegado    false                       1259    59761 +   wagtailcore_groupapprovaltask_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_groupapprovaltask_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.wagtailcore_groupapprovaltask_groups_id_seq;
       public          renegado    false    278            K           0    0 +   wagtailcore_groupapprovaltask_groups_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.wagtailcore_groupapprovaltask_groups_id_seq OWNED BY public.wagtailcore_groupapprovaltask_groups.id;
          public          renegado    false    279                       1259    59763 %   wagtailcore_groupcollectionpermission    TABLE     �   CREATE TABLE public.wagtailcore_groupcollectionpermission (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 9   DROP TABLE public.wagtailcore_groupcollectionpermission;
       public         heap    renegado    false                       1259    59766 ,   wagtailcore_groupcollectionpermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq;
       public          renegado    false    280            L           0    0 ,   wagtailcore_groupcollectionpermission_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.wagtailcore_groupcollectionpermission_id_seq OWNED BY public.wagtailcore_groupcollectionpermission.id;
          public          renegado    false    281                       1259    59768    wagtailcore_grouppagepermission    TABLE     �   CREATE TABLE public.wagtailcore_grouppagepermission (
    id integer NOT NULL,
    permission_type character varying(20) NOT NULL,
    group_id integer NOT NULL,
    page_id integer NOT NULL
);
 3   DROP TABLE public.wagtailcore_grouppagepermission;
       public         heap    renegado    false                       1259    59771 &   wagtailcore_grouppagepermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_grouppagepermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.wagtailcore_grouppagepermission_id_seq;
       public          renegado    false    282            M           0    0 &   wagtailcore_grouppagepermission_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.wagtailcore_grouppagepermission_id_seq OWNED BY public.wagtailcore_grouppagepermission.id;
          public          renegado    false    283                       1259    59773    wagtailcore_locale    TABLE     w   CREATE TABLE public.wagtailcore_locale (
    id integer NOT NULL,
    language_code character varying(100) NOT NULL
);
 &   DROP TABLE public.wagtailcore_locale;
       public         heap    renegado    false                       1259    59776    wagtailcore_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.wagtailcore_locale_id_seq;
       public          renegado    false    284            N           0    0    wagtailcore_locale_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.wagtailcore_locale_id_seq OWNED BY public.wagtailcore_locale.id;
          public          renegado    false    285                       1259    59778    wagtailcore_page    TABLE     �  CREATE TABLE public.wagtailcore_page (
    id integer NOT NULL,
    path character varying(255) NOT NULL COLLATE pg_catalog."C",
    depth integer NOT NULL,
    numchild integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    live boolean NOT NULL,
    has_unpublished_changes boolean NOT NULL,
    url_path text NOT NULL,
    seo_title character varying(255) NOT NULL,
    show_in_menus boolean NOT NULL,
    search_description text NOT NULL,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean NOT NULL,
    content_type_id integer NOT NULL,
    owner_id integer,
    locked boolean NOT NULL,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    live_revision_id integer,
    last_published_at timestamp with time zone,
    draft_title character varying(255) NOT NULL,
    locked_at timestamp with time zone,
    locked_by_id integer,
    translation_key uuid NOT NULL,
    locale_id integer NOT NULL,
    alias_of_id integer,
    CONSTRAINT wagtailcore_page_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_page_numchild_check CHECK ((numchild >= 0))
);
 $   DROP TABLE public.wagtailcore_page;
       public         heap    renegado    false                       1259    59786    wagtailcore_page_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.wagtailcore_page_id_seq;
       public          renegado    false    286            O           0    0    wagtailcore_page_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.wagtailcore_page_id_seq OWNED BY public.wagtailcore_page.id;
          public          renegado    false    287                        1259    59788    wagtailcore_pagelogentry    TABLE     �  CREATE TABLE public.wagtailcore_pagelogentry (
    id integer NOT NULL,
    label text NOT NULL,
    action character varying(255) NOT NULL,
    data_json text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    content_changed boolean NOT NULL,
    deleted boolean NOT NULL,
    content_type_id integer,
    page_id integer NOT NULL,
    revision_id integer,
    user_id integer
);
 ,   DROP TABLE public.wagtailcore_pagelogentry;
       public         heap    renegado    false            !           1259    59794    wagtailcore_pagelogentry_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_pagelogentry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.wagtailcore_pagelogentry_id_seq;
       public          renegado    false    288            P           0    0    wagtailcore_pagelogentry_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.wagtailcore_pagelogentry_id_seq OWNED BY public.wagtailcore_pagelogentry.id;
          public          renegado    false    289            "           1259    59796    wagtailcore_pagerevision    TABLE     0  CREATE TABLE public.wagtailcore_pagerevision (
    id integer NOT NULL,
    submitted_for_moderation boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_json text NOT NULL,
    approved_go_live_at timestamp with time zone,
    page_id integer NOT NULL,
    user_id integer
);
 ,   DROP TABLE public.wagtailcore_pagerevision;
       public         heap    renegado    false            #           1259    59802    wagtailcore_pagerevision_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_pagerevision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.wagtailcore_pagerevision_id_seq;
       public          renegado    false    290            Q           0    0    wagtailcore_pagerevision_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.wagtailcore_pagerevision_id_seq OWNED BY public.wagtailcore_pagerevision.id;
          public          renegado    false    291            R           1259    60893    wagtailcore_pagesubscription    TABLE     �   CREATE TABLE public.wagtailcore_pagesubscription (
    id integer NOT NULL,
    comment_notifications boolean NOT NULL,
    page_id integer NOT NULL,
    user_id integer NOT NULL
);
 0   DROP TABLE public.wagtailcore_pagesubscription;
       public         heap    renegado    false            Q           1259    60891 #   wagtailcore_pagesubscription_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_pagesubscription_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.wagtailcore_pagesubscription_id_seq;
       public          renegado    false    338            R           0    0 #   wagtailcore_pagesubscription_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.wagtailcore_pagesubscription_id_seq OWNED BY public.wagtailcore_pagesubscription.id;
          public          renegado    false    337            $           1259    59804    wagtailcore_pageviewrestriction    TABLE     �   CREATE TABLE public.wagtailcore_pageviewrestriction (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    page_id integer NOT NULL,
    restriction_type character varying(20) NOT NULL
);
 3   DROP TABLE public.wagtailcore_pageviewrestriction;
       public         heap    renegado    false            %           1259    59807 &   wagtailcore_pageviewrestriction_groups    TABLE     �   CREATE TABLE public.wagtailcore_pageviewrestriction_groups (
    id integer NOT NULL,
    pageviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);
 :   DROP TABLE public.wagtailcore_pageviewrestriction_groups;
       public         heap    renegado    false            &           1259    59810 -   wagtailcore_pageviewrestriction_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq;
       public          renegado    false    293            S           0    0 -   wagtailcore_pageviewrestriction_groups_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.wagtailcore_pageviewrestriction_groups_id_seq OWNED BY public.wagtailcore_pageviewrestriction_groups.id;
          public          renegado    false    294            '           1259    59812 &   wagtailcore_pageviewrestriction_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_pageviewrestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.wagtailcore_pageviewrestriction_id_seq;
       public          renegado    false    292            T           0    0 &   wagtailcore_pageviewrestriction_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.wagtailcore_pageviewrestriction_id_seq OWNED BY public.wagtailcore_pageviewrestriction.id;
          public          renegado    false    295            (           1259    59814    wagtailcore_site    TABLE       CREATE TABLE public.wagtailcore_site (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    port integer NOT NULL,
    is_default_site boolean NOT NULL,
    root_page_id integer NOT NULL,
    site_name character varying(255) NOT NULL
);
 $   DROP TABLE public.wagtailcore_site;
       public         heap    renegado    false            )           1259    59820    wagtailcore_site_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.wagtailcore_site_id_seq;
       public          renegado    false    296            U           0    0    wagtailcore_site_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.wagtailcore_site_id_seq OWNED BY public.wagtailcore_site.id;
          public          renegado    false    297            *           1259    59822    wagtailcore_task    TABLE     �   CREATE TABLE public.wagtailcore_task (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    active boolean NOT NULL,
    content_type_id integer NOT NULL
);
 $   DROP TABLE public.wagtailcore_task;
       public         heap    renegado    false            +           1259    59825    wagtailcore_task_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.wagtailcore_task_id_seq;
       public          renegado    false    298            V           0    0    wagtailcore_task_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.wagtailcore_task_id_seq OWNED BY public.wagtailcore_task.id;
          public          renegado    false    299            ,           1259    59827    wagtailcore_taskstate    TABLE     �  CREATE TABLE public.wagtailcore_taskstate (
    id integer NOT NULL,
    status character varying(50) NOT NULL,
    started_at timestamp with time zone NOT NULL,
    finished_at timestamp with time zone,
    content_type_id integer NOT NULL,
    page_revision_id integer NOT NULL,
    task_id integer NOT NULL,
    workflow_state_id integer NOT NULL,
    finished_by_id integer,
    comment text NOT NULL
);
 )   DROP TABLE public.wagtailcore_taskstate;
       public         heap    renegado    false            -           1259    59833    wagtailcore_taskstate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_taskstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.wagtailcore_taskstate_id_seq;
       public          renegado    false    300            W           0    0    wagtailcore_taskstate_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.wagtailcore_taskstate_id_seq OWNED BY public.wagtailcore_taskstate.id;
          public          renegado    false    301            .           1259    59835    wagtailcore_workflow    TABLE     �   CREATE TABLE public.wagtailcore_workflow (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    active boolean NOT NULL
);
 (   DROP TABLE public.wagtailcore_workflow;
       public         heap    renegado    false            /           1259    59838    wagtailcore_workflow_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_workflow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.wagtailcore_workflow_id_seq;
       public          renegado    false    302            X           0    0    wagtailcore_workflow_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.wagtailcore_workflow_id_seq OWNED BY public.wagtailcore_workflow.id;
          public          renegado    false    303            0           1259    59840    wagtailcore_workflowpage    TABLE     q   CREATE TABLE public.wagtailcore_workflowpage (
    page_id integer NOT NULL,
    workflow_id integer NOT NULL
);
 ,   DROP TABLE public.wagtailcore_workflowpage;
       public         heap    renegado    false            1           1259    59843    wagtailcore_workflowstate    TABLE     (  CREATE TABLE public.wagtailcore_workflowstate (
    id integer NOT NULL,
    status character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    current_task_state_id integer,
    page_id integer NOT NULL,
    requested_by_id integer,
    workflow_id integer NOT NULL
);
 -   DROP TABLE public.wagtailcore_workflowstate;
       public         heap    renegado    false            2           1259    59846     wagtailcore_workflowstate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_workflowstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.wagtailcore_workflowstate_id_seq;
       public          renegado    false    305            Y           0    0     wagtailcore_workflowstate_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.wagtailcore_workflowstate_id_seq OWNED BY public.wagtailcore_workflowstate.id;
          public          renegado    false    306            3           1259    59848    wagtailcore_workflowtask    TABLE     �   CREATE TABLE public.wagtailcore_workflowtask (
    id integer NOT NULL,
    sort_order integer,
    task_id integer NOT NULL,
    workflow_id integer NOT NULL
);
 ,   DROP TABLE public.wagtailcore_workflowtask;
       public         heap    renegado    false            4           1259    59851    wagtailcore_workflowtask_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailcore_workflowtask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.wagtailcore_workflowtask_id_seq;
       public          renegado    false    307            Z           0    0    wagtailcore_workflowtask_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.wagtailcore_workflowtask_id_seq OWNED BY public.wagtailcore_workflowtask.id;
          public          renegado    false    308            5           1259    59853    wagtaildocs_document    TABLE     �  CREATE TABLE public.wagtaildocs_document (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    uploaded_by_user_id integer,
    collection_id integer NOT NULL,
    file_size integer,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtaildocs_document_file_size_check CHECK ((file_size >= 0))
);
 (   DROP TABLE public.wagtaildocs_document;
       public         heap    renegado    false            6           1259    59857    wagtaildocs_document_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtaildocs_document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.wagtaildocs_document_id_seq;
       public          renegado    false    309            [           0    0    wagtaildocs_document_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.wagtaildocs_document_id_seq OWNED BY public.wagtaildocs_document.id;
          public          renegado    false    310            7           1259    59859    wagtaildocs_uploadeddocument    TABLE     �   CREATE TABLE public.wagtaildocs_uploadeddocument (
    id integer NOT NULL,
    file character varying(200) NOT NULL,
    uploaded_by_user_id integer
);
 0   DROP TABLE public.wagtaildocs_uploadeddocument;
       public         heap    renegado    false            8           1259    59862 #   wagtaildocs_uploadeddocument_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtaildocs_uploadeddocument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.wagtaildocs_uploadeddocument_id_seq;
       public          renegado    false    311            \           0    0 #   wagtaildocs_uploadeddocument_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.wagtaildocs_uploadeddocument_id_seq OWNED BY public.wagtaildocs_uploadeddocument.id;
          public          renegado    false    312            9           1259    59864    wagtailembeds_embed    TABLE     �  CREATE TABLE public.wagtailembeds_embed (
    id integer NOT NULL,
    url text NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url text NOT NULL,
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL,
    hash character varying(32) NOT NULL
);
 '   DROP TABLE public.wagtailembeds_embed;
       public         heap    renegado    false            :           1259    59870    wagtailembeds_embed_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailembeds_embed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.wagtailembeds_embed_id_seq;
       public          renegado    false    313            ]           0    0    wagtailembeds_embed_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.wagtailembeds_embed_id_seq OWNED BY public.wagtailembeds_embed.id;
          public          renegado    false    314            ;           1259    59872    wagtailforms_formsubmission    TABLE     �   CREATE TABLE public.wagtailforms_formsubmission (
    id integer NOT NULL,
    form_data text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    page_id integer NOT NULL
);
 /   DROP TABLE public.wagtailforms_formsubmission;
       public         heap    renegado    false            <           1259    59878 "   wagtailforms_formsubmission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailforms_formsubmission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.wagtailforms_formsubmission_id_seq;
       public          renegado    false    315            ^           0    0 "   wagtailforms_formsubmission_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.wagtailforms_formsubmission_id_seq OWNED BY public.wagtailforms_formsubmission.id;
          public          renegado    false    316            =           1259    59880    wagtailimages_image    TABLE     �  CREATE TABLE public.wagtailimages_image (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    focal_point_x integer,
    focal_point_y integer,
    focal_point_width integer,
    focal_point_height integer,
    uploaded_by_user_id integer,
    file_size integer,
    collection_id integer NOT NULL,
    file_hash character varying(40) NOT NULL,
    CONSTRAINT wagtailimages_image_file_size_check CHECK ((file_size >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_height_check CHECK ((focal_point_height >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_width_check CHECK ((focal_point_width >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_x_check CHECK ((focal_point_x >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_y_check CHECK ((focal_point_y >= 0))
);
 '   DROP TABLE public.wagtailimages_image;
       public         heap    renegado    false            >           1259    59888    wagtailimages_image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailimages_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.wagtailimages_image_id_seq;
       public          renegado    false    317            _           0    0    wagtailimages_image_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.wagtailimages_image_id_seq OWNED BY public.wagtailimages_image.id;
          public          renegado    false    318            ?           1259    59890    wagtailimages_rendition    TABLE     0  CREATE TABLE public.wagtailimages_rendition (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    focal_point_key character varying(16) NOT NULL,
    filter_spec character varying(255) NOT NULL,
    image_id integer NOT NULL
);
 +   DROP TABLE public.wagtailimages_rendition;
       public         heap    renegado    false            @           1259    59893    wagtailimages_rendition_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailimages_rendition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.wagtailimages_rendition_id_seq;
       public          renegado    false    319            `           0    0    wagtailimages_rendition_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.wagtailimages_rendition_id_seq OWNED BY public.wagtailimages_rendition.id;
          public          renegado    false    320            A           1259    59895    wagtailimages_uploadedimage    TABLE     �   CREATE TABLE public.wagtailimages_uploadedimage (
    id integer NOT NULL,
    file character varying(200) NOT NULL,
    uploaded_by_user_id integer
);
 /   DROP TABLE public.wagtailimages_uploadedimage;
       public         heap    renegado    false            B           1259    59898 "   wagtailimages_uploadedimage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailimages_uploadedimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.wagtailimages_uploadedimage_id_seq;
       public          renegado    false    321            a           0    0 "   wagtailimages_uploadedimage_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.wagtailimages_uploadedimage_id_seq OWNED BY public.wagtailimages_uploadedimage.id;
          public          renegado    false    322            C           1259    59900    wagtailredirects_redirect    TABLE       CREATE TABLE public.wagtailredirects_redirect (
    id integer NOT NULL,
    old_path character varying(255) NOT NULL,
    is_permanent boolean NOT NULL,
    redirect_link character varying(255) NOT NULL,
    redirect_page_id integer,
    site_id integer
);
 -   DROP TABLE public.wagtailredirects_redirect;
       public         heap    renegado    false            D           1259    59906     wagtailredirects_redirect_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailredirects_redirect_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.wagtailredirects_redirect_id_seq;
       public          renegado    false    323            b           0    0     wagtailredirects_redirect_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.wagtailredirects_redirect_id_seq OWNED BY public.wagtailredirects_redirect.id;
          public          renegado    false    324            E           1259    59908    wagtailsearch_editorspick    TABLE     �   CREATE TABLE public.wagtailsearch_editorspick (
    id integer NOT NULL,
    sort_order integer,
    description text NOT NULL,
    page_id integer NOT NULL,
    query_id integer NOT NULL
);
 -   DROP TABLE public.wagtailsearch_editorspick;
       public         heap    renegado    false            F           1259    59914     wagtailsearch_editorspick_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailsearch_editorspick_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.wagtailsearch_editorspick_id_seq;
       public          renegado    false    325            c           0    0     wagtailsearch_editorspick_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.wagtailsearch_editorspick_id_seq OWNED BY public.wagtailsearch_editorspick.id;
          public          renegado    false    326            G           1259    59916    wagtailsearch_query    TABLE     w   CREATE TABLE public.wagtailsearch_query (
    id integer NOT NULL,
    query_string character varying(255) NOT NULL
);
 '   DROP TABLE public.wagtailsearch_query;
       public         heap    renegado    false            H           1259    59919    wagtailsearch_query_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailsearch_query_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.wagtailsearch_query_id_seq;
       public          renegado    false    327            d           0    0    wagtailsearch_query_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.wagtailsearch_query_id_seq OWNED BY public.wagtailsearch_query.id;
          public          renegado    false    328            I           1259    59921    wagtailsearch_querydailyhits    TABLE     �   CREATE TABLE public.wagtailsearch_querydailyhits (
    id integer NOT NULL,
    date date NOT NULL,
    hits integer NOT NULL,
    query_id integer NOT NULL
);
 0   DROP TABLE public.wagtailsearch_querydailyhits;
       public         heap    renegado    false            J           1259    59924 #   wagtailsearch_querydailyhits_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailsearch_querydailyhits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.wagtailsearch_querydailyhits_id_seq;
       public          renegado    false    329            e           0    0 #   wagtailsearch_querydailyhits_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.wagtailsearch_querydailyhits_id_seq OWNED BY public.wagtailsearch_querydailyhits.id;
          public          renegado    false    330            K           1259    59926    wagtailusers_userprofile    TABLE     �  CREATE TABLE public.wagtailusers_userprofile (
    id integer NOT NULL,
    submitted_notifications boolean NOT NULL,
    approved_notifications boolean NOT NULL,
    rejected_notifications boolean NOT NULL,
    user_id integer NOT NULL,
    preferred_language character varying(10) NOT NULL,
    current_time_zone character varying(40) NOT NULL,
    avatar character varying(100) NOT NULL,
    updated_comments_notifications boolean NOT NULL
);
 ,   DROP TABLE public.wagtailusers_userprofile;
       public         heap    renegado    false            L           1259    59929    wagtailusers_userprofile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wagtailusers_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.wagtailusers_userprofile_id_seq;
       public          renegado    false    331            f           0    0    wagtailusers_userprofile_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.wagtailusers_userprofile_id_seq OWNED BY public.wagtailusers_userprofile.id;
          public          renegado    false    332            �           2604    59931    account_emailaddress id    DEFAULT     �   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    201    200            �           2604    59932    account_emailconfirmation id    DEFAULT     �   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    203    202            �           2604    59933    accounts_professors id    DEFAULT     �   ALTER TABLE ONLY public.accounts_professors ALTER COLUMN id SET DEFAULT nextval('public.accounts_professors_id_seq'::regclass);
 E   ALTER TABLE public.accounts_professors ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    205    204            �           2604    59934    accounts_students id    DEFAULT     |   ALTER TABLE ONLY public.accounts_students ALTER COLUMN id SET DEFAULT nextval('public.accounts_students_id_seq'::regclass);
 C   ALTER TABLE public.accounts_students ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    207    206            �           2604    59935    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    209    208            �           2604    59936    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    211    210            �           2604    59937    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    213    212            �           2604    59938    base_bulksections id    DEFAULT     |   ALTER TABLE ONLY public.base_bulksections ALTER COLUMN id SET DEFAULT nextval('public.base_bulksections_id_seq'::regclass);
 C   ALTER TABLE public.base_bulksections ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    216    215            �           2604    59939    base_colleges id    DEFAULT     t   ALTER TABLE ONLY public.base_colleges ALTER COLUMN id SET DEFAULT nextval('public.base_colleges_id_seq'::regclass);
 ?   ALTER TABLE public.base_colleges ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    218    217            �           2604    59940    base_coursecurriculum id    DEFAULT     �   ALTER TABLE ONLY public.base_coursecurriculum ALTER COLUMN id SET DEFAULT nextval('public.base_coursecurriculum_id_seq'::regclass);
 G   ALTER TABLE public.base_coursecurriculum ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    220    219            �           2604    59941    base_departmentorderable id    DEFAULT     �   ALTER TABLE ONLY public.base_departmentorderable ALTER COLUMN id SET DEFAULT nextval('public.base_departmentorderable_id_seq'::regclass);
 J   ALTER TABLE public.base_departmentorderable ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    222    221            �           2604    59942    base_departments id    DEFAULT     z   ALTER TABLE ONLY public.base_departments ALTER COLUMN id SET DEFAULT nextval('public.base_departments_id_seq'::regclass);
 B   ALTER TABLE public.base_departments ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    224    223            �           2604    59943    base_professororderable id    DEFAULT     �   ALTER TABLE ONLY public.base_professororderable ALTER COLUMN id SET DEFAULT nextval('public.base_professororderable_id_seq'::regclass);
 I   ALTER TABLE public.base_professororderable ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    226    225            �           2604    59945    base_roomorderable id    DEFAULT     ~   ALTER TABLE ONLY public.base_roomorderable ALTER COLUMN id SET DEFAULT nextval('public.base_roomorderable_id_seq'::regclass);
 D   ALTER TABLE public.base_roomorderable ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    228    227            �           2604    59946    base_rooms id    DEFAULT     n   ALTER TABLE ONLY public.base_rooms ALTER COLUMN id SET DEFAULT nextval('public.base_rooms_id_seq'::regclass);
 <   ALTER TABLE public.base_rooms ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    230    229            �           2604    59948    base_sections id    DEFAULT     t   ALTER TABLE ONLY public.base_sections ALTER COLUMN id SET DEFAULT nextval('public.base_sections_id_seq'::regclass);
 ?   ALTER TABLE public.base_sections ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    232    231            �           2604    59950    base_subjects id    DEFAULT     t   ALTER TABLE ONLY public.base_subjects ALTER COLUMN id SET DEFAULT nextval('public.base_subjects_id_seq'::regclass);
 ?   ALTER TABLE public.base_subjects ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    234    233            �           2604    59951    base_subjectsorderable id    DEFAULT     �   ALTER TABLE ONLY public.base_subjectsorderable ALTER COLUMN id SET DEFAULT nextval('public.base_subjectsorderable_id_seq'::regclass);
 H   ALTER TABLE public.base_subjectsorderable ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    236    235            �           2604    59952    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    240    239            �           2604    59953    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    242    241            �           2604    59954    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    244    243            �           2604    59955    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    247    246            /           2604    61016    schedule_schedule id    DEFAULT     |   ALTER TABLE ONLY public.schedule_schedule ALTER COLUMN id SET DEFAULT nextval('public.schedule_schedule_id_seq'::regclass);
 C   ALTER TABLE public.schedule_schedule ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    339    340    340            �           2604    59959    socialaccount_socialaccount id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);
 M   ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    252    251            �           2604    59960    socialaccount_socialapp id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);
 I   ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    254    253            �           2604    59961     socialaccount_socialapp_sites id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);
 O   ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    256    255            �           2604    59962    socialaccount_socialtoken id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);
 K   ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    258    257            �           2604    59963    taggit_tag id    DEFAULT     n   ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);
 <   ALTER TABLE public.taggit_tag ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    260    259            �           2604    59964    taggit_taggeditem id    DEFAULT     |   ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);
 C   ALTER TABLE public.taggit_taggeditem ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    262    261                        2604    59965    users_user id    DEFAULT     n   ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users_user ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    266    263                       2604    59966    users_user_groups id    DEFAULT     |   ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);
 C   ALTER TABLE public.users_user_groups ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    265    264                       2604    59967    users_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);
 M   ALTER TABLE public.users_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    268    267                       2604    59968    wagtailadmin_admin id    DEFAULT     ~   ALTER TABLE ONLY public.wagtailadmin_admin ALTER COLUMN id SET DEFAULT nextval('public.wagtailadmin_admin_id_seq'::regclass);
 D   ALTER TABLE public.wagtailadmin_admin ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    270    269                       2604    59969    wagtailcore_collection id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collection_id_seq'::regclass);
 H   ALTER TABLE public.wagtailcore_collection ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    272    271                       2604    59970 (   wagtailcore_collectionviewrestriction id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_id_seq'::regclass);
 W   ALTER TABLE public.wagtailcore_collectionviewrestriction ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    276    273                       2604    59971 /   wagtailcore_collectionviewrestriction_groups id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_collectionviewrestriction_groups_id_seq'::regclass);
 ^   ALTER TABLE public.wagtailcore_collectionviewrestriction_groups ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    275    274            ,           2604    60874    wagtailcore_comment id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_comment ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_comment_id_seq'::regclass);
 E   ALTER TABLE public.wagtailcore_comment ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    333    334    334            -           2604    60885    wagtailcore_commentreply id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_commentreply ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_commentreply_id_seq'::regclass);
 J   ALTER TABLE public.wagtailcore_commentreply ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    335    336    336            	           2604    59972 '   wagtailcore_groupapprovaltask_groups id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupapprovaltask_groups_id_seq'::regclass);
 V   ALTER TABLE public.wagtailcore_groupapprovaltask_groups ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    279    278            
           2604    59973 (   wagtailcore_groupcollectionpermission id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_groupcollectionpermission_id_seq'::regclass);
 W   ALTER TABLE public.wagtailcore_groupcollectionpermission ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    281    280                       2604    59974 "   wagtailcore_grouppagepermission id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_grouppagepermission_id_seq'::regclass);
 Q   ALTER TABLE public.wagtailcore_grouppagepermission ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    283    282                       2604    59975    wagtailcore_locale id    DEFAULT     ~   ALTER TABLE ONLY public.wagtailcore_locale ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_locale_id_seq'::regclass);
 D   ALTER TABLE public.wagtailcore_locale ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    285    284                       2604    59976    wagtailcore_page id    DEFAULT     z   ALTER TABLE ONLY public.wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_page_id_seq'::regclass);
 B   ALTER TABLE public.wagtailcore_page ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    287    286                       2604    59977    wagtailcore_pagelogentry id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_pagelogentry ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagelogentry_id_seq'::regclass);
 J   ALTER TABLE public.wagtailcore_pagelogentry ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    289    288                       2604    59978    wagtailcore_pagerevision id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagerevision_id_seq'::regclass);
 J   ALTER TABLE public.wagtailcore_pagerevision ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    291    290            .           2604    60896    wagtailcore_pagesubscription id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_pagesubscription ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pagesubscription_id_seq'::regclass);
 N   ALTER TABLE public.wagtailcore_pagesubscription ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    338    337    338                       2604    59979 "   wagtailcore_pageviewrestriction id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_id_seq'::regclass);
 Q   ALTER TABLE public.wagtailcore_pageviewrestriction ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    295    292                       2604    59980 )   wagtailcore_pageviewrestriction_groups id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_pageviewrestriction_groups_id_seq'::regclass);
 X   ALTER TABLE public.wagtailcore_pageviewrestriction_groups ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    294    293                       2604    59981    wagtailcore_site id    DEFAULT     z   ALTER TABLE ONLY public.wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_site_id_seq'::regclass);
 B   ALTER TABLE public.wagtailcore_site ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    297    296                       2604    59982    wagtailcore_task id    DEFAULT     z   ALTER TABLE ONLY public.wagtailcore_task ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_task_id_seq'::regclass);
 B   ALTER TABLE public.wagtailcore_task ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    299    298                       2604    59983    wagtailcore_taskstate id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_taskstate ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_taskstate_id_seq'::regclass);
 G   ALTER TABLE public.wagtailcore_taskstate ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    301    300                       2604    59984    wagtailcore_workflow id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_workflow ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflow_id_seq'::regclass);
 F   ALTER TABLE public.wagtailcore_workflow ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    303    302                       2604    59985    wagtailcore_workflowstate id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_workflowstate ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflowstate_id_seq'::regclass);
 K   ALTER TABLE public.wagtailcore_workflowstate ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    306    305                       2604    59986    wagtailcore_workflowtask id    DEFAULT     �   ALTER TABLE ONLY public.wagtailcore_workflowtask ALTER COLUMN id SET DEFAULT nextval('public.wagtailcore_workflowtask_id_seq'::regclass);
 J   ALTER TABLE public.wagtailcore_workflowtask ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    308    307                       2604    59987    wagtaildocs_document id    DEFAULT     �   ALTER TABLE ONLY public.wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_document_id_seq'::regclass);
 F   ALTER TABLE public.wagtaildocs_document ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    310    309                       2604    59988    wagtaildocs_uploadeddocument id    DEFAULT     �   ALTER TABLE ONLY public.wagtaildocs_uploadeddocument ALTER COLUMN id SET DEFAULT nextval('public.wagtaildocs_uploadeddocument_id_seq'::regclass);
 N   ALTER TABLE public.wagtaildocs_uploadeddocument ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    312    311                       2604    59989    wagtailembeds_embed id    DEFAULT     �   ALTER TABLE ONLY public.wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('public.wagtailembeds_embed_id_seq'::regclass);
 E   ALTER TABLE public.wagtailembeds_embed ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    314    313                       2604    59990    wagtailforms_formsubmission id    DEFAULT     �   ALTER TABLE ONLY public.wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('public.wagtailforms_formsubmission_id_seq'::regclass);
 M   ALTER TABLE public.wagtailforms_formsubmission ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    316    315                       2604    59991    wagtailimages_image id    DEFAULT     �   ALTER TABLE ONLY public.wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_image_id_seq'::regclass);
 E   ALTER TABLE public.wagtailimages_image ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    318    317            %           2604    59992    wagtailimages_rendition id    DEFAULT     �   ALTER TABLE ONLY public.wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_rendition_id_seq'::regclass);
 I   ALTER TABLE public.wagtailimages_rendition ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    320    319            &           2604    59993    wagtailimages_uploadedimage id    DEFAULT     �   ALTER TABLE ONLY public.wagtailimages_uploadedimage ALTER COLUMN id SET DEFAULT nextval('public.wagtailimages_uploadedimage_id_seq'::regclass);
 M   ALTER TABLE public.wagtailimages_uploadedimage ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    322    321            '           2604    59994    wagtailredirects_redirect id    DEFAULT     �   ALTER TABLE ONLY public.wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('public.wagtailredirects_redirect_id_seq'::regclass);
 K   ALTER TABLE public.wagtailredirects_redirect ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    324    323            (           2604    59995    wagtailsearch_editorspick id    DEFAULT     �   ALTER TABLE ONLY public.wagtailsearch_editorspick ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_editorspick_id_seq'::regclass);
 K   ALTER TABLE public.wagtailsearch_editorspick ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    326    325            )           2604    59996    wagtailsearch_query id    DEFAULT     �   ALTER TABLE ONLY public.wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_query_id_seq'::regclass);
 E   ALTER TABLE public.wagtailsearch_query ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    328    327            *           2604    59997    wagtailsearch_querydailyhits id    DEFAULT     �   ALTER TABLE ONLY public.wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('public.wagtailsearch_querydailyhits_id_seq'::regclass);
 N   ALTER TABLE public.wagtailsearch_querydailyhits ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    330    329            +           2604    59998    wagtailusers_userprofile id    DEFAULT     �   ALTER TABLE ONLY public.wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('public.wagtailusers_userprofile_id_seq'::regclass);
 J   ALTER TABLE public.wagtailusers_userprofile ALTER COLUMN id DROP DEFAULT;
       public          renegado    false    332    331            �          0    59492    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          renegado    false    200   ,�      �          0    59497    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          renegado    false    202   I�      �          0    59502    accounts_professors 
   TABLE DATA           �   COPY public.accounts_professors (id, first_name, middle_name, last_name, created_at, updated_at, preferred_start_time, preferred_end_time, status, choose_department_id, section_id, user_id, profile_picture_id, units) FROM stdin;
    public          renegado    false    204   f�      �          0    59510    accounts_students 
   TABLE DATA           �   COPY public.accounts_students (id, first_name, middle_name, last_name, created_at, updated_at, section_id, user_id) FROM stdin;
    public          renegado    false    206   ��      �          0    59518 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          renegado    false    208   ��      �          0    59523    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          renegado    false    210   ߍ      �          0    59528    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          renegado    false    212   ��      �          0    59533    base_basepage 
   TABLE DATA           4   COPY public.base_basepage (page_ptr_id) FROM stdin;
    public          renegado    false    214   K�      �          0    59536    base_bulksections 
   TABLE DATA           |   COPY public.base_bulksections (id, sem, first_year, second_year, third_year, fourth_year, course_curriculum_id) FROM stdin;
    public          renegado    false    215   j�      �          0    59541    base_colleges 
   TABLE DATA           9   COPY public.base_colleges (id, college_name) FROM stdin;
    public          renegado    false    217   ��      �          0    59546    base_coursecurriculum 
   TABLE DATA           |   COPY public.base_coursecurriculum (id, course_name, curriculum_year, choose_department_id, course_abbreviation) FROM stdin;
    public          renegado    false    219   �      �          0    59552    base_departmentorderable 
   TABLE DATA           c   COPY public.base_departmentorderable (id, sort_order, college_model_id, department_id) FROM stdin;
    public          renegado    false    221   ��      �          0    59557    base_departments 
   TABLE DATA           V   COPY public.base_departments (id, "Department_Name", "Choose_College_id") FROM stdin;
    public          renegado    false    223   Κ      �          0    59562    base_professororderable 
   TABLE DATA           ^   COPY public.base_professororderable (id, sort_order, professor_id, room_model_id) FROM stdin;
    public          renegado    false    225   ?�      �          0    59572    base_roomorderable 
   TABLE DATA           T   COPY public.base_roomorderable (id, sort_order, room_id, room_model_id) FROM stdin;
    public          renegado    false    227   \�      �          0    59577 
   base_rooms 
   TABLE DATA           X   COPY public.base_rooms (id, "Room_Name", "Room_Type", choose_department_id) FROM stdin;
    public          renegado    false    229   y�      �          0    59587    base_sections 
   TABLE DATA           `   COPY public.base_sections (id, section_name, year_level, sem, course_curriculum_id) FROM stdin;
    public          renegado    false    231   �      �          0    59597    base_subjects 
   TABLE DATA           v   COPY public.base_subjects (id, subject_code, description, units, lab_or_lec, hours, choose_department_id) FROM stdin;
    public          renegado    false    233   ϝ      �          0    59605    base_subjectsorderable 
   TABLE DATA           0  COPY public.base_subjectsorderable (id, sort_order, first_year_first_sem_id, first_year_second_sem_id, second_year_first_sem_id, second_year_second_sem_id, third_year_first_sem_id, third_year_second_sem_id, fourth_year_first_sem_id, fourth_year_second_sem_id, professor_model_id, subject_id) FROM stdin;
    public          renegado    false    235   F�      �          0    59610    class_schedule_classschedule 
   TABLE DATA           C   COPY public.class_schedule_classschedule (page_ptr_id) FROM stdin;
    public          renegado    false    237   �      �          0    59613 $   class_schedule_classscheduleoverview 
   TABLE DATA           K   COPY public.class_schedule_classscheduleoverview (page_ptr_id) FROM stdin;
    public          renegado    false    238   �      �          0    59616    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          renegado    false    239   0�      �          0    59625    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          renegado    false    241   M�      �          0    59630    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          renegado    false    243   �      �          0    59638    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          renegado    false    245   ��      �          0    59644    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          renegado    false    246   I�      �          0    59649 &   instructor_schedule_instructorschedule 
   TABLE DATA           M   COPY public.instructor_schedule_instructorschedule (page_ptr_id) FROM stdin;
    public          renegado    false    248   v�      �          0    59652    room_schedule_roomschedule 
   TABLE DATA           A   COPY public.room_schedule_roomschedule (page_ptr_id) FROM stdin;
    public          renegado    false    249   ��                0    61013    schedule_schedule 
   TABLE DATA           z   COPY public.schedule_schedule (id, prof_id, room_id, school_year, section_id, starting_time, subject_id, day) FROM stdin;
    public          renegado    false    340   ��      �          0    59665    schedule_schedulepage 
   TABLE DATA           <   COPY public.schedule_schedulepage (page_ptr_id) FROM stdin;
    public          renegado    false    250   ��      �          0    59673    socialaccount_socialaccount 
   TABLE DATA           v   COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public          renegado    false    251   ��      �          0    59681    socialaccount_socialapp 
   TABLE DATA           ]   COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public          renegado    false    253   �      �          0    59689    socialaccount_socialapp_sites 
   TABLE DATA           R   COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public          renegado    false    255   *�      �          0    59694    socialaccount_socialtoken 
   TABLE DATA           l   COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public          renegado    false    257   G�      �          0    59702 
   taggit_tag 
   TABLE DATA           4   COPY public.taggit_tag (id, name, slug) FROM stdin;
    public          renegado    false    259   d�      �          0    59707    taggit_taggeditem 
   TABLE DATA           S   COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
    public          renegado    false    261   ��      �          0    59712 
   users_user 
   TABLE DATA           �   COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, is_professor, is_student) FROM stdin;
    public          renegado    false    263   ��      �          0    59718    users_user_groups 
   TABLE DATA           B   COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
    public          renegado    false    264   ��      �          0    59725    users_user_user_permissions 
   TABLE DATA           Q   COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          renegado    false    267   ��      �          0    59730    wagtailadmin_admin 
   TABLE DATA           0   COPY public.wagtailadmin_admin (id) FROM stdin;
    public          renegado    false    269   ��      �          0    59735    wagtailcore_collection 
   TABLE DATA           Q   COPY public.wagtailcore_collection (id, path, depth, numchild, name) FROM stdin;
    public          renegado    false    271   �      �          0    59745 %   wagtailcore_collectionviewrestriction 
   TABLE DATA           n   COPY public.wagtailcore_collectionviewrestriction (id, restriction_type, password, collection_id) FROM stdin;
    public          renegado    false    273   .�      �          0    59748 ,   wagtailcore_collectionviewrestriction_groups 
   TABLE DATA           r   COPY public.wagtailcore_collectionviewrestriction_groups (id, collectionviewrestriction_id, group_id) FROM stdin;
    public          renegado    false    274   K�                0    60871    wagtailcore_comment 
   TABLE DATA           �   COPY public.wagtailcore_comment (id, text, contentpath, "position", created_at, updated_at, resolved_at, page_id, resolved_by_id, revision_created_id, user_id) FROM stdin;
    public          renegado    false    334   h�                0    60882    wagtailcore_commentreply 
   TABLE DATA           i   COPY public.wagtailcore_commentreply (id, text, created_at, updated_at, comment_id, user_id) FROM stdin;
    public          renegado    false    336   ��      �          0    59755    wagtailcore_groupapprovaltask 
   TABLE DATA           D   COPY public.wagtailcore_groupapprovaltask (task_ptr_id) FROM stdin;
    public          renegado    false    277   ��      �          0    59758 $   wagtailcore_groupapprovaltask_groups 
   TABLE DATA           b   COPY public.wagtailcore_groupapprovaltask_groups (id, groupapprovaltask_id, group_id) FROM stdin;
    public          renegado    false    278   ��      �          0    59763 %   wagtailcore_groupcollectionpermission 
   TABLE DATA           k   COPY public.wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) FROM stdin;
    public          renegado    false    280   ��      �          0    59768    wagtailcore_grouppagepermission 
   TABLE DATA           a   COPY public.wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
    public          renegado    false    282   ��      �          0    59773    wagtailcore_locale 
   TABLE DATA           ?   COPY public.wagtailcore_locale (id, language_code) FROM stdin;
    public          renegado    false    284   �      �          0    59778    wagtailcore_page 
   TABLE DATA           �  COPY public.wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at, live_revision_id, last_published_at, draft_title, locked_at, locked_by_id, translation_key, locale_id, alias_of_id) FROM stdin;
    public          renegado    false    286   :�      �          0    59788    wagtailcore_pagelogentry 
   TABLE DATA           �   COPY public.wagtailcore_pagelogentry (id, label, action, data_json, "timestamp", content_changed, deleted, content_type_id, page_id, revision_id, user_id) FROM stdin;
    public          renegado    false    288   ��      �          0    59796    wagtailcore_pagerevision 
   TABLE DATA           �   COPY public.wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
    public          renegado    false    290   =�                0    60893    wagtailcore_pagesubscription 
   TABLE DATA           c   COPY public.wagtailcore_pagesubscription (id, comment_notifications, page_id, user_id) FROM stdin;
    public          renegado    false    338   0�      �          0    59804    wagtailcore_pageviewrestriction 
   TABLE DATA           b   COPY public.wagtailcore_pageviewrestriction (id, password, page_id, restriction_type) FROM stdin;
    public          renegado    false    292   U�      �          0    59807 &   wagtailcore_pageviewrestriction_groups 
   TABLE DATA           f   COPY public.wagtailcore_pageviewrestriction_groups (id, pageviewrestriction_id, group_id) FROM stdin;
    public          renegado    false    293   ��      �          0    59814    wagtailcore_site 
   TABLE DATA           h   COPY public.wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) FROM stdin;
    public          renegado    false    296   ��      �          0    59822    wagtailcore_task 
   TABLE DATA           M   COPY public.wagtailcore_task (id, name, active, content_type_id) FROM stdin;
    public          renegado    false    298   �      �          0    59827    wagtailcore_taskstate 
   TABLE DATA           �   COPY public.wagtailcore_taskstate (id, status, started_at, finished_at, content_type_id, page_revision_id, task_id, workflow_state_id, finished_by_id, comment) FROM stdin;
    public          renegado    false    300   C�      �          0    59835    wagtailcore_workflow 
   TABLE DATA           @   COPY public.wagtailcore_workflow (id, name, active) FROM stdin;
    public          renegado    false    302   `�      �          0    59840    wagtailcore_workflowpage 
   TABLE DATA           H   COPY public.wagtailcore_workflowpage (page_id, workflow_id) FROM stdin;
    public          renegado    false    304   ��      �          0    59843    wagtailcore_workflowstate 
   TABLE DATA           �   COPY public.wagtailcore_workflowstate (id, status, created_at, current_task_state_id, page_id, requested_by_id, workflow_id) FROM stdin;
    public          renegado    false    305   ��      �          0    59848    wagtailcore_workflowtask 
   TABLE DATA           X   COPY public.wagtailcore_workflowtask (id, sort_order, task_id, workflow_id) FROM stdin;
    public          renegado    false    307   ��      �          0    59853    wagtaildocs_document 
   TABLE DATA           �   COPY public.wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id, file_size, file_hash) FROM stdin;
    public          renegado    false    309   ��                0    59859    wagtaildocs_uploadeddocument 
   TABLE DATA           U   COPY public.wagtaildocs_uploadeddocument (id, file, uploaded_by_user_id) FROM stdin;
    public          renegado    false    311   �                0    59864    wagtailembeds_embed 
   TABLE DATA           �   COPY public.wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated, hash) FROM stdin;
    public          renegado    false    313   2�                0    59872    wagtailforms_formsubmission 
   TABLE DATA           Z   COPY public.wagtailforms_formsubmission (id, form_data, submit_time, page_id) FROM stdin;
    public          renegado    false    315   O�                0    59880    wagtailimages_image 
   TABLE DATA           �   COPY public.wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id, file_size, collection_id, file_hash) FROM stdin;
    public          renegado    false    317   l�      	          0    59890    wagtailimages_rendition 
   TABLE DATA           r   COPY public.wagtailimages_rendition (id, file, width, height, focal_point_key, filter_spec, image_id) FROM stdin;
    public          renegado    false    319   ��                0    59895    wagtailimages_uploadedimage 
   TABLE DATA           T   COPY public.wagtailimages_uploadedimage (id, file, uploaded_by_user_id) FROM stdin;
    public          renegado    false    321   ��                0    59900    wagtailredirects_redirect 
   TABLE DATA           y   COPY public.wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
    public          renegado    false    323   ��                0    59908    wagtailsearch_editorspick 
   TABLE DATA           c   COPY public.wagtailsearch_editorspick (id, sort_order, description, page_id, query_id) FROM stdin;
    public          renegado    false    325   �                0    59916    wagtailsearch_query 
   TABLE DATA           ?   COPY public.wagtailsearch_query (id, query_string) FROM stdin;
    public          renegado    false    327   )�                0    59921    wagtailsearch_querydailyhits 
   TABLE DATA           P   COPY public.wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
    public          renegado    false    329   F�                0    59926    wagtailusers_userprofile 
   TABLE DATA           �   COPY public.wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id, preferred_language, current_time_zone, avatar, updated_comments_notifications) FROM stdin;
    public          renegado    false    331   c�      g           0    0    account_emailaddress_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, false);
          public          renegado    false    201            h           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          renegado    false    203            i           0    0    accounts_professors_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.accounts_professors_id_seq', 4, true);
          public          renegado    false    205            j           0    0    accounts_students_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.accounts_students_id_seq', 2, true);
          public          renegado    false    207            k           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 5, true);
          public          renegado    false    209            l           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 18, true);
          public          renegado    false    211            m           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 295, true);
          public          renegado    false    213            n           0    0    base_bulksections_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.base_bulksections_id_seq', 1, false);
          public          renegado    false    216            o           0    0    base_colleges_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.base_colleges_id_seq', 6, true);
          public          renegado    false    218            p           0    0    base_coursecurriculum_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.base_coursecurriculum_id_seq', 6, true);
          public          renegado    false    220            q           0    0    base_departmentorderable_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.base_departmentorderable_id_seq', 1, false);
          public          renegado    false    222            r           0    0    base_departments_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.base_departments_id_seq', 27, true);
          public          renegado    false    224            s           0    0    base_professororderable_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.base_professororderable_id_seq', 1, false);
          public          renegado    false    226            t           0    0    base_roomorderable_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.base_roomorderable_id_seq', 1, false);
          public          renegado    false    228            u           0    0    base_rooms_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.base_rooms_id_seq', 8, true);
          public          renegado    false    230            v           0    0    base_sections_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.base_sections_id_seq', 31, true);
          public          renegado    false    232            w           0    0    base_subjects_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.base_subjects_id_seq', 163, true);
          public          renegado    false    234            x           0    0    base_subjectsorderable_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.base_subjectsorderable_id_seq', 425, true);
          public          renegado    false    236            y           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          renegado    false    240            z           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 72, true);
          public          renegado    false    242            {           0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 194, true);
          public          renegado    false    244            |           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          renegado    false    247            }           0    0    schedule_schedule_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.schedule_schedule_id_seq', 153, true);
          public          renegado    false    339            ~           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);
          public          renegado    false    252                       0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);
          public          renegado    false    254            �           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);
          public          renegado    false    256            �           0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);
          public          renegado    false    258            �           0    0    taggit_tag_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.taggit_tag_id_seq', 1, false);
          public          renegado    false    260            �           0    0    taggit_taggeditem_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 1, false);
          public          renegado    false    262            �           0    0    users_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.users_user_groups_id_seq', 6, true);
          public          renegado    false    265            �           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 8, true);
          public          renegado    false    266            �           0    0 "   users_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);
          public          renegado    false    268            �           0    0    wagtailadmin_admin_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.wagtailadmin_admin_id_seq', 1, false);
          public          renegado    false    270            �           0    0    wagtailcore_collection_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.wagtailcore_collection_id_seq', 1, true);
          public          renegado    false    272            �           0    0 3   wagtailcore_collectionviewrestriction_groups_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_groups_id_seq', 1, false);
          public          renegado    false    275            �           0    0 ,   wagtailcore_collectionviewrestriction_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.wagtailcore_collectionviewrestriction_id_seq', 1, false);
          public          renegado    false    276            �           0    0    wagtailcore_comment_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.wagtailcore_comment_id_seq', 1, false);
          public          renegado    false    333            �           0    0    wagtailcore_commentreply_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.wagtailcore_commentreply_id_seq', 1, false);
          public          renegado    false    335            �           0    0 +   wagtailcore_groupapprovaltask_groups_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.wagtailcore_groupapprovaltask_groups_id_seq', 1, true);
          public          renegado    false    279            �           0    0 ,   wagtailcore_groupcollectionpermission_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.wagtailcore_groupcollectionpermission_id_seq', 12, true);
          public          renegado    false    281            �           0    0 &   wagtailcore_grouppagepermission_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.wagtailcore_grouppagepermission_id_seq', 7, true);
          public          renegado    false    283            �           0    0    wagtailcore_locale_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.wagtailcore_locale_id_seq', 1, true);
          public          renegado    false    285            �           0    0    wagtailcore_page_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.wagtailcore_page_id_seq', 8, true);
          public          renegado    false    287            �           0    0    wagtailcore_pagelogentry_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.wagtailcore_pagelogentry_id_seq', 30, true);
          public          renegado    false    289            �           0    0    wagtailcore_pagerevision_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.wagtailcore_pagerevision_id_seq', 12, true);
          public          renegado    false    291            �           0    0 #   wagtailcore_pagesubscription_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.wagtailcore_pagesubscription_id_seq', 1, true);
          public          renegado    false    337            �           0    0 -   wagtailcore_pageviewrestriction_groups_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_groups_id_seq', 7, true);
          public          renegado    false    294            �           0    0 &   wagtailcore_pageviewrestriction_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.wagtailcore_pageviewrestriction_id_seq', 4, true);
          public          renegado    false    295            �           0    0    wagtailcore_site_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.wagtailcore_site_id_seq', 2, true);
          public          renegado    false    297            �           0    0    wagtailcore_task_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.wagtailcore_task_id_seq', 1, true);
          public          renegado    false    299            �           0    0    wagtailcore_taskstate_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.wagtailcore_taskstate_id_seq', 1, false);
          public          renegado    false    301            �           0    0    wagtailcore_workflow_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.wagtailcore_workflow_id_seq', 1, true);
          public          renegado    false    303            �           0    0     wagtailcore_workflowstate_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.wagtailcore_workflowstate_id_seq', 1, false);
          public          renegado    false    306            �           0    0    wagtailcore_workflowtask_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.wagtailcore_workflowtask_id_seq', 1, true);
          public          renegado    false    308            �           0    0    wagtaildocs_document_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.wagtaildocs_document_id_seq', 1, false);
          public          renegado    false    310            �           0    0 #   wagtaildocs_uploadeddocument_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.wagtaildocs_uploadeddocument_id_seq', 1, false);
          public          renegado    false    312            �           0    0    wagtailembeds_embed_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.wagtailembeds_embed_id_seq', 1, false);
          public          renegado    false    314            �           0    0 "   wagtailforms_formsubmission_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.wagtailforms_formsubmission_id_seq', 1, false);
          public          renegado    false    316            �           0    0    wagtailimages_image_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.wagtailimages_image_id_seq', 4, true);
          public          renegado    false    318            �           0    0    wagtailimages_rendition_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.wagtailimages_rendition_id_seq', 8, true);
          public          renegado    false    320            �           0    0 "   wagtailimages_uploadedimage_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.wagtailimages_uploadedimage_id_seq', 1, false);
          public          renegado    false    322            �           0    0     wagtailredirects_redirect_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.wagtailredirects_redirect_id_seq', 1, false);
          public          renegado    false    324            �           0    0     wagtailsearch_editorspick_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.wagtailsearch_editorspick_id_seq', 1, false);
          public          renegado    false    326            �           0    0    wagtailsearch_query_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.wagtailsearch_query_id_seq', 1, false);
          public          renegado    false    328            �           0    0 #   wagtailsearch_querydailyhits_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.wagtailsearch_querydailyhits_id_seq', 1, false);
          public          renegado    false    330            �           0    0    wagtailusers_userprofile_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.wagtailusers_userprofile_id_seq', 2, true);
          public          renegado    false    332            2           2606    60000 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public            renegado    false    200            4           2606    60002 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public            renegado    false    200            9           2606    60004 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public            renegado    false    202            ;           2606    60006 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public            renegado    false    202            >           2606    60008 ,   accounts_professors accounts_professors_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.accounts_professors
    ADD CONSTRAINT accounts_professors_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.accounts_professors DROP CONSTRAINT accounts_professors_pkey;
       public            renegado    false    204            B           2606    61049 3   accounts_professors accounts_professors_user_id_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.accounts_professors
    ADD CONSTRAINT accounts_professors_user_id_key UNIQUE (user_id);
 ]   ALTER TABLE ONLY public.accounts_professors DROP CONSTRAINT accounts_professors_user_id_key;
       public            renegado    false    204            D           2606    60010 (   accounts_students accounts_students_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.accounts_students
    ADD CONSTRAINT accounts_students_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.accounts_students DROP CONSTRAINT accounts_students_pkey;
       public            renegado    false    206            G           2606    61056 /   accounts_students accounts_students_user_id_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.accounts_students
    ADD CONSTRAINT accounts_students_user_id_key UNIQUE (user_id);
 Y   ALTER TABLE ONLY public.accounts_students DROP CONSTRAINT accounts_students_user_id_key;
       public            renegado    false    206            J           2606    60012    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            renegado    false    208            O           2606    60014 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            renegado    false    210    210            R           2606    60016 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            renegado    false    210            L           2606    60018    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            renegado    false    208            U           2606    60020 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            renegado    false    212    212            W           2606    60022 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            renegado    false    212            \           2606    60024 (   base_bulksections base_bulksections_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.base_bulksections
    ADD CONSTRAINT base_bulksections_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.base_bulksections DROP CONSTRAINT base_bulksections_pkey;
       public            renegado    false    215            ^           2606    60026     base_colleges base_colleges_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.base_colleges
    ADD CONSTRAINT base_colleges_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.base_colleges DROP CONSTRAINT base_colleges_pkey;
       public            renegado    false    217            a           2606    60028 0   base_coursecurriculum base_coursecurriculum_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.base_coursecurriculum
    ADD CONSTRAINT base_coursecurriculum_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.base_coursecurriculum DROP CONSTRAINT base_coursecurriculum_pkey;
       public            renegado    false    219            e           2606    60030 6   base_departmentorderable base_departmentorderable_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.base_departmentorderable
    ADD CONSTRAINT base_departmentorderable_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.base_departmentorderable DROP CONSTRAINT base_departmentorderable_pkey;
       public            renegado    false    221            h           2606    60032 &   base_departments base_departments_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.base_departments
    ADD CONSTRAINT base_departments_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.base_departments DROP CONSTRAINT base_departments_pkey;
       public            renegado    false    223            Y           2606    60034     base_basepage base_homepage_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.base_basepage
    ADD CONSTRAINT base_homepage_pkey PRIMARY KEY (page_ptr_id);
 J   ALTER TABLE ONLY public.base_basepage DROP CONSTRAINT base_homepage_pkey;
       public            renegado    false    214            j           2606    60036 4   base_professororderable base_professororderable_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.base_professororderable
    ADD CONSTRAINT base_professororderable_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.base_professororderable DROP CONSTRAINT base_professororderable_pkey;
       public            renegado    false    225            n           2606    60040 *   base_roomorderable base_roomorderable_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.base_roomorderable
    ADD CONSTRAINT base_roomorderable_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.base_roomorderable DROP CONSTRAINT base_roomorderable_pkey;
       public            renegado    false    227            s           2606    60042    base_rooms base_rooms_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.base_rooms
    ADD CONSTRAINT base_rooms_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.base_rooms DROP CONSTRAINT base_rooms_pkey;
       public            renegado    false    229            v           2606    60046     base_sections base_sections_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.base_sections
    ADD CONSTRAINT base_sections_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.base_sections DROP CONSTRAINT base_sections_pkey;
       public            renegado    false    231            y           2606    60050     base_subjects base_subjects_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.base_subjects
    ADD CONSTRAINT base_subjects_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.base_subjects DROP CONSTRAINT base_subjects_pkey;
       public            renegado    false    233            �           2606    60052 2   base_subjectsorderable base_subjectsorderable_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.base_subjectsorderable
    ADD CONSTRAINT base_subjectsorderable_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.base_subjectsorderable DROP CONSTRAINT base_subjectsorderable_pkey;
       public            renegado    false    235            �           2606    60054 >   class_schedule_classschedule class_schedule_classschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.class_schedule_classschedule
    ADD CONSTRAINT class_schedule_classschedule_pkey PRIMARY KEY (page_ptr_id);
 h   ALTER TABLE ONLY public.class_schedule_classschedule DROP CONSTRAINT class_schedule_classschedule_pkey;
       public            renegado    false    237            �           2606    60056 N   class_schedule_classscheduleoverview class_schedule_classscheduleoverview_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.class_schedule_classscheduleoverview
    ADD CONSTRAINT class_schedule_classscheduleoverview_pkey PRIMARY KEY (page_ptr_id);
 x   ALTER TABLE ONLY public.class_schedule_classscheduleoverview DROP CONSTRAINT class_schedule_classscheduleoverview_pkey;
       public            renegado    false    238            �           2606    60058 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            renegado    false    239            �           2606    60060 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            renegado    false    241    241            �           2606    60062 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            renegado    false    241            �           2606    60064 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            renegado    false    243            �           2606    60066 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            renegado    false    245            �           2606    60068 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            renegado    false    246            �           2606    60070    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            renegado    false    246            �           2606    60072 R   instructor_schedule_instructorschedule instructor_schedule_instructorschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.instructor_schedule_instructorschedule
    ADD CONSTRAINT instructor_schedule_instructorschedule_pkey PRIMARY KEY (page_ptr_id);
 |   ALTER TABLE ONLY public.instructor_schedule_instructorschedule DROP CONSTRAINT instructor_schedule_instructorschedule_pkey;
       public            renegado    false    248            �           2606    60074 :   room_schedule_roomschedule room_schedule_roomschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.room_schedule_roomschedule
    ADD CONSTRAINT room_schedule_roomschedule_pkey PRIMARY KEY (page_ptr_id);
 d   ALTER TABLE ONLY public.room_schedule_roomschedule DROP CONSTRAINT room_schedule_roomschedule_pkey;
       public            renegado    false    249            �           2606    60080 ,   schedule_schedulepage schedule_schedule_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.schedule_schedulepage
    ADD CONSTRAINT schedule_schedule_pkey PRIMARY KEY (page_ptr_id);
 V   ALTER TABLE ONLY public.schedule_schedulepage DROP CONSTRAINT schedule_schedule_pkey;
       public            renegado    false    250            �           2606    61018 )   schedule_schedule schedule_schedule_pkey1 
   CONSTRAINT     g   ALTER TABLE ONLY public.schedule_schedule
    ADD CONSTRAINT schedule_schedule_pkey1 PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.schedule_schedule DROP CONSTRAINT schedule_schedule_pkey1;
       public            renegado    false    340            �           2606    60084 <   socialaccount_socialaccount socialaccount_socialaccount_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
       public            renegado    false    251            �           2606    60086 R   socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);
 |   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq;
       public            renegado    false    251    251            �           2606    60088 Y   socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);
 �   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq;
       public            renegado    false    255    255            �           2606    60090 4   socialaccount_socialapp socialaccount_socialapp_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
       public            renegado    false    253            �           2606    60092 @   socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_pkey;
       public            renegado    false    255            �           2606    60094 S   socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);
 }   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq;
       public            renegado    false    257    257            �           2606    60096 8   socialaccount_socialtoken socialaccount_socialtoken_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
       public            renegado    false    257            �           2606    60098    taggit_tag taggit_tag_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_name_key;
       public            renegado    false    259            �           2606    60100    taggit_tag taggit_tag_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_pkey;
       public            renegado    false    259            �           2606    60102    taggit_tag taggit_tag_slug_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);
 H   ALTER TABLE ONLY public.taggit_tag DROP CONSTRAINT taggit_tag_slug_key;
       public            renegado    false    259            �           2606    60104 J   taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);
 t   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq;
       public            renegado    false    261    261    261            �           2606    60106 (   taggit_taggeditem taggit_taggeditem_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_pkey;
       public            renegado    false    261            �           2606    60108 (   users_user_groups users_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_pkey;
       public            renegado    false    264            �           2606    60110 B   users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq;
       public            renegado    false    264    264            �           2606    60112    users_user users_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_pkey;
       public            renegado    false    263            �           2606    60114 <   users_user_user_permissions users_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_pkey;
       public            renegado    false    267            �           2606    60116 [   users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq;
       public            renegado    false    267    267            �           2606    60118 "   users_user users_user_username_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);
 L   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_username_key;
       public            renegado    false    263            �           2606    60120 *   wagtailadmin_admin wagtailadmin_admin_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.wagtailadmin_admin
    ADD CONSTRAINT wagtailadmin_admin_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.wagtailadmin_admin DROP CONSTRAINT wagtailadmin_admin_pkey;
       public            renegado    false    269            �           2606    60122 6   wagtailcore_collection wagtailcore_collection_path_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_path_key UNIQUE (path);
 `   ALTER TABLE ONLY public.wagtailcore_collection DROP CONSTRAINT wagtailcore_collection_path_key;
       public            renegado    false    271            �           2606    60124 2   wagtailcore_collection wagtailcore_collection_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.wagtailcore_collection DROP CONSTRAINT wagtailcore_collection_pkey;
       public            renegado    false    271            �           2606    60126 l   wagtailcore_collectionviewrestriction_groups wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq UNIQUE (collectionviewrestriction_id, group_id);
 �   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq;
       public            renegado    false    274    274            �           2606    60128 ^   wagtailcore_collectionviewrestriction_groups wagtailcore_collectionviewrestriction_groups_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey;
       public            renegado    false    274            �           2606    60130 P   wagtailcore_collectionviewrestriction wagtailcore_collectionviewrestriction_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction DROP CONSTRAINT wagtailcore_collectionviewrestriction_pkey;
       public            renegado    false    273            �           2606    60879 ,   wagtailcore_comment wagtailcore_comment_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT wagtailcore_comment_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.wagtailcore_comment DROP CONSTRAINT wagtailcore_comment_pkey;
       public            renegado    false    334            �           2606    60890 6   wagtailcore_commentreply wagtailcore_commentreply_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.wagtailcore_commentreply
    ADD CONSTRAINT wagtailcore_commentreply_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.wagtailcore_commentreply DROP CONSTRAINT wagtailcore_commentreply_pkey;
       public            renegado    false    336            �           2606    60132 d   wagtailcore_groupapprovaltask_groups wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq UNIQUE (groupapprovaltask_id, group_id);
 �   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups DROP CONSTRAINT wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq;
       public            renegado    false    278    278            �           2606    60134 N   wagtailcore_groupapprovaltask_groups wagtailcore_groupapprovaltask_groups_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapprovaltask_groups_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups DROP CONSTRAINT wagtailcore_groupapprovaltask_groups_pkey;
       public            renegado    false    278            �           2606    60136 @   wagtailcore_groupapprovaltask wagtailcore_groupapprovaltask_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask
    ADD CONSTRAINT wagtailcore_groupapprovaltask_pkey PRIMARY KEY (task_ptr_id);
 j   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask DROP CONSTRAINT wagtailcore_groupapprovaltask_pkey;
       public            renegado    false    277            �           2606    60138 e   wagtailcore_groupcollectionpermission wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq UNIQUE (group_id, collection_id, permission_id);
 �   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq;
       public            renegado    false    280    280    280            �           2606    60140 P   wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcollectionpermission_pkey;
       public            renegado    false    280            �           2606    60142 _   wagtailcore_grouppagepermission wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq UNIQUE (group_id, page_id, permission_type);
 �   ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq;
       public            renegado    false    282    282    282            �           2606    60144 D   wagtailcore_grouppagepermission wagtailcore_grouppagepermission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppagepermission_pkey;
       public            renegado    false    282            �           2606    60146 7   wagtailcore_locale wagtailcore_locale_language_code_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.wagtailcore_locale
    ADD CONSTRAINT wagtailcore_locale_language_code_key UNIQUE (language_code);
 a   ALTER TABLE ONLY public.wagtailcore_locale DROP CONSTRAINT wagtailcore_locale_language_code_key;
       public            renegado    false    284                        2606    60148 *   wagtailcore_locale wagtailcore_locale_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.wagtailcore_locale
    ADD CONSTRAINT wagtailcore_locale_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.wagtailcore_locale DROP CONSTRAINT wagtailcore_locale_pkey;
       public            renegado    false    284            
           2606    60150 *   wagtailcore_page wagtailcore_page_path_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);
 T   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_path_key;
       public            renegado    false    286                       2606    60152 &   wagtailcore_page wagtailcore_page_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_pkey;
       public            renegado    false    286                       2606    60154 I   wagtailcore_page wagtailcore_page_translation_key_locale_id_9b041bad_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_translation_key_locale_id_9b041bad_uniq UNIQUE (translation_key, locale_id);
 s   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_translation_key_locale_id_9b041bad_uniq;
       public            renegado    false    286    286                       2606    60156 6   wagtailcore_pagelogentry wagtailcore_pagelogentry_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.wagtailcore_pagelogentry
    ADD CONSTRAINT wagtailcore_pagelogentry_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.wagtailcore_pagelogentry DROP CONSTRAINT wagtailcore_pagelogentry_pkey;
       public            renegado    false    288                       2606    60158 6   wagtailcore_pagerevision wagtailcore_pagerevision_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.wagtailcore_pagerevision DROP CONSTRAINT wagtailcore_pagerevision_pkey;
       public            renegado    false    290            �           2606    60936 W   wagtailcore_pagesubscription wagtailcore_pagesubscription_page_id_user_id_0cef73ed_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_pagesubscription
    ADD CONSTRAINT wagtailcore_pagesubscription_page_id_user_id_0cef73ed_uniq UNIQUE (page_id, user_id);
 �   ALTER TABLE ONLY public.wagtailcore_pagesubscription DROP CONSTRAINT wagtailcore_pagesubscription_page_id_user_id_0cef73ed_uniq;
       public            renegado    false    338    338            �           2606    60898 >   wagtailcore_pagesubscription wagtailcore_pagesubscription_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.wagtailcore_pagesubscription
    ADD CONSTRAINT wagtailcore_pagesubscription_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.wagtailcore_pagesubscription DROP CONSTRAINT wagtailcore_pagesubscription_pkey;
       public            renegado    false    338            %           2606    60160 f   wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq UNIQUE (pageviewrestriction_id, group_id);
 �   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq;
       public            renegado    false    293    293            )           2606    60162 R   wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrestriction_groups_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey;
       public            renegado    false    293            #           2606    60164 D   wagtailcore_pageviewrestriction wagtailcore_pageviewrestriction_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction DROP CONSTRAINT wagtailcore_pageviewrestriction_pkey;
       public            renegado    false    292            -           2606    60166 =   wagtailcore_site wagtailcore_site_hostname_port_2c626d70_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq UNIQUE (hostname, port);
 g   ALTER TABLE ONLY public.wagtailcore_site DROP CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq;
       public            renegado    false    296    296            /           2606    60168 &   wagtailcore_site wagtailcore_site_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.wagtailcore_site DROP CONSTRAINT wagtailcore_site_pkey;
       public            renegado    false    296            3           2606    60170 &   wagtailcore_task wagtailcore_task_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.wagtailcore_task
    ADD CONSTRAINT wagtailcore_task_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.wagtailcore_task DROP CONSTRAINT wagtailcore_task_pkey;
       public            renegado    false    298            8           2606    60172 0   wagtailcore_taskstate wagtailcore_taskstate_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.wagtailcore_taskstate DROP CONSTRAINT wagtailcore_taskstate_pkey;
       public            renegado    false    300            <           2606    60174 .   wagtailcore_workflow wagtailcore_workflow_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.wagtailcore_workflow
    ADD CONSTRAINT wagtailcore_workflow_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.wagtailcore_workflow DROP CONSTRAINT wagtailcore_workflow_pkey;
       public            renegado    false    302            >           2606    60176 6   wagtailcore_workflowpage wagtailcore_workflowpage_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflowpage_pkey PRIMARY KEY (page_id);
 `   ALTER TABLE ONLY public.wagtailcore_workflowpage DROP CONSTRAINT wagtailcore_workflowpage_pkey;
       public            renegado    false    304            B           2606    60178 M   wagtailcore_workflowstate wagtailcore_workflowstate_current_task_state_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflowstate_current_task_state_id_key UNIQUE (current_task_state_id);
 w   ALTER TABLE ONLY public.wagtailcore_workflowstate DROP CONSTRAINT wagtailcore_workflowstate_current_task_state_id_key;
       public            renegado    false    305            E           2606    60180 8   wagtailcore_workflowstate wagtailcore_workflowstate_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflowstate_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.wagtailcore_workflowstate DROP CONSTRAINT wagtailcore_workflowstate_pkey;
       public            renegado    false    305            I           2606    60182 6   wagtailcore_workflowtask wagtailcore_workflowtask_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflowtask_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.wagtailcore_workflowtask DROP CONSTRAINT wagtailcore_workflowtask_pkey;
       public            renegado    false    307            M           2606    60184 S   wagtailcore_workflowtask wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq UNIQUE (workflow_id, task_id);
 }   ALTER TABLE ONLY public.wagtailcore_workflowtask DROP CONSTRAINT wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq;
       public            renegado    false    307    307            P           2606    60186 .   wagtaildocs_document wagtaildocs_document_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.wagtaildocs_document DROP CONSTRAINT wagtaildocs_document_pkey;
       public            renegado    false    309            S           2606    60188 >   wagtaildocs_uploadeddocument wagtaildocs_uploadeddocument_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.wagtaildocs_uploadeddocument
    ADD CONSTRAINT wagtaildocs_uploadeddocument_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.wagtaildocs_uploadeddocument DROP CONSTRAINT wagtaildocs_uploadeddocument_pkey;
       public            renegado    false    311            W           2606    60190 :   wagtailembeds_embed wagtailembeds_embed_hash_c9bd8c9a_uniq 
   CONSTRAINT     u   ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_hash_c9bd8c9a_uniq UNIQUE (hash);
 d   ALTER TABLE ONLY public.wagtailembeds_embed DROP CONSTRAINT wagtailembeds_embed_hash_c9bd8c9a_uniq;
       public            renegado    false    313            Y           2606    60192 ,   wagtailembeds_embed wagtailembeds_embed_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.wagtailembeds_embed DROP CONSTRAINT wagtailembeds_embed_pkey;
       public            renegado    false    313            \           2606    60194 <   wagtailforms_formsubmission wagtailforms_formsubmission_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.wagtailforms_formsubmission DROP CONSTRAINT wagtailforms_formsubmission_pkey;
       public            renegado    false    315            `           2606    60196 ,   wagtailimages_image wagtailimages_image_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.wagtailimages_image DROP CONSTRAINT wagtailimages_image_pkey;
       public            renegado    false    317            f           2606    60198 V   wagtailimages_rendition wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq UNIQUE (image_id, filter_spec, focal_point_key);
 �   ALTER TABLE ONLY public.wagtailimages_rendition DROP CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq;
       public            renegado    false    319    319    319            h           2606    60200 4   wagtailimages_rendition wagtailimages_rendition_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.wagtailimages_rendition DROP CONSTRAINT wagtailimages_rendition_pkey;
       public            renegado    false    319            j           2606    60202 <   wagtailimages_uploadedimage wagtailimages_uploadedimage_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.wagtailimages_uploadedimage
    ADD CONSTRAINT wagtailimages_uploadedimage_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.wagtailimages_uploadedimage DROP CONSTRAINT wagtailimages_uploadedimage_pkey;
       public            renegado    false    321            o           2606    60204 R   wagtailredirects_redirect wagtailredirects_redirect_old_path_site_id_783622d7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq UNIQUE (old_path, site_id);
 |   ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq;
       public            renegado    false    323    323            q           2606    60206 8   wagtailredirects_redirect wagtailredirects_redirect_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_redirect_pkey;
       public            renegado    false    323            v           2606    60208 8   wagtailsearch_editorspick wagtailsearch_editorspick_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.wagtailsearch_editorspick DROP CONSTRAINT wagtailsearch_editorspick_pkey;
       public            renegado    false    325            y           2606    60210 ,   wagtailsearch_query wagtailsearch_query_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.wagtailsearch_query DROP CONSTRAINT wagtailsearch_query_pkey;
       public            renegado    false    327            |           2606    60212 8   wagtailsearch_query wagtailsearch_query_query_string_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);
 b   ALTER TABLE ONLY public.wagtailsearch_query DROP CONSTRAINT wagtailsearch_query_query_string_key;
       public            renegado    false    327            ~           2606    60214 >   wagtailsearch_querydailyhits wagtailsearch_querydailyhits_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.wagtailsearch_querydailyhits DROP CONSTRAINT wagtailsearch_querydailyhits_pkey;
       public            renegado    false    329            �           2606    60216 U   wagtailsearch_querydailyhits wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq UNIQUE (query_id, date);
    ALTER TABLE ONLY public.wagtailsearch_querydailyhits DROP CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq;
       public            renegado    false    329    329            �           2606    60218 6   wagtailusers_userprofile wagtailusers_userprofile_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.wagtailusers_userprofile DROP CONSTRAINT wagtailusers_userprofile_pkey;
       public            renegado    false    331            �           2606    60220 =   wagtailusers_userprofile wagtailusers_userprofile_user_id_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);
 g   ALTER TABLE ONLY public.wagtailusers_userprofile DROP CONSTRAINT wagtailusers_userprofile_user_id_key;
       public            renegado    false    331            0           1259    60221 (   account_emailaddress_email_03be32b2_like    INDEX     ~   CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public            renegado    false    200            5           1259    60222 %   account_emailaddress_user_id_2c513194    INDEX     i   CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public            renegado    false    200            6           1259    60223 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     �   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public            renegado    false    202            7           1259    60224 +   account_emailconfirmation_key_f43612bd_like    INDEX     �   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public            renegado    false    202            <           1259    60225 1   accounts_professors_choose_department_id_d24963f0    INDEX     �   CREATE INDEX accounts_professors_choose_department_id_d24963f0 ON public.accounts_professors USING btree (choose_department_id);
 E   DROP INDEX public.accounts_professors_choose_department_id_d24963f0;
       public            renegado    false    204            ?           1259    61080 /   accounts_professors_profile_picture_id_6aeb0e42    INDEX     }   CREATE INDEX accounts_professors_profile_picture_id_6aeb0e42 ON public.accounts_professors USING btree (profile_picture_id);
 C   DROP INDEX public.accounts_professors_profile_picture_id_6aeb0e42;
       public            renegado    false    204            @           1259    60226 '   accounts_professors_section_id_35634169    INDEX     m   CREATE INDEX accounts_professors_section_id_35634169 ON public.accounts_professors USING btree (section_id);
 ;   DROP INDEX public.accounts_professors_section_id_35634169;
       public            renegado    false    204            E           1259    60227 %   accounts_students_section_id_516be748    INDEX     i   CREATE INDEX accounts_students_section_id_516be748 ON public.accounts_students USING btree (section_id);
 9   DROP INDEX public.accounts_students_section_id_516be748;
       public            renegado    false    206            H           1259    60228    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            renegado    false    208            M           1259    60229 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            renegado    false    210            P           1259    60230 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            renegado    false    210            S           1259    60231 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            renegado    false    212            Z           1259    60232 /   base_bulksections_course_curriculum_id_ab2960b2    INDEX     }   CREATE INDEX base_bulksections_course_curriculum_id_ab2960b2 ON public.base_bulksections USING btree (course_curriculum_id);
 C   DROP INDEX public.base_bulksections_course_curriculum_id_ab2960b2;
       public            renegado    false    215            _           1259    60233 3   base_coursecurriculum_choose_department_id_e0bcfe79    INDEX     �   CREATE INDEX base_coursecurriculum_choose_department_id_e0bcfe79 ON public.base_coursecurriculum USING btree (choose_department_id);
 G   DROP INDEX public.base_coursecurriculum_choose_department_id_e0bcfe79;
       public            renegado    false    219            b           1259    60234 2   base_departmentorderable_college_model_id_17d1f9d9    INDEX     �   CREATE INDEX base_departmentorderable_college_model_id_17d1f9d9 ON public.base_departmentorderable USING btree (college_model_id);
 F   DROP INDEX public.base_departmentorderable_college_model_id_17d1f9d9;
       public            renegado    false    221            c           1259    60235 /   base_departmentorderable_department_id_9d11b668    INDEX     }   CREATE INDEX base_departmentorderable_department_id_9d11b668 ON public.base_departmentorderable USING btree (department_id);
 C   DROP INDEX public.base_departmentorderable_department_id_9d11b668;
       public            renegado    false    221            f           1259    60236 +   base_departments_Choose_College_id_7b175eb0    INDEX     y   CREATE INDEX "base_departments_Choose_College_id_7b175eb0" ON public.base_departments USING btree ("Choose_College_id");
 A   DROP INDEX public."base_departments_Choose_College_id_7b175eb0";
       public            renegado    false    223            k           1259    60237 -   base_professororderable_professor_id_1237efd1    INDEX     y   CREATE INDEX base_professororderable_professor_id_1237efd1 ON public.base_professororderable USING btree (professor_id);
 A   DROP INDEX public.base_professororderable_professor_id_1237efd1;
       public            renegado    false    225            l           1259    60238 .   base_professororderable_room_model_id_1af28a3b    INDEX     {   CREATE INDEX base_professororderable_room_model_id_1af28a3b ON public.base_professororderable USING btree (room_model_id);
 B   DROP INDEX public.base_professororderable_room_model_id_1af28a3b;
       public            renegado    false    225            o           1259    60239 #   base_roomorderable_room_id_1268bb1c    INDEX     e   CREATE INDEX base_roomorderable_room_id_1268bb1c ON public.base_roomorderable USING btree (room_id);
 7   DROP INDEX public.base_roomorderable_room_id_1268bb1c;
       public            renegado    false    227            p           1259    60240 )   base_roomorderable_room_model_id_c59edb9a    INDEX     q   CREATE INDEX base_roomorderable_room_model_id_c59edb9a ON public.base_roomorderable USING btree (room_model_id);
 =   DROP INDEX public.base_roomorderable_room_model_id_c59edb9a;
       public            renegado    false    227            q           1259    60241 (   base_rooms_choose_department_id_87b4d1da    INDEX     o   CREATE INDEX base_rooms_choose_department_id_87b4d1da ON public.base_rooms USING btree (choose_department_id);
 <   DROP INDEX public.base_rooms_choose_department_id_87b4d1da;
       public            renegado    false    229            t           1259    60242 +   base_sections_course_curriculum_id_5771a04b    INDEX     u   CREATE INDEX base_sections_course_curriculum_id_5771a04b ON public.base_sections USING btree (course_curriculum_id);
 ?   DROP INDEX public.base_sections_course_curriculum_id_5771a04b;
       public            renegado    false    231            w           1259    60243 +   base_subjects_choose_department_id_627dacde    INDEX     u   CREATE INDEX base_subjects_choose_department_id_627dacde ON public.base_subjects USING btree (choose_department_id);
 ?   DROP INDEX public.base_subjects_choose_department_id_627dacde;
       public            renegado    false    233            z           1259    60244 ;   base_subjectsorderable_course_curriculum_model1_id_adfcdf03    INDEX     �   CREATE INDEX base_subjectsorderable_course_curriculum_model1_id_adfcdf03 ON public.base_subjectsorderable USING btree (first_year_first_sem_id);
 O   DROP INDEX public.base_subjectsorderable_course_curriculum_model1_id_adfcdf03;
       public            renegado    false    235            {           1259    60245 ;   base_subjectsorderable_course_curriculum_model2_id_1f3a20a8    INDEX     �   CREATE INDEX base_subjectsorderable_course_curriculum_model2_id_1f3a20a8 ON public.base_subjectsorderable USING btree (first_year_second_sem_id);
 O   DROP INDEX public.base_subjectsorderable_course_curriculum_model2_id_1f3a20a8;
       public            renegado    false    235            |           1259    60246 ;   base_subjectsorderable_course_curriculum_model3_id_4b3fc7d8    INDEX     �   CREATE INDEX base_subjectsorderable_course_curriculum_model3_id_4b3fc7d8 ON public.base_subjectsorderable USING btree (second_year_first_sem_id);
 O   DROP INDEX public.base_subjectsorderable_course_curriculum_model3_id_4b3fc7d8;
       public            renegado    false    235            }           1259    60247 ;   base_subjectsorderable_course_curriculum_model4_id_0495d04d    INDEX     �   CREATE INDEX base_subjectsorderable_course_curriculum_model4_id_0495d04d ON public.base_subjectsorderable USING btree (second_year_second_sem_id);
 O   DROP INDEX public.base_subjectsorderable_course_curriculum_model4_id_0495d04d;
       public            renegado    false    235            ~           1259    60248 ;   base_subjectsorderable_course_curriculum_model5_id_8e05c4fb    INDEX     �   CREATE INDEX base_subjectsorderable_course_curriculum_model5_id_8e05c4fb ON public.base_subjectsorderable USING btree (third_year_first_sem_id);
 O   DROP INDEX public.base_subjectsorderable_course_curriculum_model5_id_8e05c4fb;
       public            renegado    false    235                       1259    60249 ;   base_subjectsorderable_course_curriculum_model6_id_d0a60dcf    INDEX     �   CREATE INDEX base_subjectsorderable_course_curriculum_model6_id_d0a60dcf ON public.base_subjectsorderable USING btree (third_year_second_sem_id);
 O   DROP INDEX public.base_subjectsorderable_course_curriculum_model6_id_d0a60dcf;
       public            renegado    false    235            �           1259    60250 ;   base_subjectsorderable_course_curriculum_model7_id_e364d150    INDEX     �   CREATE INDEX base_subjectsorderable_course_curriculum_model7_id_e364d150 ON public.base_subjectsorderable USING btree (fourth_year_first_sem_id);
 O   DROP INDEX public.base_subjectsorderable_course_curriculum_model7_id_e364d150;
       public            renegado    false    235            �           1259    60251 ;   base_subjectsorderable_course_curriculum_model8_id_a014fe85    INDEX     �   CREATE INDEX base_subjectsorderable_course_curriculum_model8_id_a014fe85 ON public.base_subjectsorderable USING btree (fourth_year_second_sem_id);
 O   DROP INDEX public.base_subjectsorderable_course_curriculum_model8_id_a014fe85;
       public            renegado    false    235            �           1259    60252 2   base_subjectsorderable_professor_model_id_48cc430f    INDEX     �   CREATE INDEX base_subjectsorderable_professor_model_id_48cc430f ON public.base_subjectsorderable USING btree (professor_model_id);
 F   DROP INDEX public.base_subjectsorderable_professor_model_id_48cc430f;
       public            renegado    false    235            �           1259    60253 *   base_subjectsorderable_subject_id_1f79148d    INDEX     s   CREATE INDEX base_subjectsorderable_subject_id_1f79148d ON public.base_subjectsorderable USING btree (subject_id);
 >   DROP INDEX public.base_subjectsorderable_subject_id_1f79148d;
       public            renegado    false    235            �           1259    60254 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            renegado    false    239            �           1259    60255 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            renegado    false    239            �           1259    60256 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            renegado    false    245            �           1259    60257 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            renegado    false    245            �           1259    60258     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            renegado    false    246            �           1259    61039 "   schedule_schedule_prof_id_45d3177c    INDEX     c   CREATE INDEX schedule_schedule_prof_id_45d3177c ON public.schedule_schedule USING btree (prof_id);
 6   DROP INDEX public.schedule_schedule_prof_id_45d3177c;
       public            renegado    false    340            �           1259    61040 "   schedule_schedule_room_id_32edb942    INDEX     c   CREATE INDEX schedule_schedule_room_id_32edb942 ON public.schedule_schedule USING btree (room_id);
 6   DROP INDEX public.schedule_schedule_room_id_32edb942;
       public            renegado    false    340            �           1259    61041 %   schedule_schedule_section_id_6bb26c55    INDEX     i   CREATE INDEX schedule_schedule_section_id_6bb26c55 ON public.schedule_schedule USING btree (section_id);
 9   DROP INDEX public.schedule_schedule_section_id_6bb26c55;
       public            renegado    false    340            �           1259    61042 %   schedule_schedule_subject_id_0dcb0e0f    INDEX     i   CREATE INDEX schedule_schedule_subject_id_0dcb0e0f ON public.schedule_schedule USING btree (subject_id);
 9   DROP INDEX public.schedule_schedule_subject_id_0dcb0e0f;
       public            renegado    false    340            �           1259    60259 ,   socialaccount_socialaccount_user_id_8146e70c    INDEX     w   CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);
 @   DROP INDEX public.socialaccount_socialaccount_user_id_8146e70c;
       public            renegado    false    251            �           1259    60260 .   socialaccount_socialapp_sites_site_id_2579dee5    INDEX     {   CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);
 B   DROP INDEX public.socialaccount_socialapp_sites_site_id_2579dee5;
       public            renegado    false    255            �           1259    60261 3   socialaccount_socialapp_sites_socialapp_id_97fb6e7d    INDEX     �   CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);
 G   DROP INDEX public.socialaccount_socialapp_sites_socialapp_id_97fb6e7d;
       public            renegado    false    255            �           1259    60262 -   socialaccount_socialtoken_account_id_951f210e    INDEX     y   CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);
 A   DROP INDEX public.socialaccount_socialtoken_account_id_951f210e;
       public            renegado    false    257            �           1259    60263 )   socialaccount_socialtoken_app_id_636a42d7    INDEX     q   CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);
 =   DROP INDEX public.socialaccount_socialtoken_app_id_636a42d7;
       public            renegado    false    257            �           1259    60264    taggit_tag_name_58eb2ed9_like    INDEX     h   CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.taggit_tag_name_58eb2ed9_like;
       public            renegado    false    259            �           1259    60265    taggit_tag_slug_6be58b2c_like    INDEX     h   CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);
 1   DROP INDEX public.taggit_tag_slug_6be58b2c_like;
       public            renegado    false    259            �           1259    60266 *   taggit_taggeditem_content_type_id_9957a03c    INDEX     s   CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);
 >   DROP INDEX public.taggit_taggeditem_content_type_id_9957a03c;
       public            renegado    false    261            �           1259    60267 8   taggit_taggeditem_content_type_id_object_id_196cc965_idx    INDEX     �   CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);
 L   DROP INDEX public.taggit_taggeditem_content_type_id_object_id_196cc965_idx;
       public            renegado    false    261    261            �           1259    60268 $   taggit_taggeditem_object_id_e2d7d1df    INDEX     g   CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);
 8   DROP INDEX public.taggit_taggeditem_object_id_e2d7d1df;
       public            renegado    false    261            �           1259    60269 !   taggit_taggeditem_tag_id_f4f5b767    INDEX     a   CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);
 5   DROP INDEX public.taggit_taggeditem_tag_id_f4f5b767;
       public            renegado    false    261            @           1259    60270    unique_in_progress_workflow    INDEX     �   CREATE UNIQUE INDEX unique_in_progress_workflow ON public.wagtailcore_workflowstate USING btree (page_id) WHERE ((status)::text = ANY (ARRAY[('in_progress'::character varying)::text, ('needs_changes'::character varying)::text]));
 /   DROP INDEX public.unique_in_progress_workflow;
       public            renegado    false    305    305            �           1259    60271 #   users_user_groups_group_id_9afc8d0e    INDEX     e   CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);
 7   DROP INDEX public.users_user_groups_group_id_9afc8d0e;
       public            renegado    false    264            �           1259    60272 "   users_user_groups_user_id_5f6f5a90    INDEX     c   CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);
 6   DROP INDEX public.users_user_groups_user_id_5f6f5a90;
       public            renegado    false    264            �           1259    60275 2   users_user_user_permissions_permission_id_0b93982e    INDEX     �   CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);
 F   DROP INDEX public.users_user_user_permissions_permission_id_0b93982e;
       public            renegado    false    267            �           1259    60276 ,   users_user_user_permissions_user_id_20aca447    INDEX     w   CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);
 @   DROP INDEX public.users_user_user_permissions_user_id_20aca447;
       public            renegado    false    267            �           1259    60277 !   users_user_username_06e46fe6_like    INDEX     p   CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);
 5   DROP INDEX public.users_user_username_06e46fe6_like;
       public            renegado    false    263            �           1259    60278 )   wagtailcore_collection_path_d848dc19_like    INDEX     �   CREATE INDEX wagtailcore_collection_path_d848dc19_like ON public.wagtailcore_collection USING btree (path varchar_pattern_ops);
 =   DROP INDEX public.wagtailcore_collection_path_d848dc19_like;
       public            renegado    false    271            �           1259    60279 >   wagtailcore_collectionview_collectionviewrestriction__47320efd    INDEX     �   CREATE INDEX wagtailcore_collectionview_collectionviewrestriction__47320efd ON public.wagtailcore_collectionviewrestriction_groups USING btree (collectionviewrestriction_id);
 R   DROP INDEX public.wagtailcore_collectionview_collectionviewrestriction__47320efd;
       public            renegado    false    274            �           1259    60280 <   wagtailcore_collectionviewrestriction_collection_id_761908ec    INDEX     �   CREATE INDEX wagtailcore_collectionviewrestriction_collection_id_761908ec ON public.wagtailcore_collectionviewrestriction USING btree (collection_id);
 P   DROP INDEX public.wagtailcore_collectionviewrestriction_collection_id_761908ec;
       public            renegado    false    273            �           1259    60281 >   wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3    INDEX     �   CREATE INDEX wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3 ON public.wagtailcore_collectionviewrestriction_groups USING btree (group_id);
 R   DROP INDEX public.wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3;
       public            renegado    false    274            �           1259    60919 $   wagtailcore_comment_page_id_108444b5    INDEX     g   CREATE INDEX wagtailcore_comment_page_id_108444b5 ON public.wagtailcore_comment USING btree (page_id);
 8   DROP INDEX public.wagtailcore_comment_page_id_108444b5;
       public            renegado    false    334            �           1259    60920 +   wagtailcore_comment_resolved_by_id_a282aa0e    INDEX     u   CREATE INDEX wagtailcore_comment_resolved_by_id_a282aa0e ON public.wagtailcore_comment USING btree (resolved_by_id);
 ?   DROP INDEX public.wagtailcore_comment_resolved_by_id_a282aa0e;
       public            renegado    false    334            �           1259    60921 0   wagtailcore_comment_revision_created_id_1d058279    INDEX        CREATE INDEX wagtailcore_comment_revision_created_id_1d058279 ON public.wagtailcore_comment USING btree (revision_created_id);
 D   DROP INDEX public.wagtailcore_comment_revision_created_id_1d058279;
       public            renegado    false    334            �           1259    60922 $   wagtailcore_comment_user_id_0c577ca6    INDEX     g   CREATE INDEX wagtailcore_comment_user_id_0c577ca6 ON public.wagtailcore_comment USING btree (user_id);
 8   DROP INDEX public.wagtailcore_comment_user_id_0c577ca6;
       public            renegado    false    334            �           1259    60933 ,   wagtailcore_commentreply_comment_id_afc7e027    INDEX     w   CREATE INDEX wagtailcore_commentreply_comment_id_afc7e027 ON public.wagtailcore_commentreply USING btree (comment_id);
 @   DROP INDEX public.wagtailcore_commentreply_comment_id_afc7e027;
       public            renegado    false    336            �           1259    60934 )   wagtailcore_commentreply_user_id_d0b3b9c3    INDEX     q   CREATE INDEX wagtailcore_commentreply_user_id_d0b3b9c3 ON public.wagtailcore_commentreply USING btree (user_id);
 =   DROP INDEX public.wagtailcore_commentreply_user_id_d0b3b9c3;
       public            renegado    false    336            �           1259    60282 8   wagtailcore_groupapprovalt_groupapprovaltask_id_9a9255ea    INDEX     �   CREATE INDEX wagtailcore_groupapprovalt_groupapprovaltask_id_9a9255ea ON public.wagtailcore_groupapprovaltask_groups USING btree (groupapprovaltask_id);
 L   DROP INDEX public.wagtailcore_groupapprovalt_groupapprovaltask_id_9a9255ea;
       public            renegado    false    278            �           1259    60283 6   wagtailcore_groupapprovaltask_groups_group_id_2e64b61f    INDEX     �   CREATE INDEX wagtailcore_groupapprovaltask_groups_group_id_2e64b61f ON public.wagtailcore_groupapprovaltask_groups USING btree (group_id);
 J   DROP INDEX public.wagtailcore_groupapprovaltask_groups_group_id_2e64b61f;
       public            renegado    false    278            �           1259    60284 <   wagtailcore_groupcollectionpermission_collection_id_5423575a    INDEX     �   CREATE INDEX wagtailcore_groupcollectionpermission_collection_id_5423575a ON public.wagtailcore_groupcollectionpermission USING btree (collection_id);
 P   DROP INDEX public.wagtailcore_groupcollectionpermission_collection_id_5423575a;
       public            renegado    false    280            �           1259    60285 7   wagtailcore_groupcollectionpermission_group_id_05d61460    INDEX     �   CREATE INDEX wagtailcore_groupcollectionpermission_group_id_05d61460 ON public.wagtailcore_groupcollectionpermission USING btree (group_id);
 K   DROP INDEX public.wagtailcore_groupcollectionpermission_group_id_05d61460;
       public            renegado    false    280            �           1259    60286 <   wagtailcore_groupcollectionpermission_permission_id_1b626275    INDEX     �   CREATE INDEX wagtailcore_groupcollectionpermission_permission_id_1b626275 ON public.wagtailcore_groupcollectionpermission USING btree (permission_id);
 P   DROP INDEX public.wagtailcore_groupcollectionpermission_permission_id_1b626275;
       public            renegado    false    280            �           1259    60287 1   wagtailcore_grouppagepermission_group_id_fc07e671    INDEX     �   CREATE INDEX wagtailcore_grouppagepermission_group_id_fc07e671 ON public.wagtailcore_grouppagepermission USING btree (group_id);
 E   DROP INDEX public.wagtailcore_grouppagepermission_group_id_fc07e671;
       public            renegado    false    282            �           1259    60288 0   wagtailcore_grouppagepermission_page_id_710b114a    INDEX        CREATE INDEX wagtailcore_grouppagepermission_page_id_710b114a ON public.wagtailcore_grouppagepermission USING btree (page_id);
 D   DROP INDEX public.wagtailcore_grouppagepermission_page_id_710b114a;
       public            renegado    false    282            �           1259    60289 .   wagtailcore_locale_language_code_03149338_like    INDEX     �   CREATE INDEX wagtailcore_locale_language_code_03149338_like ON public.wagtailcore_locale USING btree (language_code varchar_pattern_ops);
 B   DROP INDEX public.wagtailcore_locale_language_code_03149338_like;
       public            renegado    false    284                       1259    60290 %   wagtailcore_page_alias_of_id_12945502    INDEX     i   CREATE INDEX wagtailcore_page_alias_of_id_12945502 ON public.wagtailcore_page USING btree (alias_of_id);
 9   DROP INDEX public.wagtailcore_page_alias_of_id_12945502;
       public            renegado    false    286                       1259    60291 )   wagtailcore_page_content_type_id_c28424df    INDEX     q   CREATE INDEX wagtailcore_page_content_type_id_c28424df ON public.wagtailcore_page USING btree (content_type_id);
 =   DROP INDEX public.wagtailcore_page_content_type_id_c28424df;
       public            renegado    false    286                       1259    60292 ,   wagtailcore_page_first_published_at_2b5dd637    INDEX     w   CREATE INDEX wagtailcore_page_first_published_at_2b5dd637 ON public.wagtailcore_page USING btree (first_published_at);
 @   DROP INDEX public.wagtailcore_page_first_published_at_2b5dd637;
       public            renegado    false    286                       1259    60293 *   wagtailcore_page_live_revision_id_930bd822    INDEX     s   CREATE INDEX wagtailcore_page_live_revision_id_930bd822 ON public.wagtailcore_page USING btree (live_revision_id);
 >   DROP INDEX public.wagtailcore_page_live_revision_id_930bd822;
       public            renegado    false    286                       1259    60294 #   wagtailcore_page_locale_id_3c7e30a6    INDEX     e   CREATE INDEX wagtailcore_page_locale_id_3c7e30a6 ON public.wagtailcore_page USING btree (locale_id);
 7   DROP INDEX public.wagtailcore_page_locale_id_3c7e30a6;
       public            renegado    false    286                       1259    60295 &   wagtailcore_page_locked_by_id_bcb86245    INDEX     k   CREATE INDEX wagtailcore_page_locked_by_id_bcb86245 ON public.wagtailcore_page USING btree (locked_by_id);
 :   DROP INDEX public.wagtailcore_page_locked_by_id_bcb86245;
       public            renegado    false    286                       1259    60296 "   wagtailcore_page_owner_id_fbf7c332    INDEX     c   CREATE INDEX wagtailcore_page_owner_id_fbf7c332 ON public.wagtailcore_page USING btree (owner_id);
 6   DROP INDEX public.wagtailcore_page_owner_id_fbf7c332;
       public            renegado    false    286                       1259    60297 #   wagtailcore_page_path_98eba2c8_like    INDEX     t   CREATE INDEX wagtailcore_page_path_98eba2c8_like ON public.wagtailcore_page USING btree (path varchar_pattern_ops);
 7   DROP INDEX public.wagtailcore_page_path_98eba2c8_like;
       public            renegado    false    286                       1259    60298    wagtailcore_page_slug_e7c11b8f    INDEX     [   CREATE INDEX wagtailcore_page_slug_e7c11b8f ON public.wagtailcore_page USING btree (slug);
 2   DROP INDEX public.wagtailcore_page_slug_e7c11b8f;
       public            renegado    false    286                       1259    60299 #   wagtailcore_page_slug_e7c11b8f_like    INDEX     t   CREATE INDEX wagtailcore_page_slug_e7c11b8f_like ON public.wagtailcore_page USING btree (slug varchar_pattern_ops);
 7   DROP INDEX public.wagtailcore_page_slug_e7c11b8f_like;
       public            renegado    false    286                       1259    60300 (   wagtailcore_pagelogentry_action_c2408198    INDEX     o   CREATE INDEX wagtailcore_pagelogentry_action_c2408198 ON public.wagtailcore_pagelogentry USING btree (action);
 <   DROP INDEX public.wagtailcore_pagelogentry_action_c2408198;
       public            renegado    false    288                       1259    60301 -   wagtailcore_pagelogentry_action_c2408198_like    INDEX     �   CREATE INDEX wagtailcore_pagelogentry_action_c2408198_like ON public.wagtailcore_pagelogentry USING btree (action varchar_pattern_ops);
 A   DROP INDEX public.wagtailcore_pagelogentry_action_c2408198_like;
       public            renegado    false    288                       1259    60302 1   wagtailcore_pagelogentry_content_changed_99f27ade    INDEX     �   CREATE INDEX wagtailcore_pagelogentry_content_changed_99f27ade ON public.wagtailcore_pagelogentry USING btree (content_changed);
 E   DROP INDEX public.wagtailcore_pagelogentry_content_changed_99f27ade;
       public            renegado    false    288                       1259    60303 1   wagtailcore_pagelogentry_content_type_id_74e7708a    INDEX     �   CREATE INDEX wagtailcore_pagelogentry_content_type_id_74e7708a ON public.wagtailcore_pagelogentry USING btree (content_type_id);
 E   DROP INDEX public.wagtailcore_pagelogentry_content_type_id_74e7708a;
       public            renegado    false    288                       1259    60304 )   wagtailcore_pagelogentry_page_id_8464e327    INDEX     q   CREATE INDEX wagtailcore_pagelogentry_page_id_8464e327 ON public.wagtailcore_pagelogentry USING btree (page_id);
 =   DROP INDEX public.wagtailcore_pagelogentry_page_id_8464e327;
       public            renegado    false    288                       1259    60305 -   wagtailcore_pagelogentry_revision_id_8043d103    INDEX     y   CREATE INDEX wagtailcore_pagelogentry_revision_id_8043d103 ON public.wagtailcore_pagelogentry USING btree (revision_id);
 A   DROP INDEX public.wagtailcore_pagelogentry_revision_id_8043d103;
       public            renegado    false    288                       1259    60306 )   wagtailcore_pagelogentry_user_id_604ccfd8    INDEX     q   CREATE INDEX wagtailcore_pagelogentry_user_id_604ccfd8 ON public.wagtailcore_pagelogentry USING btree (user_id);
 =   DROP INDEX public.wagtailcore_pagelogentry_user_id_604ccfd8;
       public            renegado    false    288                       1259    60307 5   wagtailcore_pagerevision_approved_go_live_at_e56afc67    INDEX     �   CREATE INDEX wagtailcore_pagerevision_approved_go_live_at_e56afc67 ON public.wagtailcore_pagerevision USING btree (approved_go_live_at);
 I   DROP INDEX public.wagtailcore_pagerevision_approved_go_live_at_e56afc67;
       public            renegado    false    290                       1259    60308 ,   wagtailcore_pagerevision_created_at_66954e3b    INDEX     w   CREATE INDEX wagtailcore_pagerevision_created_at_66954e3b ON public.wagtailcore_pagerevision USING btree (created_at);
 @   DROP INDEX public.wagtailcore_pagerevision_created_at_66954e3b;
       public            renegado    false    290                       1259    60309 )   wagtailcore_pagerevision_page_id_d421cc1d    INDEX     q   CREATE INDEX wagtailcore_pagerevision_page_id_d421cc1d ON public.wagtailcore_pagerevision USING btree (page_id);
 =   DROP INDEX public.wagtailcore_pagerevision_page_id_d421cc1d;
       public            renegado    false    290                       1259    60310 :   wagtailcore_pagerevision_submitted_for_moderation_c682e44c    INDEX     �   CREATE INDEX wagtailcore_pagerevision_submitted_for_moderation_c682e44c ON public.wagtailcore_pagerevision USING btree (submitted_for_moderation);
 N   DROP INDEX public.wagtailcore_pagerevision_submitted_for_moderation_c682e44c;
       public            renegado    false    290                        1259    60311 )   wagtailcore_pagerevision_user_id_2409d2f4    INDEX     q   CREATE INDEX wagtailcore_pagerevision_user_id_2409d2f4 ON public.wagtailcore_pagerevision USING btree (user_id);
 =   DROP INDEX public.wagtailcore_pagerevision_user_id_2409d2f4;
       public            renegado    false    290            �           1259    60947 -   wagtailcore_pagesubscription_page_id_a085e7a6    INDEX     y   CREATE INDEX wagtailcore_pagesubscription_page_id_a085e7a6 ON public.wagtailcore_pagesubscription USING btree (page_id);
 A   DROP INDEX public.wagtailcore_pagesubscription_page_id_a085e7a6;
       public            renegado    false    338            �           1259    60948 -   wagtailcore_pagesubscription_user_id_89d7def9    INDEX     y   CREATE INDEX wagtailcore_pagesubscription_user_id_89d7def9 ON public.wagtailcore_pagesubscription USING btree (user_id);
 A   DROP INDEX public.wagtailcore_pagesubscription_user_id_89d7def9;
       public            renegado    false    338            &           1259    60312 :   wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a    INDEX     �   CREATE INDEX wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a ON public.wagtailcore_pageviewrestriction_groups USING btree (pageviewrestriction_id);
 N   DROP INDEX public.wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a;
       public            renegado    false    293            '           1259    60313 8   wagtailcore_pageviewrestriction_groups_group_id_6460f223    INDEX     �   CREATE INDEX wagtailcore_pageviewrestriction_groups_group_id_6460f223 ON public.wagtailcore_pageviewrestriction_groups USING btree (group_id);
 L   DROP INDEX public.wagtailcore_pageviewrestriction_groups_group_id_6460f223;
       public            renegado    false    293            !           1259    60314 0   wagtailcore_pageviewrestriction_page_id_15a8bea6    INDEX        CREATE INDEX wagtailcore_pageviewrestriction_page_id_15a8bea6 ON public.wagtailcore_pageviewrestriction USING btree (page_id);
 D   DROP INDEX public.wagtailcore_pageviewrestriction_page_id_15a8bea6;
       public            renegado    false    292            *           1259    60315 "   wagtailcore_site_hostname_96b20b46    INDEX     c   CREATE INDEX wagtailcore_site_hostname_96b20b46 ON public.wagtailcore_site USING btree (hostname);
 6   DROP INDEX public.wagtailcore_site_hostname_96b20b46;
       public            renegado    false    296            +           1259    60316 '   wagtailcore_site_hostname_96b20b46_like    INDEX     |   CREATE INDEX wagtailcore_site_hostname_96b20b46_like ON public.wagtailcore_site USING btree (hostname varchar_pattern_ops);
 ;   DROP INDEX public.wagtailcore_site_hostname_96b20b46_like;
       public            renegado    false    296            0           1259    60317 &   wagtailcore_site_root_page_id_e02fb95c    INDEX     k   CREATE INDEX wagtailcore_site_root_page_id_e02fb95c ON public.wagtailcore_site USING btree (root_page_id);
 :   DROP INDEX public.wagtailcore_site_root_page_id_e02fb95c;
       public            renegado    false    296            1           1259    60318 )   wagtailcore_task_content_type_id_249ab8ba    INDEX     q   CREATE INDEX wagtailcore_task_content_type_id_249ab8ba ON public.wagtailcore_task USING btree (content_type_id);
 =   DROP INDEX public.wagtailcore_task_content_type_id_249ab8ba;
       public            renegado    false    298            4           1259    60319 .   wagtailcore_taskstate_content_type_id_0a758fdc    INDEX     {   CREATE INDEX wagtailcore_taskstate_content_type_id_0a758fdc ON public.wagtailcore_taskstate USING btree (content_type_id);
 B   DROP INDEX public.wagtailcore_taskstate_content_type_id_0a758fdc;
       public            renegado    false    300            5           1259    60320 -   wagtailcore_taskstate_finished_by_id_13f98229    INDEX     y   CREATE INDEX wagtailcore_taskstate_finished_by_id_13f98229 ON public.wagtailcore_taskstate USING btree (finished_by_id);
 A   DROP INDEX public.wagtailcore_taskstate_finished_by_id_13f98229;
       public            renegado    false    300            6           1259    60321 /   wagtailcore_taskstate_page_revision_id_9f52c88e    INDEX     }   CREATE INDEX wagtailcore_taskstate_page_revision_id_9f52c88e ON public.wagtailcore_taskstate USING btree (page_revision_id);
 C   DROP INDEX public.wagtailcore_taskstate_page_revision_id_9f52c88e;
       public            renegado    false    300            9           1259    60322 &   wagtailcore_taskstate_task_id_c3677c34    INDEX     k   CREATE INDEX wagtailcore_taskstate_task_id_c3677c34 ON public.wagtailcore_taskstate USING btree (task_id);
 :   DROP INDEX public.wagtailcore_taskstate_task_id_c3677c34;
       public            renegado    false    300            :           1259    60323 0   wagtailcore_taskstate_workflow_state_id_9239a775    INDEX        CREATE INDEX wagtailcore_taskstate_workflow_state_id_9239a775 ON public.wagtailcore_taskstate USING btree (workflow_state_id);
 D   DROP INDEX public.wagtailcore_taskstate_workflow_state_id_9239a775;
       public            renegado    false    300            ?           1259    60324 -   wagtailcore_workflowpage_workflow_id_56f56ff6    INDEX     y   CREATE INDEX wagtailcore_workflowpage_workflow_id_56f56ff6 ON public.wagtailcore_workflowpage USING btree (workflow_id);
 A   DROP INDEX public.wagtailcore_workflowpage_workflow_id_56f56ff6;
       public            renegado    false    304            C           1259    60325 *   wagtailcore_workflowstate_page_id_6c962862    INDEX     s   CREATE INDEX wagtailcore_workflowstate_page_id_6c962862 ON public.wagtailcore_workflowstate USING btree (page_id);
 >   DROP INDEX public.wagtailcore_workflowstate_page_id_6c962862;
       public            renegado    false    305            F           1259    60326 2   wagtailcore_workflowstate_requested_by_id_4090bca3    INDEX     �   CREATE INDEX wagtailcore_workflowstate_requested_by_id_4090bca3 ON public.wagtailcore_workflowstate USING btree (requested_by_id);
 F   DROP INDEX public.wagtailcore_workflowstate_requested_by_id_4090bca3;
       public            renegado    false    305            G           1259    60327 .   wagtailcore_workflowstate_workflow_id_1f18378f    INDEX     {   CREATE INDEX wagtailcore_workflowstate_workflow_id_1f18378f ON public.wagtailcore_workflowstate USING btree (workflow_id);
 B   DROP INDEX public.wagtailcore_workflowstate_workflow_id_1f18378f;
       public            renegado    false    305            J           1259    60328 )   wagtailcore_workflowtask_task_id_ce7716fe    INDEX     q   CREATE INDEX wagtailcore_workflowtask_task_id_ce7716fe ON public.wagtailcore_workflowtask USING btree (task_id);
 =   DROP INDEX public.wagtailcore_workflowtask_task_id_ce7716fe;
       public            renegado    false    307            K           1259    60329 -   wagtailcore_workflowtask_workflow_id_b9717175    INDEX     y   CREATE INDEX wagtailcore_workflowtask_workflow_id_b9717175 ON public.wagtailcore_workflowtask USING btree (workflow_id);
 A   DROP INDEX public.wagtailcore_workflowtask_workflow_id_b9717175;
       public            renegado    false    307            N           1259    60330 +   wagtaildocs_document_collection_id_23881625    INDEX     u   CREATE INDEX wagtaildocs_document_collection_id_23881625 ON public.wagtaildocs_document USING btree (collection_id);
 ?   DROP INDEX public.wagtaildocs_document_collection_id_23881625;
       public            renegado    false    309            Q           1259    60331 1   wagtaildocs_document_uploaded_by_user_id_17258b41    INDEX     �   CREATE INDEX wagtaildocs_document_uploaded_by_user_id_17258b41 ON public.wagtaildocs_document USING btree (uploaded_by_user_id);
 E   DROP INDEX public.wagtaildocs_document_uploaded_by_user_id_17258b41;
       public            renegado    false    309            T           1259    60332 9   wagtaildocs_uploadeddocument_uploaded_by_user_id_8dd61a73    INDEX     �   CREATE INDEX wagtaildocs_uploadeddocument_uploaded_by_user_id_8dd61a73 ON public.wagtaildocs_uploadeddocument USING btree (uploaded_by_user_id);
 M   DROP INDEX public.wagtaildocs_uploadeddocument_uploaded_by_user_id_8dd61a73;
       public            renegado    false    311            U           1259    60333 &   wagtailembeds_embed_hash_c9bd8c9a_like    INDEX     z   CREATE INDEX wagtailembeds_embed_hash_c9bd8c9a_like ON public.wagtailembeds_embed USING btree (hash varchar_pattern_ops);
 :   DROP INDEX public.wagtailembeds_embed_hash_c9bd8c9a_like;
       public            renegado    false    313            Z           1259    60334 ,   wagtailforms_formsubmission_page_id_e48e93e7    INDEX     w   CREATE INDEX wagtailforms_formsubmission_page_id_e48e93e7 ON public.wagtailforms_formsubmission USING btree (page_id);
 @   DROP INDEX public.wagtailforms_formsubmission_page_id_e48e93e7;
       public            renegado    false    315            ]           1259    60335 *   wagtailimages_image_collection_id_c2f8af7e    INDEX     s   CREATE INDEX wagtailimages_image_collection_id_c2f8af7e ON public.wagtailimages_image USING btree (collection_id);
 >   DROP INDEX public.wagtailimages_image_collection_id_c2f8af7e;
       public            renegado    false    317            ^           1259    60336 '   wagtailimages_image_created_at_86fa6cd4    INDEX     m   CREATE INDEX wagtailimages_image_created_at_86fa6cd4 ON public.wagtailimages_image USING btree (created_at);
 ;   DROP INDEX public.wagtailimages_image_created_at_86fa6cd4;
       public            renegado    false    317            a           1259    60337 0   wagtailimages_image_uploaded_by_user_id_5d73dc75    INDEX        CREATE INDEX wagtailimages_image_uploaded_by_user_id_5d73dc75 ON public.wagtailimages_image USING btree (uploaded_by_user_id);
 D   DROP INDEX public.wagtailimages_image_uploaded_by_user_id_5d73dc75;
       public            renegado    false    317            b           1259    60338 ,   wagtailimages_rendition_filter_spec_1cba3201    INDEX     w   CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201 ON public.wagtailimages_rendition USING btree (filter_spec);
 @   DROP INDEX public.wagtailimages_rendition_filter_spec_1cba3201;
       public            renegado    false    319            c           1259    60339 1   wagtailimages_rendition_filter_spec_1cba3201_like    INDEX     �   CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201_like ON public.wagtailimages_rendition USING btree (filter_spec varchar_pattern_ops);
 E   DROP INDEX public.wagtailimages_rendition_filter_spec_1cba3201_like;
       public            renegado    false    319            d           1259    60340 )   wagtailimages_rendition_image_id_3e1fd774    INDEX     q   CREATE INDEX wagtailimages_rendition_image_id_3e1fd774 ON public.wagtailimages_rendition USING btree (image_id);
 =   DROP INDEX public.wagtailimages_rendition_image_id_3e1fd774;
       public            renegado    false    319            k           1259    60341 8   wagtailimages_uploadedimage_uploaded_by_user_id_85921689    INDEX     �   CREATE INDEX wagtailimages_uploadedimage_uploaded_by_user_id_85921689 ON public.wagtailimages_uploadedimage USING btree (uploaded_by_user_id);
 L   DROP INDEX public.wagtailimages_uploadedimage_uploaded_by_user_id_85921689;
       public            renegado    false    321            l           1259    60342 +   wagtailredirects_redirect_old_path_bb35247b    INDEX     u   CREATE INDEX wagtailredirects_redirect_old_path_bb35247b ON public.wagtailredirects_redirect USING btree (old_path);
 ?   DROP INDEX public.wagtailredirects_redirect_old_path_bb35247b;
       public            renegado    false    323            m           1259    60343 0   wagtailredirects_redirect_old_path_bb35247b_like    INDEX     �   CREATE INDEX wagtailredirects_redirect_old_path_bb35247b_like ON public.wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);
 D   DROP INDEX public.wagtailredirects_redirect_old_path_bb35247b_like;
       public            renegado    false    323            r           1259    60344 3   wagtailredirects_redirect_redirect_page_id_b5728a8f    INDEX     �   CREATE INDEX wagtailredirects_redirect_redirect_page_id_b5728a8f ON public.wagtailredirects_redirect USING btree (redirect_page_id);
 G   DROP INDEX public.wagtailredirects_redirect_redirect_page_id_b5728a8f;
       public            renegado    false    323            s           1259    60345 *   wagtailredirects_redirect_site_id_780a0e1e    INDEX     s   CREATE INDEX wagtailredirects_redirect_site_id_780a0e1e ON public.wagtailredirects_redirect USING btree (site_id);
 >   DROP INDEX public.wagtailredirects_redirect_site_id_780a0e1e;
       public            renegado    false    323            t           1259    60346 *   wagtailsearch_editorspick_page_id_28cbc274    INDEX     s   CREATE INDEX wagtailsearch_editorspick_page_id_28cbc274 ON public.wagtailsearch_editorspick USING btree (page_id);
 >   DROP INDEX public.wagtailsearch_editorspick_page_id_28cbc274;
       public            renegado    false    325            w           1259    60347 +   wagtailsearch_editorspick_query_id_c6eee4a0    INDEX     u   CREATE INDEX wagtailsearch_editorspick_query_id_c6eee4a0 ON public.wagtailsearch_editorspick USING btree (query_id);
 ?   DROP INDEX public.wagtailsearch_editorspick_query_id_c6eee4a0;
       public            renegado    false    325            z           1259    60348 .   wagtailsearch_query_query_string_e785ea07_like    INDEX     �   CREATE INDEX wagtailsearch_query_query_string_e785ea07_like ON public.wagtailsearch_query USING btree (query_string varchar_pattern_ops);
 B   DROP INDEX public.wagtailsearch_query_query_string_e785ea07_like;
       public            renegado    false    327                       1259    60349 .   wagtailsearch_querydailyhits_query_id_2185994b    INDEX     {   CREATE INDEX wagtailsearch_querydailyhits_query_id_2185994b ON public.wagtailsearch_querydailyhits USING btree (query_id);
 B   DROP INDEX public.wagtailsearch_querydailyhits_query_id_2185994b;
       public            renegado    false    329            �           2606    60350 K   account_emailaddress account_emailaddress_user_id_2c513194_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_users_user_id;
       public          renegado    false    3527    200    263            �           2606    60355 U   account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e;
       public          renegado    false    200    3380    202            �           2606    61081 R   accounts_professors accounts_professors_choose_department_id_d24963f0_fk_base_depa    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_professors
    ADD CONSTRAINT accounts_professors_choose_department_id_d24963f0_fk_base_depa FOREIGN KEY (choose_department_id) REFERENCES public.base_departments(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.accounts_professors DROP CONSTRAINT accounts_professors_choose_department_id_d24963f0_fk_base_depa;
       public          renegado    false    204    3432    223            �           2606    61075 P   accounts_professors accounts_professors_profile_picture_id_6aeb0e42_fk_wagtailim    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_professors
    ADD CONSTRAINT accounts_professors_profile_picture_id_6aeb0e42_fk_wagtailim FOREIGN KEY (profile_picture_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.accounts_professors DROP CONSTRAINT accounts_professors_profile_picture_id_6aeb0e42_fk_wagtailim;
       public          renegado    false    3680    204    317            �           2606    60365 O   accounts_professors accounts_professors_section_id_35634169_fk_base_sections_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_professors
    ADD CONSTRAINT accounts_professors_section_id_35634169_fk_base_sections_id FOREIGN KEY (section_id) REFERENCES public.base_sections(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.accounts_professors DROP CONSTRAINT accounts_professors_section_id_35634169_fk_base_sections_id;
       public          renegado    false    231    204    3446            �           2606    61050 I   accounts_professors accounts_professors_user_id_91c00086_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_professors
    ADD CONSTRAINT accounts_professors_user_id_91c00086_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.accounts_professors DROP CONSTRAINT accounts_professors_user_id_91c00086_fk_users_user_id;
       public          renegado    false    204    3527    263            �           2606    60370 K   accounts_students accounts_students_section_id_516be748_fk_base_sections_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_students
    ADD CONSTRAINT accounts_students_section_id_516be748_fk_base_sections_id FOREIGN KEY (section_id) REFERENCES public.base_sections(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.accounts_students DROP CONSTRAINT accounts_students_section_id_516be748_fk_base_sections_id;
       public          renegado    false    206    3446    231            �           2606    61057 E   accounts_students accounts_students_user_id_1b5d0b70_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_students
    ADD CONSTRAINT accounts_students_user_id_1b5d0b70_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.accounts_students DROP CONSTRAINT accounts_students_user_id_1b5d0b70_fk_users_user_id;
       public          renegado    false    206    263    3527            �           2606    60375 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          renegado    false    3415    210    212            �           2606    60380 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          renegado    false    3404    210    208            �           2606    60385 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          renegado    false    3473    212    241            �           2606    60390 N   base_bulksections base_bulksections_course_curriculum_id_ab2960b2_fk_base_cour    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_bulksections
    ADD CONSTRAINT base_bulksections_course_curriculum_id_ab2960b2_fk_base_cour FOREIGN KEY (course_curriculum_id) REFERENCES public.base_coursecurriculum(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.base_bulksections DROP CONSTRAINT base_bulksections_course_curriculum_id_ab2960b2_fk_base_cour;
       public          renegado    false    215    3425    219            �           2606    60395 U   base_coursecurriculum base_coursecurriculu_choose_department_id_e0bcfe79_fk_base_depa    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_coursecurriculum
    ADD CONSTRAINT base_coursecurriculu_choose_department_id_e0bcfe79_fk_base_depa FOREIGN KEY (choose_department_id) REFERENCES public.base_departments(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.base_coursecurriculum DROP CONSTRAINT base_coursecurriculu_choose_department_id_e0bcfe79_fk_base_depa;
       public          renegado    false    223    3432    219            �           2606    60400 T   base_departmentorderable base_departmentorder_college_model_id_17d1f9d9_fk_base_coll    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_departmentorderable
    ADD CONSTRAINT base_departmentorder_college_model_id_17d1f9d9_fk_base_coll FOREIGN KEY (college_model_id) REFERENCES public.base_colleges(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.base_departmentorderable DROP CONSTRAINT base_departmentorder_college_model_id_17d1f9d9_fk_base_coll;
       public          renegado    false    217    221    3422            �           2606    60405 Q   base_departmentorderable base_departmentorder_department_id_9d11b668_fk_base_depa    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_departmentorderable
    ADD CONSTRAINT base_departmentorder_department_id_9d11b668_fk_base_depa FOREIGN KEY (department_id) REFERENCES public.base_departments(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.base_departmentorderable DROP CONSTRAINT base_departmentorder_department_id_9d11b668_fk_base_depa;
       public          renegado    false    223    221    3432            �           2606    60410 P   base_departments base_departments_Choose_College_id_7b175eb0_fk_base_colleges_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_departments
    ADD CONSTRAINT "base_departments_Choose_College_id_7b175eb0_fk_base_colleges_id" FOREIGN KEY ("Choose_College_id") REFERENCES public.base_colleges(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.base_departments DROP CONSTRAINT "base_departments_Choose_College_id_7b175eb0_fk_base_colleges_id";
       public          renegado    false    217    223    3422            �           2606    60415 G   base_basepage base_homepage_page_ptr_id_35a5077a_fk_wagtailcore_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_basepage
    ADD CONSTRAINT base_homepage_page_ptr_id_35a5077a_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.base_basepage DROP CONSTRAINT base_homepage_page_ptr_id_35a5077a_fk_wagtailcore_page_id;
       public          renegado    false    214    286    3596            �           2606    60420 O   base_professororderable base_professorordera_professor_id_1237efd1_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_professororderable
    ADD CONSTRAINT base_professorordera_professor_id_1237efd1_fk_accounts_ FOREIGN KEY (professor_id) REFERENCES public.accounts_professors(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.base_professororderable DROP CONSTRAINT base_professorordera_professor_id_1237efd1_fk_accounts_;
       public          renegado    false    225    204    3390            �           2606    60425 P   base_professororderable base_professorordera_room_model_id_1af28a3b_fk_base_depa    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_professororderable
    ADD CONSTRAINT base_professorordera_room_model_id_1af28a3b_fk_base_depa FOREIGN KEY (room_model_id) REFERENCES public.base_departments(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.base_professororderable DROP CONSTRAINT base_professorordera_room_model_id_1af28a3b_fk_base_depa;
       public          renegado    false    225    3432    223            �           2606    60951 G   base_roomorderable base_roomorderable_room_id_1268bb1c_fk_base_rooms_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_roomorderable
    ADD CONSTRAINT base_roomorderable_room_id_1268bb1c_fk_base_rooms_id FOREIGN KEY (room_id) REFERENCES public.base_rooms(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.base_roomorderable DROP CONSTRAINT base_roomorderable_room_id_1268bb1c_fk_base_rooms_id;
       public          renegado    false    229    227    3443            �           2606    60435 I   base_roomorderable base_roomorderable_room_model_id_c59edb9a_fk_base_depa    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_roomorderable
    ADD CONSTRAINT base_roomorderable_room_model_id_c59edb9a_fk_base_depa FOREIGN KEY (room_model_id) REFERENCES public.base_departments(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.base_roomorderable DROP CONSTRAINT base_roomorderable_room_model_id_c59edb9a_fk_base_depa;
       public          renegado    false    3432    227    223            �           2606    60440 J   base_rooms base_rooms_choose_department_id_87b4d1da_fk_base_departments_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_rooms
    ADD CONSTRAINT base_rooms_choose_department_id_87b4d1da_fk_base_departments_id FOREIGN KEY (choose_department_id) REFERENCES public.base_departments(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.base_rooms DROP CONSTRAINT base_rooms_choose_department_id_87b4d1da_fk_base_departments_id;
       public          renegado    false    229    3432    223            �           2606    60445 F   base_sections base_sections_course_curriculum_id_5771a04b_fk_base_cour    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_sections
    ADD CONSTRAINT base_sections_course_curriculum_id_5771a04b_fk_base_cour FOREIGN KEY (course_curriculum_id) REFERENCES public.base_coursecurriculum(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.base_sections DROP CONSTRAINT base_sections_course_curriculum_id_5771a04b_fk_base_cour;
       public          renegado    false    231    219    3425            �           2606    60450 F   base_subjects base_subjects_choose_department_id_627dacde_fk_base_depa    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_subjects
    ADD CONSTRAINT base_subjects_choose_department_id_627dacde_fk_base_depa FOREIGN KEY (choose_department_id) REFERENCES public.base_departments(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.base_subjects DROP CONSTRAINT base_subjects_choose_department_id_627dacde_fk_base_depa;
       public          renegado    false    233    223    3432            �           2606    60455 V   base_subjectsorderable base_subjectsorderab_first_year_first_sem_9830e8a8_fk_base_cour    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_subjectsorderable
    ADD CONSTRAINT base_subjectsorderab_first_year_first_sem_9830e8a8_fk_base_cour FOREIGN KEY (first_year_first_sem_id) REFERENCES public.base_coursecurriculum(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.base_subjectsorderable DROP CONSTRAINT base_subjectsorderab_first_year_first_sem_9830e8a8_fk_base_cour;
       public          renegado    false    3425    235    219            �           2606    60460 V   base_subjectsorderable base_subjectsorderab_first_year_second_se_58a0ee26_fk_base_cour    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_subjectsorderable
    ADD CONSTRAINT base_subjectsorderab_first_year_second_se_58a0ee26_fk_base_cour FOREIGN KEY (first_year_second_sem_id) REFERENCES public.base_coursecurriculum(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.base_subjectsorderable DROP CONSTRAINT base_subjectsorderab_first_year_second_se_58a0ee26_fk_base_cour;
       public          renegado    false    3425    219    235            �           2606    60465 V   base_subjectsorderable base_subjectsorderab_fourth_year_first_se_b80e9fe3_fk_base_cour    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_subjectsorderable
    ADD CONSTRAINT base_subjectsorderab_fourth_year_first_se_b80e9fe3_fk_base_cour FOREIGN KEY (fourth_year_first_sem_id) REFERENCES public.base_coursecurriculum(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.base_subjectsorderable DROP CONSTRAINT base_subjectsorderab_fourth_year_first_se_b80e9fe3_fk_base_cour;
       public          renegado    false    3425    235    219            �           2606    60470 V   base_subjectsorderable base_subjectsorderab_fourth_year_second_s_003d76a2_fk_base_cour    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_subjectsorderable
    ADD CONSTRAINT base_subjectsorderab_fourth_year_second_s_003d76a2_fk_base_cour FOREIGN KEY (fourth_year_second_sem_id) REFERENCES public.base_coursecurriculum(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.base_subjectsorderable DROP CONSTRAINT base_subjectsorderab_fourth_year_second_s_003d76a2_fk_base_cour;
       public          renegado    false    235    3425    219            �           2606    60475 T   base_subjectsorderable base_subjectsorderab_professor_model_id_48cc430f_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_subjectsorderable
    ADD CONSTRAINT base_subjectsorderab_professor_model_id_48cc430f_fk_accounts_ FOREIGN KEY (professor_model_id) REFERENCES public.accounts_professors(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.base_subjectsorderable DROP CONSTRAINT base_subjectsorderab_professor_model_id_48cc430f_fk_accounts_;
       public          renegado    false    235    204    3390            �           2606    60480 V   base_subjectsorderable base_subjectsorderab_second_year_first_se_4e21e527_fk_base_cour    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_subjectsorderable
    ADD CONSTRAINT base_subjectsorderab_second_year_first_se_4e21e527_fk_base_cour FOREIGN KEY (second_year_first_sem_id) REFERENCES public.base_coursecurriculum(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.base_subjectsorderable DROP CONSTRAINT base_subjectsorderab_second_year_first_se_4e21e527_fk_base_cour;
       public          renegado    false    219    235    3425            �           2606    60485 V   base_subjectsorderable base_subjectsorderab_second_year_second_s_b393b266_fk_base_cour    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_subjectsorderable
    ADD CONSTRAINT base_subjectsorderab_second_year_second_s_b393b266_fk_base_cour FOREIGN KEY (second_year_second_sem_id) REFERENCES public.base_coursecurriculum(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.base_subjectsorderable DROP CONSTRAINT base_subjectsorderab_second_year_second_s_b393b266_fk_base_cour;
       public          renegado    false    235    3425    219            �           2606    60490 V   base_subjectsorderable base_subjectsorderab_third_year_first_sem_733e2171_fk_base_cour    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_subjectsorderable
    ADD CONSTRAINT base_subjectsorderab_third_year_first_sem_733e2171_fk_base_cour FOREIGN KEY (third_year_first_sem_id) REFERENCES public.base_coursecurriculum(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.base_subjectsorderable DROP CONSTRAINT base_subjectsorderab_third_year_first_sem_733e2171_fk_base_cour;
       public          renegado    false    3425    235    219            �           2606    60495 V   base_subjectsorderable base_subjectsorderab_third_year_second_se_b103f485_fk_base_cour    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_subjectsorderable
    ADD CONSTRAINT base_subjectsorderab_third_year_second_se_b103f485_fk_base_cour FOREIGN KEY (third_year_second_sem_id) REFERENCES public.base_coursecurriculum(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.base_subjectsorderable DROP CONSTRAINT base_subjectsorderab_third_year_second_se_b103f485_fk_base_cour;
       public          renegado    false    3425    235    219            �           2606    60500 U   base_subjectsorderable base_subjectsorderable_subject_id_1f79148d_fk_base_subjects_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_subjectsorderable
    ADD CONSTRAINT base_subjectsorderable_subject_id_1f79148d_fk_base_subjects_id FOREIGN KEY (subject_id) REFERENCES public.base_subjects(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.base_subjectsorderable DROP CONSTRAINT base_subjectsorderable_subject_id_1f79148d_fk_base_subjects_id;
       public          renegado    false    235    233    3449            �           2606    60505 [   class_schedule_classscheduleoverview class_schedule_class_page_ptr_id_20e6e4cd_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.class_schedule_classscheduleoverview
    ADD CONSTRAINT class_schedule_class_page_ptr_id_20e6e4cd_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.class_schedule_classscheduleoverview DROP CONSTRAINT class_schedule_class_page_ptr_id_20e6e4cd_fk_wagtailco;
       public          renegado    false    286    3596    238            �           2606    60510 S   class_schedule_classschedule class_schedule_class_page_ptr_id_252f1ead_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.class_schedule_classschedule
    ADD CONSTRAINT class_schedule_class_page_ptr_id_252f1ead_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.class_schedule_classschedule DROP CONSTRAINT class_schedule_class_page_ptr_id_252f1ead_fk_wagtailco;
       public          renegado    false    3596    237    286            �           2606    60515 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          renegado    false    241    239    3473            �           2606    60520 C   django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id;
       public          renegado    false    239    263    3527            �           2606    60525 ]   instructor_schedule_instructorschedule instructor_schedule__page_ptr_id_64aa560f_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.instructor_schedule_instructorschedule
    ADD CONSTRAINT instructor_schedule__page_ptr_id_64aa560f_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.instructor_schedule_instructorschedule DROP CONSTRAINT instructor_schedule__page_ptr_id_64aa560f_fk_wagtailco;
       public          renegado    false    286    3596    248            �           2606    60530 Q   room_schedule_roomschedule room_schedule_roomsc_page_ptr_id_dddeb857_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.room_schedule_roomschedule
    ADD CONSTRAINT room_schedule_roomsc_page_ptr_id_dddeb857_fk_wagtailco FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.room_schedule_roomschedule DROP CONSTRAINT room_schedule_roomsc_page_ptr_id_dddeb857_fk_wagtailco;
       public          renegado    false    249    286    3596            �           2606    60535 S   schedule_schedulepage schedule_schedule_page_ptr_id_648b3161_fk_wagtailcore_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_schedulepage
    ADD CONSTRAINT schedule_schedule_page_ptr_id_648b3161_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.schedule_schedulepage DROP CONSTRAINT schedule_schedule_page_ptr_id_648b3161_fk_wagtailcore_page_id;
       public          renegado    false    250    3596    286                       2606    61019 N   schedule_schedule schedule_schedule_prof_id_45d3177c_fk_accounts_professors_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_schedule
    ADD CONSTRAINT schedule_schedule_prof_id_45d3177c_fk_accounts_professors_id FOREIGN KEY (prof_id) REFERENCES public.accounts_professors(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.schedule_schedule DROP CONSTRAINT schedule_schedule_prof_id_45d3177c_fk_accounts_professors_id;
       public          renegado    false    3390    340    204                       2606    61043 E   schedule_schedule schedule_schedule_room_id_32edb942_fk_base_rooms_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_schedule
    ADD CONSTRAINT schedule_schedule_room_id_32edb942_fk_base_rooms_id FOREIGN KEY (room_id) REFERENCES public.base_rooms(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.schedule_schedule DROP CONSTRAINT schedule_schedule_room_id_32edb942_fk_base_rooms_id;
       public          renegado    false    3443    229    340                       2606    61029 K   schedule_schedule schedule_schedule_section_id_6bb26c55_fk_base_sections_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_schedule
    ADD CONSTRAINT schedule_schedule_section_id_6bb26c55_fk_base_sections_id FOREIGN KEY (section_id) REFERENCES public.base_sections(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.schedule_schedule DROP CONSTRAINT schedule_schedule_section_id_6bb26c55_fk_base_sections_id;
       public          renegado    false    340    231    3446                       2606    61034 K   schedule_schedule schedule_schedule_subject_id_0dcb0e0f_fk_base_subjects_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_schedule
    ADD CONSTRAINT schedule_schedule_subject_id_0dcb0e0f_fk_base_subjects_id FOREIGN KEY (subject_id) REFERENCES public.base_subjects(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.schedule_schedule DROP CONSTRAINT schedule_schedule_subject_id_0dcb0e0f_fk_base_subjects_id;
       public          renegado    false    3449    340    233            �           2606    60540 O   socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc;
       public          renegado    false    251    3492    257            �           2606    60545 K   socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc;
       public          renegado    false    257    253    3497            �           2606    60550 P   socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si;
       public          renegado    false    255    246    3484            �           2606    60555 U   socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc;
       public          renegado    false    255    253    3497            �           2606    60560 Y   socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_users_user_id;
       public          renegado    false    251    263    3527            �           2606    60565 I   taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co;
       public          renegado    false    261    241    3473            �           2606    60570 D   taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.taggit_taggeditem DROP CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id;
       public          renegado    false    261    259    3514            �           2606    60575 F   users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id;
       public          renegado    false    264    208    3404            �           2606    60580 E   users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id;
       public          renegado    false    264    263    3527            �           2606    60595 T   users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm;
       public          renegado    false    267    212    3415            �           2606    60600 Y   users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id;
       public          renegado    false    267    263    3527            �           2606    60605 ^   wagtailcore_collectionviewrestriction wagtailcore_collecti_collection_id_761908ec_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction DROP CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco;
       public          renegado    false    273    271    3549            �           2606    60610 l   wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco    FK CONSTRAINT       ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco FOREIGN KEY (collectionviewrestriction_id) REFERENCES public.wagtailcore_collectionviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco;
       public          renegado    false    274    273    3552            �           2606    60615 `   wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.wagtailcore_collectionviewrestriction_groups DROP CONSTRAINT wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou;
       public          renegado    false    274    208    3404                       2606    60976 O   wagtailcore_comment wagtailcore_comment_page_id_108444b5_fk_wagtailcore_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT wagtailcore_comment_page_id_108444b5_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.wagtailcore_comment DROP CONSTRAINT wagtailcore_comment_page_id_108444b5_fk_wagtailcore_page_id;
       public          renegado    false    3596    334    286                       2606    60904 P   wagtailcore_comment wagtailcore_comment_resolved_by_id_a282aa0e_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT wagtailcore_comment_resolved_by_id_a282aa0e_fk_users_user_id FOREIGN KEY (resolved_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.wagtailcore_comment DROP CONSTRAINT wagtailcore_comment_resolved_by_id_a282aa0e_fk_users_user_id;
       public          renegado    false    263    334    3527                       2606    60909 Q   wagtailcore_comment wagtailcore_comment_revision_created_id_1d058279_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT wagtailcore_comment_revision_created_id_1d058279_fk_wagtailco FOREIGN KEY (revision_created_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.wagtailcore_comment DROP CONSTRAINT wagtailcore_comment_revision_created_id_1d058279_fk_wagtailco;
       public          renegado    false    290    334    3614                       2606    60914 I   wagtailcore_comment wagtailcore_comment_user_id_0c577ca6_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_comment
    ADD CONSTRAINT wagtailcore_comment_user_id_0c577ca6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.wagtailcore_comment DROP CONSTRAINT wagtailcore_comment_user_id_0c577ca6_fk_users_user_id;
       public          renegado    false    263    334    3527                       2606    60923 N   wagtailcore_commentreply wagtailcore_commentr_comment_id_afc7e027_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_commentreply
    ADD CONSTRAINT wagtailcore_commentr_comment_id_afc7e027_fk_wagtailco FOREIGN KEY (comment_id) REFERENCES public.wagtailcore_comment(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.wagtailcore_commentreply DROP CONSTRAINT wagtailcore_commentr_comment_id_afc7e027_fk_wagtailco;
       public          renegado    false    334    3720    336            	           2606    60928 S   wagtailcore_commentreply wagtailcore_commentreply_user_id_d0b3b9c3_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_commentreply
    ADD CONSTRAINT wagtailcore_commentreply_user_id_d0b3b9c3_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.wagtailcore_commentreply DROP CONSTRAINT wagtailcore_commentreply_user_id_d0b3b9c3_fk_users_user_id;
       public          renegado    false    3527    336    263            �           2606    60620 X   wagtailcore_groupapprovaltask_groups wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups DROP CONSTRAINT wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou;
       public          renegado    false    278    208    3404            �           2606    60625 d   wagtailcore_groupapprovaltask_groups wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco    FK CONSTRAINT       ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups
    ADD CONSTRAINT wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco FOREIGN KEY (groupapprovaltask_id) REFERENCES public.wagtailcore_groupapprovaltask(task_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask_groups DROP CONSTRAINT wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco;
       public          renegado    false    278    277    3560            �           2606    60630 T   wagtailcore_groupapprovaltask wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask
    ADD CONSTRAINT wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco FOREIGN KEY (task_ptr_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.wagtailcore_groupapprovaltask DROP CONSTRAINT wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco;
       public          renegado    false    277    298    3635            �           2606    60635 ^   wagtailcore_groupcollectionpermission wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco;
       public          renegado    false    280    271    3549            �           2606    60640 Y   wagtailcore_groupcollectionpermission wagtailcore_groupcol_group_id_05d61460_fk_auth_grou    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_group_id_05d61460_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcol_group_id_05d61460_fk_auth_grou;
       public          renegado    false    280    208    3404            �           2606    60645 ^   wagtailcore_groupcollectionpermission wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.wagtailcore_groupcollectionpermission DROP CONSTRAINT wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm;
       public          renegado    false    280    212    3415            �           2606    60650 S   wagtailcore_grouppagepermission wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou;
       public          renegado    false    282    208    3404            �           2606    60986 R   wagtailcore_grouppagepermission wagtailcore_grouppag_page_id_710b114a_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_page_id_710b114a_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.wagtailcore_grouppagepermission DROP CONSTRAINT wagtailcore_grouppag_page_id_710b114a_fk_wagtailco;
       public          renegado    false    3596    286    282            �           2606    60996 M   wagtailcore_page wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id FOREIGN KEY (alias_of_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id;
       public          renegado    false    286    286    3596            �           2606    60665 G   wagtailcore_page wagtailcore_page_content_type_id_c28424df_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_content_type_id_c28424df_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_content_type_id_c28424df_fk_django_co;
       public          renegado    false    286    241    3473            �           2606    60670 H   wagtailcore_page wagtailcore_page_live_revision_id_930bd822_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_live_revision_id_930bd822_fk_wagtailco FOREIGN KEY (live_revision_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_live_revision_id_930bd822_fk_wagtailco;
       public          renegado    false    286    290    3614            �           2606    60675 M   wagtailcore_page wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id FOREIGN KEY (locale_id) REFERENCES public.wagtailcore_locale(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id;
       public          renegado    false    286    284    3584            �           2606    60680 H   wagtailcore_page wagtailcore_page_locked_by_id_bcb86245_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_locked_by_id_bcb86245_fk_users_user_id FOREIGN KEY (locked_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_locked_by_id_bcb86245_fk_users_user_id;
       public          renegado    false    286    263    3527            �           2606    60685 D   wagtailcore_page wagtailcore_page_owner_id_fbf7c332_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_users_user_id FOREIGN KEY (owner_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.wagtailcore_page DROP CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_users_user_id;
       public          renegado    false    286    263    3527            �           2606    60690 S   wagtailcore_pagelogentry wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_pagelogentry
    ADD CONSTRAINT wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.wagtailcore_pagelogentry DROP CONSTRAINT wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co;
       public          renegado    false    288    241    3473            �           2606    60971 K   wagtailcore_pagerevision wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.wagtailcore_pagerevision DROP CONSTRAINT wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco;
       public          renegado    false    3596    290    286            �           2606    60700 S   wagtailcore_pagerevision wagtailcore_pagerevision_user_id_2409d2f4_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.wagtailcore_pagerevision DROP CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_users_user_id;
       public          renegado    false    290    263    3527            
           2606    60956 O   wagtailcore_pagesubscription wagtailcore_pagesubs_page_id_a085e7a6_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_pagesubscription
    ADD CONSTRAINT wagtailcore_pagesubs_page_id_a085e7a6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.wagtailcore_pagesubscription DROP CONSTRAINT wagtailcore_pagesubs_page_id_a085e7a6_fk_wagtailco;
       public          renegado    false    286    3596    338                       2606    60942 [   wagtailcore_pagesubscription wagtailcore_pagesubscription_user_id_89d7def9_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_pagesubscription
    ADD CONSTRAINT wagtailcore_pagesubscription_user_id_89d7def9_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.wagtailcore_pagesubscription DROP CONSTRAINT wagtailcore_pagesubscription_user_id_89d7def9_fk_users_user_id;
       public          renegado    false    3527    263    338            �           2606    60705 Z   wagtailcore_pageviewrestriction_groups wagtailcore_pageview_group_id_6460f223_fk_auth_grou    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_group_id_6460f223_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageview_group_id_6460f223_fk_auth_grou;
       public          renegado    false    293    208    3404            �           2606    60966 R   wagtailcore_pageviewrestriction wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction DROP CONSTRAINT wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco;
       public          renegado    false    292    3596    286            �           2606    60715 f   wagtailcore_pageviewrestriction_groups wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco    FK CONSTRAINT       ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco FOREIGN KEY (pageviewrestriction_id) REFERENCES public.wagtailcore_pageviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.wagtailcore_pageviewrestriction_groups DROP CONSTRAINT wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco;
       public          renegado    false    293    292    3619            �           2606    60961 N   wagtailcore_site wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id FOREIGN KEY (root_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.wagtailcore_site DROP CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id;
       public          renegado    false    3596    296    286            �           2606    60725 G   wagtailcore_task wagtailcore_task_content_type_id_249ab8ba_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_task
    ADD CONSTRAINT wagtailcore_task_content_type_id_249ab8ba_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.wagtailcore_task DROP CONSTRAINT wagtailcore_task_content_type_id_249ab8ba_fk_django_co;
       public          renegado    false    298    241    3473            �           2606    60730 P   wagtailcore_taskstate wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.wagtailcore_taskstate DROP CONSTRAINT wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co;
       public          renegado    false    300    241    3473            �           2606    60735 Q   wagtailcore_taskstate wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco FOREIGN KEY (page_revision_id) REFERENCES public.wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.wagtailcore_taskstate DROP CONSTRAINT wagtailcore_taskstat_page_revision_id_9f52c88e_fk_wagtailco;
       public          renegado    false    300    290    3614            �           2606    60740 R   wagtailcore_taskstate wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco FOREIGN KEY (workflow_state_id) REFERENCES public.wagtailcore_workflowstate(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.wagtailcore_taskstate DROP CONSTRAINT wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco;
       public          renegado    false    300    305    3653            �           2606    60745 T   wagtailcore_taskstate wagtailcore_taskstate_finished_by_id_13f98229_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_finished_by_id_13f98229_fk_users_user_id FOREIGN KEY (finished_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.wagtailcore_taskstate DROP CONSTRAINT wagtailcore_taskstate_finished_by_id_13f98229_fk_users_user_id;
       public          renegado    false    300    263    3527            �           2606    60750 S   wagtailcore_taskstate wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_taskstate
    ADD CONSTRAINT wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id FOREIGN KEY (task_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.wagtailcore_taskstate DROP CONSTRAINT wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id;
       public          renegado    false    300    298    3635            �           2606    60755 Y   wagtailcore_workflowstate wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco FOREIGN KEY (current_task_state_id) REFERENCES public.wagtailcore_taskstate(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.wagtailcore_workflowstate DROP CONSTRAINT wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco;
       public          renegado    false    305    300    3640            �           2606    60981 L   wagtailcore_workflowstate wagtailcore_workflow_page_id_6c962862_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_page_id_6c962862_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.wagtailcore_workflowstate DROP CONSTRAINT wagtailcore_workflow_page_id_6c962862_fk_wagtailco;
       public          renegado    false    286    305    3596            �           2606    60991 K   wagtailcore_workflowpage wagtailcore_workflow_page_id_81e7bab6_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflow_page_id_81e7bab6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.wagtailcore_workflowpage DROP CONSTRAINT wagtailcore_workflow_page_id_81e7bab6_fk_wagtailco;
       public          renegado    false    304    3596    286            �           2606    60770 T   wagtailcore_workflowstate wagtailcore_workflow_requested_by_id_4090bca3_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_requested_by_id_4090bca3_fk_users_use FOREIGN KEY (requested_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.wagtailcore_workflowstate DROP CONSTRAINT wagtailcore_workflow_requested_by_id_4090bca3_fk_users_use;
       public          renegado    false    305    263    3527            �           2606    60775 K   wagtailcore_workflowtask wagtailcore_workflow_task_id_ce7716fe_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflow_task_id_ce7716fe_fk_wagtailco FOREIGN KEY (task_id) REFERENCES public.wagtailcore_task(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.wagtailcore_workflowtask DROP CONSTRAINT wagtailcore_workflow_task_id_ce7716fe_fk_wagtailco;
       public          renegado    false    307    298    3635            �           2606    60780 P   wagtailcore_workflowstate wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_workflowstate
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.wagtailcore_workflowstate DROP CONSTRAINT wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco;
       public          renegado    false    305    302    3644            �           2606    60785 O   wagtailcore_workflowpage wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_workflowpage
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.wagtailcore_workflowpage DROP CONSTRAINT wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco;
       public          renegado    false    304    302    3644            �           2606    60790 O   wagtailcore_workflowtask wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailcore_workflowtask
    ADD CONSTRAINT wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco FOREIGN KEY (workflow_id) REFERENCES public.wagtailcore_workflow(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.wagtailcore_workflowtask DROP CONSTRAINT wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco;
       public          renegado    false    307    302    3644            �           2606    60795 M   wagtaildocs_document wagtaildocs_document_collection_id_23881625_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_collection_id_23881625_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.wagtaildocs_document DROP CONSTRAINT wagtaildocs_document_collection_id_23881625_fk_wagtailco;
       public          renegado    false    309    271    3549            �           2606    60800 S   wagtaildocs_document wagtaildocs_document_uploaded_by_user_id_17258b41_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_uploaded_by_user_id_17258b41_fk_users_use FOREIGN KEY (uploaded_by_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.wagtaildocs_document DROP CONSTRAINT wagtaildocs_document_uploaded_by_user_id_17258b41_fk_users_use;
       public          renegado    false    309    263    3527            �           2606    60805 [   wagtaildocs_uploadeddocument wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtaildocs_uploadeddocument
    ADD CONSTRAINT wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_users_use FOREIGN KEY (uploaded_by_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.wagtaildocs_uploadeddocument DROP CONSTRAINT wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_users_use;
       public          renegado    false    311    263    3527            �           2606    61001 N   wagtailforms_formsubmission wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.wagtailforms_formsubmission DROP CONSTRAINT wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco;
       public          renegado    false    315    286    3596            �           2606    60815 K   wagtailimages_image wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES public.wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.wagtailimages_image DROP CONSTRAINT wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco;
       public          renegado    false    3549    317    271            �           2606    60820 Q   wagtailimages_image wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_users_use FOREIGN KEY (uploaded_by_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.wagtailimages_image DROP CONSTRAINT wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_users_use;
       public          renegado    false    317    263    3527            �           2606    60825 K   wagtailimages_rendition wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim FOREIGN KEY (image_id) REFERENCES public.wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.wagtailimages_rendition DROP CONSTRAINT wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim;
       public          renegado    false    319    317    3680            �           2606    60830 Z   wagtailimages_uploadedimage wagtailimages_upload_uploaded_by_user_id_85921689_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailimages_uploadedimage
    ADD CONSTRAINT wagtailimages_upload_uploaded_by_user_id_85921689_fk_users_use FOREIGN KEY (uploaded_by_user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.wagtailimages_uploadedimage DROP CONSTRAINT wagtailimages_upload_uploaded_by_user_id_85921689_fk_users_use;
       public          renegado    false    321    263    3527            �           2606    61006 U   wagtailredirects_redirect wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco FOREIGN KEY (redirect_page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco;
       public          renegado    false    286    3596    323            �           2606    60840 L   wagtailredirects_redirect wagtailredirects_red_site_id_780a0e1e_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_site_id_780a0e1e_fk_wagtailco FOREIGN KEY (site_id) REFERENCES public.wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.wagtailredirects_redirect DROP CONSTRAINT wagtailredirects_red_site_id_780a0e1e_fk_wagtailco;
       public          renegado    false    323    296    3631                        2606    60845 L   wagtailsearch_editorspick wagtailsearch_editor_page_id_28cbc274_fk_wagtailco    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_page_id_28cbc274_fk_wagtailco FOREIGN KEY (page_id) REFERENCES public.wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.wagtailsearch_editorspick DROP CONSTRAINT wagtailsearch_editor_page_id_28cbc274_fk_wagtailco;
       public          renegado    false    325    286    3596                       2606    60850 M   wagtailsearch_editorspick wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.wagtailsearch_editorspick DROP CONSTRAINT wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse;
       public          renegado    false    325    327    3705                       2606    60855 P   wagtailsearch_querydailyhits wagtailsearch_queryd_query_id_2185994b_fk_wagtailse    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_queryd_query_id_2185994b_fk_wagtailse FOREIGN KEY (query_id) REFERENCES public.wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.wagtailsearch_querydailyhits DROP CONSTRAINT wagtailsearch_queryd_query_id_2185994b_fk_wagtailse;
       public          renegado    false    329    327    3705                       2606    60860 S   wagtailusers_userprofile wagtailusers_userprofile_user_id_59c92331_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.wagtailusers_userprofile DROP CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_users_user_id;
       public          renegado    false    331    263    3527            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   /   x�3�(�OK-.�/�2�.)MI�+�2�N�HM)�I-����� ���      �      x������ � �      �   ?  x�}�ͮ����S�	���M�Y&� �	0�շ�����F�}(��:��zg��!�LV�H�.>?v��iZ�ݟ����r�Ϸ�G���/�X6�<�w����MϢ+��_��l-q�z�x�r-�u�;O��I�kQ����y��[[��e���}*zk��]�h����Gk<!�8�v��G�U0��|�N��'���u��($�(נ9ʉAʹ?��e���LV���O���rz]_�b���Sh.��Le��X9��2�+G�%ՉW�j��}�O�:�nI��/�#B��������D�Vˉ�&���u�M�������y},
 ��P%)��#���B䬁Ji����c�-����u�
��WC�����׆V���)�6��RN~P�6��ό�Ո��<ߖ����c}([�� �#�P�F��4�$���`z������S�e*B�U!�J�h4�(}^����ߡ"
ͬN\J��iV*��Rڬк��4�?���k���m��{\ʎ(�E )~�6�0ga�4z}�n~����mu�'#CG�Q�救� ��͋#g@q����*�5j?��)��V�S������0Z7eA����HFo���Hɬ�HQ�,�HQ�,	��}��h�{ٽ���^����,���י��ż�J۰e�� �wC��0 �$� bKU# �����[Xލ���L[X���YA9"V�O�����	�G���Z4uT��#e"�ʤ)+��!���Ш�(G�����Z#6n�_ܣA(# ��V ) ��V !�sy+@���q���q��m��H1�*��D{��T��,�xN%�H��fÓ��}z����R�|g�o�]�!r>�(ݶ�4J�i��r��H�����:����P�ȡK�F>1�� ���q:/������:��4�}N5�������XH	e�D�et�@~HZD\��k�L"q����<Pz��b�#(/xB�r$�o�p��}�n�u<��}�n��*��~�XW����[���jhѠ�9��U��dO`u��K�U�#X]��zX�9��<ں� .���;��\���E����6��������cb͗gY��9����v�X�%[V�?)�p��e~��3���,k!Ӻmm�V���ΈĿDGA�щo�RAFe�J4� ���XϢ�+���( �C#�|Ն��E!�tA��F�t{��E�6|�`�)x!�y�b5@b�� 4b���@���˺f��ҥɰc�����}��Q)_N�ȇ- �r9��z���ֽ�K2���:��hݦ�;@Ր�9�w9ն�wN�O��9��RL���w%���o�����WZ9����@��Pxϑp��Jp����r�{�,񬫳3$�4yU�����&ȫ���M�Wh���kz�,Z�a��M	5b��({HL��ʀX�<�y�k������s���]�F��毗��DGY2�BCA�S��	�xB���!i>���hm�����t�*��I��u�# ���Uj�W#��1���ݧ�ߨ:g��\��ˈ)�6�bp~���!ģ���X����߄���S5a&|���xFH s�&�#��l���Y#E�?�;�B2�9�]��N�o�>�2�>q*���!�����k:��� �������9��70�M'��~_�Zd�����!�RC W��n�Y_�ѽ��SG�!�U{��;�W��{��͵G���N��As�Dc&l���`c�LV�s��pI��L�D~�}����J�IO��ί��XɢH�k�k$;\�h�����-�t(�L����\��6��y|��+e���@���5K�53��4��q��C��6���`���L�u����l0ԓ�E~̏o_��w�6e��P@){ *V
�Ak"`�5�n��x7���ǫ��M���Á�D^��!RSNȫ1DjHy�F>)�J#�O�d���f��_SQ`��h����7UEs�U�����+�du���o���J��YD��fȭ���͘.�� 7�ߧ^�����}K��<���,��)�*�+#�DYg�by'*>�����͡��Bgm���C+�lQrn`j ��,	�4S\���j��UC�� ���F���X0r��]i4�����dx7]����
P�
R�
@8J�d����������nE?zL��b�hS$XR>�!�W����ho��{��0�{�D?�́��0��m+�K`�t��	R�4p1Z��n���i9V��q�8G	�>B�� ���Q�]�n��;��WwG�U�
�&h���]��ʦÊ��~���y����ֶ�M���V�C����.eE(DQA�'�Rk"�Q�L����$5�R^gx�����@�ɋ
E�ѡ��hӥ�ѡ��hӧ�ѡ��h���ѡ��h��M����lJ����i�6CG�� \��&�Ǐ4�>�4t�)�z��!�������v���WW����ԟX�NE�}�Y�F�"�!�1֪���ۨe>]Lyz<���ǳ�<�*���v��/�H����_e�
��%��"E�xs�_/'�F��nr_D�%�U9oX�Y՘z���*���f���MF��l��~�J�7QG�R�P��^]��KՂ�^���������+��&9�����+��)
)Ak$`�N�;b�i�G�P *�U�x0lQ��Lv&��ȶ�����+�϶���6�k����a���MLW:���Nyy�-���n�c���nT�er,�I�Mo�c-L"m|}+��$�AT���z�>�pk��A�u���MQ��>��m���=�o/���R�5B.�*��[#D�R�5B��J��oeY�m1ߔ      �      x�3����� h �      �      x������ � �      �   z   x�u��
AEk���g��
�vZڌ�8�f
���il�9��6�����-�*>�f�j��?ʘ�S8�ƨE��E{0ɋ}��N=���ù�Y�)�3&�x]o�s _d�>�      �   �   x�3�tJL�H��/R�OSN�L�KNU��Sp��-(-I-��qr�p:;s�MA�/?O78��W�]�`.c\�x���&�d��)W���"���2!^#v�=���cLHjrF^~N~z%��.3�4�pG�1z\\\ Fzx�      �      x������ � �      �   a  x��S�n�0<���_P�GH{LS��	)=�bV٦U��M%LC�y̎�<
����wޢh����6��.�Iu��Vi�ဟ��\W�����EnGcJ.t����e����jʰ�ލ�����[8"4J�.O��R���~�by����~�V)ա������!d=P'x̢���p,'�#x1��4ڴC�����C9�F�������L�,M0�%,J�j�m�!�`���-^ZH�n�Y����P�)���n@W�zvNE9~���T!o��/�'֭f��I�Z���=oYL��n/3$��)Pi]�i!�@5'laoi!<��� n������B��}J3���1��xV�      �      x������ � �      �      x������ � �      �   Y   x�3����U040��IM.)-J�42�2��!��D��EM`�&Ȣ�0QSdQ3��Ob��#'��/J,�/�I�#��Ф,R�hR1z\\\ �6E      �   �   x�uл�0��9~
^����^Ɔ���,H,�v-R���+G������A��T]�
G����<67-��:;�p4�2���u��p48d����˭�х�%�Q��Q�0$�9X'<Y��F)�~��ߋ ���Mv��=��쭸1N�]B�����CB�I�kA�������!-x_\g�Sv���)���Cv���7��.�.c��,�!�n
@��Ę�h�� _v���      �   g	  x��ZKs�>ӿ���ݪ��!Y3�*y�)�J*��%$������>��A���2�*���n|�@�̛N�>y����jU~]��r�ojUl<�-dV7Z�O<|�l##���ˍNw;��_�E��1�-uZ��� yNf?}�#(�>Ϧ0/�RWuZ�Q��J)��[�"��r���_S�$�AL��L�+�����������3��,!��3���ț.Y �GUeZ��O��}ukؘ�⃼�`�u��[�i�^|Ǉh��|SjUow�wt���1Rć�99z�2C�p�t�����?��'uJ��G����������M+	��e���I�U�<Bxr͍�ζ�6b�oz��:�>{bR����0��m��k�w$�?�E��;�ϔ)�]xǧǈ�x���>W!+�Q�ɼ�#������ IW2�e^n�MrN<�9�X|��{U�]L)2���8ʉ�!����'~�d�e/�b�@0��e�695��s
9�K�a��L��\�������{�*�|��I+�b9��Uֿ���&�����8e�W1i�J$��d�e������K��rU���%F��Uf�������/���3yLH�
l7S 3���%�	2��F�@)c�������!�jUM:�6�GAS��k�{
U`V@�H�ύ����w�"�DBG��4�eN>Ak��zi�J:��L�a˝.���ʪ2=j���z�v�ț��X}L`�ē'Yo�51���d
u�WE���kt����a��9r�i~�E=F�I���ի��c��s����˓o��	�B�(n��ϭ�(���{��B'3��!q*���k��4�]�<mk�!ri&��VX�P؅	-6А�rYR4Ѯ+���3!�hi��,�? o)A,�L�3�Av��Ph���|��tjɏI�?��Z˽���� =�bmM�ab�˔����q`�e}�.bt���XAr΋u��
��@�ŗ4�	�4�ϭd��7��D?5�:�n�S�]��Cg��!�9��r��:��~l�i�
�צ�V�U�X�1~Τw��MQi�IP�)���Z����k@���@AI�2{�<�
��p�P6��V�d���)��?q���c�PB���8F�Ň6�9)�(��;\qc¦�ǡӠ@���Eͫ-�C�#�D$N���}��6�c��ߚ� ��P�-���ús�א<Ԋ����#F��Dƪq���i�#��3�+�5$�Ս�� KD�����8p�Kk�._`h���רJ����2"+�Ҽ1>B�8g���|K'��ΨZ] A��b�i��겐'o��N�,����!v�̝����1Z%	*�^��8#M#�t�Ѳg�Z̔��ظG	�b�w��1bL��u�$7��l1��.W�s[ va�����n����</���Ӭ��Ť��L��`�<�������&������;A�4��S��j'�
n&����ϧ]`��J-��r���$_:\�b�g,���t�uM�oX����%��z�i=����ޣ�a�@pb|?�f�v6�<4]�y1�!i���-Cz��	���>#cR�?��arB)N<p�xF�Y!z�8&%���ީ��w!z�`���
�Ƣ^}�qkIء������ѽ�r��{<���ς�bv�]؁������X'x%�B{���0���O�͈5� �m(��*��1o.��4A,�5ư܆�Pr�ec��$W��1diȏ���}�	j���~%���9��a�13�N.��c\��m1�U\�£^���6;(8#�;�sT�A�Es�rVO�d���jg�82���if��~���{ƑN���^ŉO�����̋i34h��x������D����-�O{��qd\a���r�ޅ/T�>�&c����c�8�?��n�>(�����&�� ��t>:���)� 6}x��1�;M������!�LZBî��k��K|�0\86���=x�	� �3eN��Z�jyK
HA�l� �'6��4ͳ&o*/:IFg z�T�����I��� �{�"X��Q��&���X��R�_H��:3�'���Q�|m#���DD����
Z}�Z$�����A:|߾�۝��	vUc��{�_�����0\��m.�6
��E+�MX㳎ْa_T����{�u�����Dą�<&�p�2S-�11�
�I�5��n�{����nc�݌p�Wo��R��A �x�+��Z���y��Sު\������;� ����	`t�O��6Q�|�yb!���T����B����7�ǜX�<q SO�q�W1��L)��/+6����6��M�z��/��jD(.���M������]��f      �   �
  x�}�[��&���Ť�6�d��H�ۀ���K�|���&�y��߿�Ot��:�{p�/�=����su�/��\���1���@d���q���_;�?2Lu�C	h�Ha>e�#�8!��1H���P���|� ����
El�;���q,�c��Hq���c{�Dp!�����B�)oɅ��"����E`-�'�9S��V�~����?�M$���z�r��k�o.._�Nt�'�F̒>�U»�?�UGL��W	,�~ҫDr�}ʫDv�«Dq��tW�������T=ʊa��
�%yd��/��욝�.��5;\��kv"��f����>�f'���욝(.��5�3�0�f���,E]�B�C3�]���D�\��
»,EDpY�*��U�)� �+Rԕ`d.RT!E�	B)zp���"�LtWQ'"_�(�N�ϘFQu�����ż�j�B?»�SU[��C�P���*�T�J*�T���d����$Wy��ƀ�<TOl�z��U��1�k<U�kO�2��������e ̼��L���*�%O�2�����1`��L�<��B�A�'VHq}��������U"�>¿J ��_%��#���2¿>3⿎`5#�mE�|�@�5%*��
�Q�����R7��k��7$p�<�;�¦�g�p�u>;w��nsHڑ��1iGP�@�vBP� y��	�G��O��kq�Ô�h��Ibρ�+�l�{Y���5��A*8
W<!p
�tB�(�\��@>�\�@]���Q���a��Qw�X5KyW*Q������_ s�A�+x HyD)�@��(�<��a�@ʻ"��|��
a�(�NQ�|<�4�C����;!�Y>*�N�8�}��!�VwSl$�i�C���,~8Lmm���0����"�&n/�e؁ᶻ�CkX5�悗�b�f���b�4VuWc�S8V�Vcqo=f1�oEf1w��)�Q�-��a���,3���e����oaf0XRكZ��2�apd*�E���T�.#{P���8���8#И��>,�#�P8�.��^��u9v��K	�!L����<Y��׎��t�v��,����K�k_�m����.q����]ay��"�N�,p�-��(��%-�Ӳ��[�X pR�"��4��.�SM�.̭Q��+���)�+݃��s�_Tl��H;#pRO{��8��=��8��=��?
.������k�n�C�h���"H/¥���j �E@� /S��f �1����b/U3���FxYp15Ӭ����l"�`bf���m���p13��♗�F���������`L|O��&�ē�P���"�U����o�f�Cek�-�u�9�n�A<��i6�[���y*�����͟4�~���E��rM��VEx8z�*B�F>�"�3q|l*��9�n��p��s#�;�axg����2x���[�r��v�\k�A���mG𵬵ێ`��t�m	�vZj������x�LHKq�30��zF��	��V�_\�-r�`�$YP	�N�@/���:��%±@�Ho��@�n� �	�U�|����]�ML�0�Č��uڄ �	�}ڌ�Iڅڌ�Iڍڌ�Iڕڜ�c�E�<|�
]��Ç`�E��y�Eo|o׋���1�)EMe>c��A��^��L1_��S��jM����Wk6�+3_��r*_���ee�s`�+�Ck����#+�_��t��lN3qU|gs`@<��a��),��e�SYX������֞l���\XL �T����0��=��̅�Ci�C&��4�vS�ჩtS�ѩv��z*�T&`�M՛�TN56��@��zS(3Uo*�{��4l�޾.��P�>.lti���76*t�YN��E�����������D|st-'�>��ّd���H�twv�Y�;;a��i_���N;��|!C<
���W���8�	�ʴD6�W��,9��SZ ����@ ����@ �v�Dn%�������"�Qr�	�|ާ�h3}����o�.�ma�pP�����A��3h���-�$*y�2|��OgE���,vh��<�C�ފz�g0G�3,=�w7����������z�1�+*2�j���{�	훸�f�Ѿ��1��H��f�Pe�����&�1��2�F�	��e��`��Wq�Qh.>10���;���4
�����g��[�������3�՜�d��la�A��z�b�f�-��q`�[�>��.�\v��J�d8N|�ls���|*y�
���� ~�et|T��G�GE������<UF�GE�A�(�T+���G��ut|t�������!T>�KKmdץ��#pw]Zj�cN���v��KKmG�L[�����r.����mi�)�/-���4gyo�38K�|o"^A�&ߛ��(�b�N�*�NA2\��&��0@�.V�d��G Ц�'=b&~/]�����.���a N�2A���Οdf��]��h�9�����H��˹��.i�s��(�]��(M��A��.%�/L���ff<��{�0���i�|[ϥ�=���3�=��D��W�_.y����%$A��7�s��q8��J} ��R>q�O�~�!����9�?���      �      x�3����� v �      �      x�������� � �      �      x������ � �      �   �  x�}T�� }&�SQ�����PM-[-.�v���ު�/(���$��M[Y�����@����}��S�^�҉�ug"��M`m+���	6�&?��E�ʶ-2
Ŵ��
Ι*���r�k��?��4b���#�nX�!IF�Y۱�\��tD�o�cEd"\~3���-`]�N_S��I�\�2+�"]Q��-��<���|�L��8=����A�&�!����D�������2�/o��_ sa�]�8��x��*>}��9��BBGqY��젆�,�^f&MfW�t��պ�D\å3Dl�,Y��qC9���,]�.X��Hg�.���:�Q{�[�k�gէŗ�>j�c(�5;#=O4�v�M�	�ސ�������gɾg�^��M9���>�ȥ;n��C.����,ۘ��Y��b;��>��^GU�����rcQv�a�5��6�˺���/ȓC�sH�q$��!�ȳ]�Z۰�n�6C��4�'Wk�?| /V���ృ��X\���&V�S����p�����ga�6�$�L<D��4V��Z�l%��8�kN?�ʷ8{���X����v2��@�t������w|�g:K̾:���]V��`�}��"���U��c�V����*䞀�? �/���.      �   �  x���ێ�8������E��,j[vkZ�<��I��o�,Q��,0�N��WY�;�ש�N���w!\��vj�nG�?����_��a�ԞJ)�R?�ʒTCs鿚��Ee���֗��bD���������Li�=���Tu75Cuk�K;�m�߫.��k�g�W%g��<��G�G����m��"���PD��9��b��ߦ����DF�#�z���?�0�{W^��]v�{;ĭ�{T�{@PB[����Uw����a���j���K3���)OJ XfhE�*.̋8,Ƒ�W�	E�w\L
#�:���ñ��b��b\�o�DMu���3g|�>�YEO�d>�S;l��q eY|gl7hX&�6งC�N��C�]�s+�M,J�0P��U�'�9�C���z�5��:7$����XS��H	�ͩ�������\���Z�i�[�]I�W���g[��#����#�����XKɬ?�[s;�H����.���6�`*vMh�f?�LX�Qҏ ^;4_��ah�'Ǫ��W�9QU��v7�?�ʰ�"�ꐟ@s}u��%8��N`�'0
���' �>�YN�"��+��|B��c�5S)*�� �> �X��
��{׎�����r�@�i~C>�5v�3P����\Os�`B޹�ZX���ͤ����U|����vd4�	fv3���A|��V������<���k��.އ~3}��4S{�bDh�,�9�S�9���0����(�>��\-X-�w��_��8��dj"�_��c�LW2�b�j�^.fu��z�9��ΥA��;#�?�h.@q6��\W���NP�������	�V_4W!vhc;=r<���{U�\$��vNq�ޫ���j��P&�r���� RR�5��_c��Ź��H�@bXyc� ��p�{�/Mb�e,W���,�.����<9�������/�[��ֿn�����p.;ס�b+צ�8��l��1�:�5L	$���N�R4�ҔA��_Y�����m~��B�Ӻ�pǹQ"��7�%@�����gX�U�!2��&��>�![�3���c�*�I�ˁ�B���"!
�<W��y�����sP�J�?!J�ˀ�jl�y�aM�ޕ]W�z�ֆ<wy
._���$ž�����ݸ���
,����ϐ<Cn�ǡ>��۩8@h�* ��ڸ�xխ���	|O���"y ����/X�s�|���xOT8S�\������V�P��\��c�e�u0|*U *���E������O����.r}0��q�Ñ�^H�`�N�W?|�:��M1ԕL*�;�S�rlN���"��ъN.���?�Ɉ�	٪����!{���rp�f44��Ɯ2��8�*�48��%�iF��x6�C�@-38�J�>ωu��?��P��9�Y�nͭ[�]���l�;d�ל�"�a� Ju�~�ǜǃ��Cu�=�n�e�\1�Y<F:��/�%ڵ�(�@�|꒹swL�Z��Ǫ?�%��Z�˵	\��<b�-��HR4�I��+�- �����K�Q�ȑ:�?���2f&�2H��{=��p�tO��;���K�����0��H0���L�Ȯ>^���r�`ֳM6�
jZ\^@<*C����b	B���mߩ��-��P�tS�	T��
����݆E�$TbJ�Z������? ��Q����b!L(��n����)�wc��p_�I�.���$��l"�άq�	w���2�(�S��vu5ٍ����"l!{��tmK �|6��un�9��D�5��{����͘8�P�Y2U4�M���n��P��-�bf5
y
����3�5�3sZ�ߛ2���n�ݝ��]N�*��ol��[ǔ<��Wٟ�p��i��ž/�Z1���-͚�&	�+K�q���HJ�E)`��?�T�C��M#�����{�u:����r��r|Ot8�a�s�t�����C-l}� ���W�ov�"�w�d�`}�N����.���TP��Њ�Z�w�n]_m��R�6�~<l-u�!���û0T�+�Qn��TO-�B#�A�" 0�=��(�Nx������ܣ1�F�Q���Pp�Q�8wn�.c ��<׶�S��n�Iܳ0�2��Z��D/o.�pzx�S�g�~�"��d�� �c��5�n�`�Omńa�����fF~Tz���xk�黚>���i{����֧��pu�S2Q]'���qL|�éŘ2�&=D
L���	a������̪�o����S<��e��S1�n�M�g�c��hJ �ڄ��nE=��GX��D?n/�mċ�{Ψ7Ukӗ9�؇
�V_"P{�:��#�G{�iKƇh�b�Jp�l��Y�^�<��y/�&�z~	��M��8F]��^��AR�/��&2_���_�����i�1(u�DyH��X@J�Hb��k�����.85�"&u���D�4q�ڳ!k�)>�bŻ8]�8�+[�8��0Ҟtx���:��+����"��3WU����|�z��������cn0�fV��l��p�96��9�П���C�`�����������lg�4d��V�#��������� J�\�µ�za�|��5�p���Zϣƃl �o�Z$o�gE�=x���	�^I*8p��Ej�����L�/����a��y��ߖѕ�J�$R$y=ێ��>iD)(�B7���l�̟�C���G E����pj�-�|S��{ȯq�y�d�o�?��2>h����y��76�px���������x�>�4��~bj��]�w�9�=|A
|ӧ�ԺK V���G���G;mm��t���~ݖG�`k��O�~���'/Mց���	
k&A��$2Ɋ����P���+ʦ[�ؗ�n�R3.RxH���g����g��P�
�ԝ�X1_�
�ةϯ:(T��D��ҩS�rA<܇�>ia����D�B�I=�HTb��x!� ʇ��Բ���l�X�d<._�����Ͻ�mD������a������7�-X,q첬�@���4'�B��\���$��ܜ"�0����o�]�zz�9����i�>"�ܤL��1�F����J]��	�R�_�L�������/`ac�#_�J��˸����-�4���5r�3F�ǋ��l��P�b���4Ɯ�7
�p��J�r�E![pX�;߲CS7�h�Qr�za�>&�#ӂt��gz!��u�@�8|8�/�9Tjo��9"��B�tg}ąg�� ��9�P�=��LIF��)7����V2���*��'�m����y����BV��$m,�B�� m��B��b�Pk��� g�/�\�#3�>5�h���E��t�
��!�ڗ�J-P<�&�'f��C��h����/?��Z��h� �U#�@�7��H��x���u��p�esx���t�u@��[�)�e��Z��5��'[�)+�B�b*砦�8C��D��;8�S�������?��"y�      �   b  x���Y��H ����U�e�*f����`��Z�����̰�\KQ������'�a�X�A�ງ>������~lc}�
�;N�`��&7q���C&Z�Vel�ً�3���?����
��S�1�[]`߅�q��������&���DtW-�lbď�M�1�*��q���d���v�$T�����j,!*��L�n��?�X�^^'���7S��o��[dVt��7�uit=.=��1����) �H�2����@���;ny�,���(���EYF% �����^i��n���̩���B�� �:W�/g��m�}=Ҡ#�x�c��\����>Gj���8�wj{��|S�'�CjY�y17��ܫ�Cͩ�}� �~\5�8
�K\4Y\�!5���T.�[i����BB�4��W*T��ė����e^��4�qb�ؾ��Ȳ��K;r4\a8ɔ>*�#jG��[�1<��f~b����i�ʾ[��+*���mt��),1�(�r \Udy�"��-S��e�=..�A�Ḣ�����6h�ð8�E�g���S�⦦a=y��}Z�L��!�;�f���Y���,x��M_>�4X]�婴5e�T[N���#K�Md�)���!�ǁ93����)JW��n}����F���ܙ�ĕe��z3E3<i��1-���p��1���!�O�����c)�2�2LVв�@�t��1N���'���H��{���؁��	n���ʘ/9_/^v�.��]s?DA�7�գ�7���-� ~��x	ƒ׾��g��L�0�}L�<�{ؐZ�N���f(��q_�B��^#�lZe��������������g��) w4�%H�⹏ۿۯ��_$���      �      x�3�L�H�-�I�K��Efs��qqq �<	�      �      x�3����� } �      �      x�3����� � �            x������ � �      �      x�3����� o �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�m�Ok�0��s�*v�M,�c�������m�nT�`�5u�i��J�կ2v����|�C�6-V9|�?0��cw�{���[[��o�X'�JC�Ƨ�^4_]�⸉l�0�w"-n` }��ؿ! $/`��j��,B�v�e��~���H�<J�K��܁�ĳ���$Kƺr����|�Fg�M�H����B�b�<�O��$��/��H�X�j�FU��:��p]�����r"�~���8�;M[      �      x������ � �      �      x������ � �      �      x������ � �      �      x�3�4000�4�4���/����� )�      �      x������ � �      �      x������ � �            x������ � �            x������ � �      �      x�3����� Z �      �      x������ � �      �      x������ � �      �      x������ � �      �      x�3�L������ k�      �   M  x��U�r�0]+_�=s����޲b�aӍ$�Й�f���}d)M렔0��ut��#����:�{�]N{6��,�����2Z.��ey�MNp9y��Ry	�L&�OBI$]Rl��+%��G���]�������[��Ƈۛ���"��a��v/Hi�,�n��\ p�t(A�-��		���7^KGD�{�~r �����c�QTE�Q��J��%�{����uk��[��@�[r�z@ꝐD�8[��R1$�)��W,Z�hLI�H^V��5Y�� �p�w��1.�p)���5}A-�fP���5|��W�Q����Iõ��BpNH^��OɃW*z'��� �y-�,��;��%aށw�Z|�_���A�^c����]���Q��m�f��	'!�l�$G�Qh�V�r�h�H��]9�X>�Q�Ϗi�x��N� �����ř,'zɆ^�3�^s��`�L�X��s�ji&>:���D�S��
�9��"��DccO���w>���ۇ���/3�9���G��u�J4w�--R�Q����>�J�T,��Qk��Ob���ZI�FK�*�JYKB󃷮��f����>      �   �  x�͖MO�0����rX~��\w�eC���,���!����M�ʤ�[)?�_?.��gŝ�u����K��/�7�������'�p��J�(�S�N���R�SP��L�F5���736��|����nݢ���f�f���P�"�TK��"�S����*��-Z6y�"�	���hr��S)pb$�08E�W')Sb:�ݺ�@,p�!�޻�ߥ���g�/�yO���$�OI��r�GrSͪJNpR�:�^���>|t��Y��_�]�M��
�%�V.��>��o��%sJ�T}ݻ���f������ґ�P��_�Xki9}��U��^�n�B0�Hb���1ؔ�����'Z��>H�:�@�f�Lw�`c�Gj(AcQ�%��E����u8��.CDMV����B�p��DjmUN�TvP�6����Џ��;J���P
�>=Vp֨�[��t�AӤ�00Կm�N��N�
���(��[�/�L�9<F
�0�ʰ�w�F��壱JF�є���5���#UK�-��ޕm���*N�H�(BC�U�*uBkV�F�p{�z���R�W��Զ©"� ���ٌ����0 )�o�����C00����x@��lo�p�qg@���3	��H��K'�J n"����f�?e<X�      �   �  x��ˎ�6���S�&Tx�x�U7I�NQ�I!P5F�]f2(��l��mZ��x�0@�CR���>B�d�!F r ��&�$�('����Ō���׺^��B�����b������,�,v��=֥ΫL�i�����4!��P'
P%c�"����M� �vլ0:�����f<��f�X��]1�����w��q����� �N���*k�ۤ�m�P7kP$�"�m�|^�+��X�c;��ƺ����&_7Q�V�04K����%$:�ڌ�����ޝ��]�[��r�-�/�9�x
�<\ټ�_Y]�e�ʔ麽���Æ�v���2�_�i�Ž%��?xU�P��%iY���.���Tm�diӪ�Ĕ�E�r���2�a�����d�w����L�����R�q����&!-��p G�b@5�@"ɀ"$��ǈhz���Cp���Ŏ�$�v�vێ��(R�#��H%�T�FRGR������A��6��_�3�~�`�jo���m��x tz
�h;�pt�_z��H)*��X �,�X4cF+	�����j6��iB�ig� ������_� ^ܪ�#��f4������o�P-���
�l�k�t@ �T r�Y���	@�@����[�@E�}(Zi0�#�icr^ ��j������M��oG��ޯ��o��U>z8���v��Z �ܹ�
�p��m��-�G�~�z��G�<ӻjҋ ��J0 	E�&&�k���D!ͥ���ã-S���F� ��р��r��b�͙C�ZἸ�KG>��>�B�>��O��}-#�� qF��,�@Ƥ$����5�t�.�!�?�����?=�G�n��#�?�j>�)
 #�#շhrZ�d�49W59[{�69|@�T���A�*�p��Q�0~
a8"R�"���{�!O���`��n����;��)�>�0$A�P.�.a��O��*���['���t�k���            x�3�L�4�4����� :�      �   *   x�3��4�L/�/-(�2��4���89MalcNN3;F��� k]      �   .   x���  ��w<RK
˰�D���Rih��V�r�hNn�y��N�      �   /   x�3���ON���/.�0�,�4�	Pv�pu	���s����� �	�      �   '   x�3���OI-J,�/*VH,((�/K��,�4����� ��	J      �      x������ � �      �   %   x�3���OI-J,�/*VH,((�/K��,����� ��	      �      x�3�4����� ]      �      x������ � �      �      x�3�4�4�4����� ��      �      x������ � �            x������ � �            x������ � �            x������ � �         f  x���Mn�0���)�/��_��0dIL�L���@9�$��f �zxߣp:�^���|9MO/���R��c=���ލ��ށ�a��*��K0�������C
�	'0(^�C�3�Ѕ�Ee쵵�G3��1rA���9$PШ���1B��4�Y��������D�dBT�1V�Ub��}�� ���0QR?��ZA�ph%����B�a3O�����8hj�D�Ԕ�آ��7�7������ʼ d$��& =��@��^�%�d���d�}�9SLc�ζe� w�@�Z�%\�² ��[D�f��?"�J�h�gB �"�{С���e�l5S֑�3����|����T=�O      	   �   x����j�@Eמ�;W����0�4	)vڍ?������p`�Y.��4����i�i�w0�[���c��ku?�Y�=�9?��4�;ͳ����[����1xa�\`RY�C�"^�#"��4�Y	��� � %�_տ��ק��ExdAE�Z�g
�(UMɝ3[��`��_˗�m�ߡϩ|���V[���8��2 �b�V�Wҗ�[�w�Kz�SJ�X�l            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x�3�,CCN (�2�r� �=... n{�     