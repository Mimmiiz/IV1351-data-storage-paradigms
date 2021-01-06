--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: appointment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appointment (
    id integer NOT NULL,
    start_time timestamp without time zone NOT NULL,
    end_time timestamp without time zone NOT NULL,
    booked bit(1),
    instructor_id integer NOT NULL
);


ALTER TABLE public.appointment OWNER TO postgres;

--
-- Name: appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointment_id_seq OWNER TO postgres;

--
-- Name: appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appointment_id_seq OWNED BY public.appointment.id;


--
-- Name: appointment_instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointment_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointment_instructor_id_seq OWNER TO postgres;

--
-- Name: appointment_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appointment_instructor_id_seq OWNED BY public.appointment.instructor_id;


--
-- Name: audition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audition (
    id integer NOT NULL,
    instrument character varying(500) NOT NULL,
    passed bit(1),
    start_time timestamp without time zone NOT NULL,
    end_time timestamp without time zone NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.audition OWNER TO postgres;

--
-- Name: audition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.audition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audition_id_seq OWNER TO postgres;

--
-- Name: audition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.audition_id_seq OWNED BY public.audition.id;


--
-- Name: audition_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.audition_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audition_student_id_seq OWNER TO postgres;

--
-- Name: audition_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.audition_student_id_seq OWNED BY public.audition.student_id;


--
-- Name: email; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.email (
    email character varying(500) NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.email OWNER TO postgres;

--
-- Name: email_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.email_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_person_id_seq OWNER TO postgres;

--
-- Name: email_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.email_person_id_seq OWNED BY public.email.person_id;


--
-- Name: ensemble; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ensemble (
    lesson_id integer NOT NULL,
    genre character varying(500) NOT NULL,
    lesson_type character varying(500) NOT NULL,
    pricing_salary_scheme_id integer NOT NULL
);


ALTER TABLE public.ensemble OWNER TO postgres;

--
-- Name: ensemble_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ensemble_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ensemble_lesson_id_seq OWNER TO postgres;

--
-- Name: ensemble_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ensemble_lesson_id_seq OWNED BY public.ensemble.lesson_id;


--
-- Name: ensemble_pricing_salary_scheme_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ensemble_pricing_salary_scheme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ensemble_pricing_salary_scheme_id_seq OWNER TO postgres;

--
-- Name: ensemble_pricing_salary_scheme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ensemble_pricing_salary_scheme_id_seq OWNED BY public.ensemble.pricing_salary_scheme_id;


--
-- Name: group_lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_lesson (
    lesson_id integer NOT NULL,
    instrument character varying(500) NOT NULL,
    lesson_type character varying(500) NOT NULL,
    pricing_salary_scheme_id integer NOT NULL,
    level smallint NOT NULL
);


ALTER TABLE public.group_lesson OWNER TO postgres;

--
-- Name: group_lesson_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.group_lesson_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_lesson_lesson_id_seq OWNER TO postgres;

--
-- Name: group_lesson_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.group_lesson_lesson_id_seq OWNED BY public.group_lesson.lesson_id;


--
-- Name: group_lesson_pricing_salary_scheme_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.group_lesson_pricing_salary_scheme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_lesson_pricing_salary_scheme_id_seq OWNER TO postgres;

--
-- Name: group_lesson_pricing_salary_scheme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.group_lesson_pricing_salary_scheme_id_seq OWNED BY public.group_lesson.pricing_salary_scheme_id;


--
-- Name: guardian; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guardian (
    id integer NOT NULL,
    person_number character varying(12) NOT NULL,
    first_name character varying(500) NOT NULL,
    last_name character varying(500) NOT NULL,
    phone_number character varying(500) NOT NULL,
    email character varying(500) NOT NULL
);


ALTER TABLE public.guardian OWNER TO postgres;

--
-- Name: guardian_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.guardian_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guardian_id_seq OWNER TO postgres;

--
-- Name: guardian_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.guardian_id_seq OWNED BY public.guardian.id;


--
-- Name: individual_lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.individual_lesson (
    id integer NOT NULL,
    lesson_code character varying(500) NOT NULL,
    instrument character varying(500) NOT NULL,
    lesson_type character varying(500) NOT NULL,
    school_id integer NOT NULL,
    pricing_salary_scheme_id integer NOT NULL,
    level smallint NOT NULL
);


ALTER TABLE public.individual_lesson OWNER TO postgres;

--
-- Name: individual_lesson_application; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.individual_lesson_application (
    appointment_id integer NOT NULL,
    accepted bit(1),
    student_id integer NOT NULL,
    individual_lesson_id integer NOT NULL
);


ALTER TABLE public.individual_lesson_application OWNER TO postgres;

--
-- Name: individual_lesson_application_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.individual_lesson_application_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.individual_lesson_application_appointment_id_seq OWNER TO postgres;

--
-- Name: individual_lesson_application_appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.individual_lesson_application_appointment_id_seq OWNED BY public.individual_lesson_application.appointment_id;


--
-- Name: individual_lesson_application_individual_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.individual_lesson_application_individual_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.individual_lesson_application_individual_lesson_id_seq OWNER TO postgres;

--
-- Name: individual_lesson_application_individual_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.individual_lesson_application_individual_lesson_id_seq OWNED BY public.individual_lesson_application.individual_lesson_id;


--
-- Name: individual_lesson_application_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.individual_lesson_application_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.individual_lesson_application_student_id_seq OWNER TO postgres;

--
-- Name: individual_lesson_application_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.individual_lesson_application_student_id_seq OWNED BY public.individual_lesson_application.student_id;


--
-- Name: individual_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.individual_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.individual_lesson_id_seq OWNER TO postgres;

--
-- Name: individual_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.individual_lesson_id_seq OWNED BY public.individual_lesson.id;


--
-- Name: individual_lesson_pricing_salary_scheme_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.individual_lesson_pricing_salary_scheme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.individual_lesson_pricing_salary_scheme_id_seq OWNER TO postgres;

--
-- Name: individual_lesson_pricing_salary_scheme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.individual_lesson_pricing_salary_scheme_id_seq OWNED BY public.individual_lesson.pricing_salary_scheme_id;


--
-- Name: individual_lesson_school_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.individual_lesson_school_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.individual_lesson_school_id_seq OWNER TO postgres;

--
-- Name: individual_lesson_school_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.individual_lesson_school_id_seq OWNED BY public.individual_lesson.school_id;


--
-- Name: instructor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor (
    id integer NOT NULL,
    employee_number character varying(500) NOT NULL,
    monthly_salary numeric(10,2),
    person_id integer NOT NULL
);


ALTER TABLE public.instructor OWNER TO postgres;

--
-- Name: instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instructor_id_seq OWNER TO postgres;

--
-- Name: instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instructor_id_seq OWNED BY public.instructor.id;


--
-- Name: instructor_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instructor_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instructor_person_id_seq OWNER TO postgres;

--
-- Name: instructor_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instructor_person_id_seq OWNED BY public.instructor.person_id;


--
-- Name: instrument; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instrument (
    instrument character varying(500) NOT NULL,
    instructor_id integer NOT NULL
);


ALTER TABLE public.instrument OWNER TO postgres;

--
-- Name: instrument_instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instrument_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instrument_instructor_id_seq OWNER TO postgres;

--
-- Name: instrument_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instrument_instructor_id_seq OWNED BY public.instrument.instructor_id;


--
-- Name: instrument_rental; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instrument_rental (
    rental_id integer NOT NULL,
    rental_start_date date NOT NULL,
    rental_return_date date NOT NULL,
    school_id integer NOT NULL,
    rental_instrument_id integer NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.instrument_rental OWNER TO postgres;

--
-- Name: instrument_rental_rental_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instrument_rental_rental_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instrument_rental_rental_id_seq OWNER TO postgres;

--
-- Name: instrument_rental_rental_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instrument_rental_rental_id_seq OWNED BY public.instrument_rental.rental_id;


--
-- Name: instrument_rental_rental_instrument_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instrument_rental_rental_instrument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instrument_rental_rental_instrument_id_seq OWNER TO postgres;

--
-- Name: instrument_rental_rental_instrument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instrument_rental_rental_instrument_id_seq OWNED BY public.instrument_rental.rental_instrument_id;


--
-- Name: instrument_rental_school_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instrument_rental_school_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instrument_rental_school_id_seq OWNER TO postgres;

--
-- Name: instrument_rental_school_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instrument_rental_school_id_seq OWNED BY public.instrument_rental.school_id;


--
-- Name: instrument_rental_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instrument_rental_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instrument_rental_student_id_seq OWNER TO postgres;

--
-- Name: instrument_rental_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instrument_rental_student_id_seq OWNED BY public.instrument_rental.student_id;


--
-- Name: lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lesson (
    id integer NOT NULL,
    lesson_code character varying(500) NOT NULL,
    max_number_of_students smallint NOT NULL,
    min_number_of_students smallint NOT NULL,
    school_id integer NOT NULL
);


ALTER TABLE public.lesson OWNER TO postgres;

--
-- Name: lesson_application; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lesson_application (
    student_id integer NOT NULL,
    lesson_slot_id integer NOT NULL,
    accepted bit(1)
);


ALTER TABLE public.lesson_application OWNER TO postgres;

--
-- Name: lesson_application_lesson_slot_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lesson_application_lesson_slot_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lesson_application_lesson_slot_id_seq OWNER TO postgres;

--
-- Name: lesson_application_lesson_slot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lesson_application_lesson_slot_id_seq OWNED BY public.lesson_application.lesson_slot_id;


--
-- Name: lesson_application_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lesson_application_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lesson_application_student_id_seq OWNER TO postgres;

--
-- Name: lesson_application_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lesson_application_student_id_seq OWNED BY public.lesson_application.student_id;


--
-- Name: lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lesson_id_seq OWNER TO postgres;

--
-- Name: lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lesson_id_seq OWNED BY public.lesson.id;


--
-- Name: lesson_school_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lesson_school_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lesson_school_id_seq OWNER TO postgres;

--
-- Name: lesson_school_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lesson_school_id_seq OWNED BY public.lesson.school_id;


--
-- Name: lesson_slot; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lesson_slot (
    id integer NOT NULL,
    start_time timestamp without time zone NOT NULL,
    end_time timestamp without time zone NOT NULL,
    total_number_of_students smallint,
    lesson_id integer NOT NULL,
    instructor_id integer NOT NULL
);


ALTER TABLE public.lesson_slot OWNER TO postgres;

--
-- Name: lesson_slot_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lesson_slot_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lesson_slot_id_seq OWNER TO postgres;

--
-- Name: lesson_slot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lesson_slot_id_seq OWNED BY public.lesson_slot.id;


--
-- Name: lesson_slot_instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lesson_slot_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lesson_slot_instructor_id_seq OWNER TO postgres;

--
-- Name: lesson_slot_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lesson_slot_instructor_id_seq OWNED BY public.lesson_slot.instructor_id;


--
-- Name: lesson_slot_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lesson_slot_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lesson_slot_lesson_id_seq OWNER TO postgres;

--
-- Name: lesson_slot_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lesson_slot_lesson_id_seq OWNED BY public.lesson_slot.lesson_id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    id integer NOT NULL,
    person_number character varying(12) NOT NULL,
    first_name character varying(500) NOT NULL,
    last_name character varying(500) NOT NULL,
    street_address character varying(500) NOT NULL,
    zip_code character varying(15) NOT NULL,
    city character varying(500) NOT NULL
);


ALTER TABLE public.person OWNER TO postgres;

--
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_id_seq OWNER TO postgres;

--
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;


--
-- Name: phone_number; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.phone_number (
    phone_number character varying(500) NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.phone_number OWNER TO postgres;

--
-- Name: phone_number_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.phone_number_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.phone_number_person_id_seq OWNER TO postgres;

--
-- Name: phone_number_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.phone_number_person_id_seq OWNED BY public.phone_number.person_id;


--
-- Name: pricing_salary_scheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pricing_salary_scheme (
    id integer NOT NULL,
    lesson_type character varying(500) NOT NULL,
    price numeric(10,2) NOT NULL,
    salary numeric(10,2) NOT NULL,
    day character varying(50) NOT NULL,
    level smallint
);


ALTER TABLE public.pricing_salary_scheme OWNER TO postgres;

--
-- Name: pricing_salary_scheme_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pricing_salary_scheme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pricing_salary_scheme_id_seq OWNER TO postgres;

--
-- Name: pricing_salary_scheme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pricing_salary_scheme_id_seq OWNED BY public.pricing_salary_scheme.id;


--
-- Name: rental_instrument; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rental_instrument (
    id integer NOT NULL,
    instrument_id character varying(500) NOT NULL,
    rental_instrument_description_id integer NOT NULL,
    currently_rented bit(1)
);


ALTER TABLE public.rental_instrument OWNER TO postgres;

--
-- Name: rental_instrument_description; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rental_instrument_description (
    id integer NOT NULL,
    name character varying(500) NOT NULL,
    instrument_type character varying(500),
    brand character varying(500),
    rental_price numeric(10,2) NOT NULL,
    quantity_available_for_rental smallint NOT NULL,
    quantity_rented smallint NOT NULL,
    total_quantity smallint NOT NULL
);


ALTER TABLE public.rental_instrument_description OWNER TO postgres;

--
-- Name: rental_instrument_description_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rental_instrument_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rental_instrument_description_id_seq OWNER TO postgres;

--
-- Name: rental_instrument_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rental_instrument_description_id_seq OWNED BY public.rental_instrument_description.id;


--
-- Name: rental_instrument_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rental_instrument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rental_instrument_id_seq OWNER TO postgres;

--
-- Name: rental_instrument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rental_instrument_id_seq OWNED BY public.rental_instrument.id;


--
-- Name: rental_instrument_rental_instrument_description_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rental_instrument_rental_instrument_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rental_instrument_rental_instrument_description_id_seq OWNER TO postgres;

--
-- Name: rental_instrument_rental_instrument_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rental_instrument_rental_instrument_description_id_seq OWNED BY public.rental_instrument.rental_instrument_description_id;


--
-- Name: school; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.school (
    id integer NOT NULL,
    organization_id character varying(500) NOT NULL,
    name character varying(500),
    street_address character varying(500) NOT NULL,
    zip_code character varying(15) NOT NULL,
    city character varying(500) NOT NULL
);


ALTER TABLE public.school OWNER TO postgres;

--
-- Name: school_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.school_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.school_id_seq OWNER TO postgres;

--
-- Name: school_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.school_id_seq OWNED BY public.school.id;


--
-- Name: sibling; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sibling (
    person_number character varying(12) NOT NULL,
    student_id integer NOT NULL,
    sibling_discount_id integer NOT NULL
);


ALTER TABLE public.sibling OWNER TO postgres;

--
-- Name: sibling_discount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sibling_discount (
    id integer NOT NULL,
    discount_percentage numeric(10,2) NOT NULL
);


ALTER TABLE public.sibling_discount OWNER TO postgres;

--
-- Name: sibling_discount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sibling_discount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sibling_discount_id_seq OWNER TO postgres;

--
-- Name: sibling_discount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sibling_discount_id_seq OWNED BY public.sibling_discount.id;


--
-- Name: sibling_sibling_discount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sibling_sibling_discount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sibling_sibling_discount_id_seq OWNER TO postgres;

--
-- Name: sibling_sibling_discount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sibling_sibling_discount_id_seq OWNED BY public.sibling.sibling_discount_id;


--
-- Name: sibling_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sibling_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sibling_student_id_seq OWNER TO postgres;

--
-- Name: sibling_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sibling_student_id_seq OWNED BY public.sibling.student_id;


--
-- Name: skill_level; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.skill_level (
    id integer NOT NULL,
    intrument character varying(500) NOT NULL,
    level smallint NOT NULL
);


ALTER TABLE public.skill_level OWNER TO postgres;

--
-- Name: skill_level_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.skill_level_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skill_level_id_seq OWNER TO postgres;

--
-- Name: skill_level_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.skill_level_id_seq OWNED BY public.skill_level.id;


--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    id integer NOT NULL,
    monthly_fee numeric(10,0),
    age smallint NOT NULL,
    guardian_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Name: student_guardian_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_guardian_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_guardian_id_seq OWNER TO postgres;

--
-- Name: student_guardian_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_guardian_id_seq OWNED BY public.student.guardian_id;


--
-- Name: student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_id_seq OWNER TO postgres;

--
-- Name: student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_id_seq OWNED BY public.student.id;


--
-- Name: student_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_person_id_seq OWNER TO postgres;

--
-- Name: student_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_person_id_seq OWNED BY public.student.person_id;


--
-- Name: student_skill_level; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_skill_level (
    student_id integer NOT NULL,
    skill_level_id integer NOT NULL
);


ALTER TABLE public.student_skill_level OWNER TO postgres;

--
-- Name: student_skill_level_skill_level_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_skill_level_skill_level_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_skill_level_skill_level_id_seq OWNER TO postgres;

--
-- Name: student_skill_level_skill_level_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_skill_level_skill_level_id_seq OWNED BY public.student_skill_level.skill_level_id;


--
-- Name: student_skill_level_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_skill_level_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_skill_level_student_id_seq OWNER TO postgres;

--
-- Name: student_skill_level_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_skill_level_student_id_seq OWNED BY public.student_skill_level.student_id;


--
-- Name: appointment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment ALTER COLUMN id SET DEFAULT nextval('public.appointment_id_seq'::regclass);


--
-- Name: appointment instructor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment ALTER COLUMN instructor_id SET DEFAULT nextval('public.appointment_instructor_id_seq'::regclass);


--
-- Name: audition id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audition ALTER COLUMN id SET DEFAULT nextval('public.audition_id_seq'::regclass);


--
-- Name: audition student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audition ALTER COLUMN student_id SET DEFAULT nextval('public.audition_student_id_seq'::regclass);


--
-- Name: email person_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email ALTER COLUMN person_id SET DEFAULT nextval('public.email_person_id_seq'::regclass);


--
-- Name: ensemble lesson_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble ALTER COLUMN lesson_id SET DEFAULT nextval('public.ensemble_lesson_id_seq'::regclass);


--
-- Name: ensemble pricing_salary_scheme_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble ALTER COLUMN pricing_salary_scheme_id SET DEFAULT nextval('public.ensemble_pricing_salary_scheme_id_seq'::regclass);


--
-- Name: group_lesson lesson_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson ALTER COLUMN lesson_id SET DEFAULT nextval('public.group_lesson_lesson_id_seq'::regclass);


--
-- Name: group_lesson pricing_salary_scheme_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson ALTER COLUMN pricing_salary_scheme_id SET DEFAULT nextval('public.group_lesson_pricing_salary_scheme_id_seq'::regclass);


--
-- Name: guardian id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guardian ALTER COLUMN id SET DEFAULT nextval('public.guardian_id_seq'::regclass);


--
-- Name: individual_lesson id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson ALTER COLUMN id SET DEFAULT nextval('public.individual_lesson_id_seq'::regclass);


--
-- Name: individual_lesson school_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson ALTER COLUMN school_id SET DEFAULT nextval('public.individual_lesson_school_id_seq'::regclass);


--
-- Name: individual_lesson pricing_salary_scheme_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson ALTER COLUMN pricing_salary_scheme_id SET DEFAULT nextval('public.individual_lesson_pricing_salary_scheme_id_seq'::regclass);


--
-- Name: individual_lesson_application appointment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson_application ALTER COLUMN appointment_id SET DEFAULT nextval('public.individual_lesson_application_appointment_id_seq'::regclass);


--
-- Name: individual_lesson_application student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson_application ALTER COLUMN student_id SET DEFAULT nextval('public.individual_lesson_application_student_id_seq'::regclass);


--
-- Name: individual_lesson_application individual_lesson_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson_application ALTER COLUMN individual_lesson_id SET DEFAULT nextval('public.individual_lesson_application_individual_lesson_id_seq'::regclass);


--
-- Name: instructor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor ALTER COLUMN id SET DEFAULT nextval('public.instructor_id_seq'::regclass);


--
-- Name: instructor person_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor ALTER COLUMN person_id SET DEFAULT nextval('public.instructor_person_id_seq'::regclass);


--
-- Name: instrument instructor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument ALTER COLUMN instructor_id SET DEFAULT nextval('public.instrument_instructor_id_seq'::regclass);


--
-- Name: instrument_rental rental_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument_rental ALTER COLUMN rental_id SET DEFAULT nextval('public.instrument_rental_rental_id_seq'::regclass);


--
-- Name: instrument_rental school_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument_rental ALTER COLUMN school_id SET DEFAULT nextval('public.instrument_rental_school_id_seq'::regclass);


--
-- Name: instrument_rental rental_instrument_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument_rental ALTER COLUMN rental_instrument_id SET DEFAULT nextval('public.instrument_rental_rental_instrument_id_seq'::regclass);


--
-- Name: instrument_rental student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument_rental ALTER COLUMN student_id SET DEFAULT nextval('public.instrument_rental_student_id_seq'::regclass);


--
-- Name: lesson id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson ALTER COLUMN id SET DEFAULT nextval('public.lesson_id_seq'::regclass);


--
-- Name: lesson school_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson ALTER COLUMN school_id SET DEFAULT nextval('public.lesson_school_id_seq'::regclass);


--
-- Name: lesson_application student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_application ALTER COLUMN student_id SET DEFAULT nextval('public.lesson_application_student_id_seq'::regclass);


--
-- Name: lesson_application lesson_slot_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_application ALTER COLUMN lesson_slot_id SET DEFAULT nextval('public.lesson_application_lesson_slot_id_seq'::regclass);


--
-- Name: lesson_slot id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_slot ALTER COLUMN id SET DEFAULT nextval('public.lesson_slot_id_seq'::regclass);


--
-- Name: lesson_slot lesson_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_slot ALTER COLUMN lesson_id SET DEFAULT nextval('public.lesson_slot_lesson_id_seq'::regclass);


--
-- Name: lesson_slot instructor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_slot ALTER COLUMN instructor_id SET DEFAULT nextval('public.lesson_slot_instructor_id_seq'::regclass);


--
-- Name: person id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);


--
-- Name: phone_number person_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_number ALTER COLUMN person_id SET DEFAULT nextval('public.phone_number_person_id_seq'::regclass);


--
-- Name: pricing_salary_scheme id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricing_salary_scheme ALTER COLUMN id SET DEFAULT nextval('public.pricing_salary_scheme_id_seq'::regclass);


--
-- Name: rental_instrument id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rental_instrument ALTER COLUMN id SET DEFAULT nextval('public.rental_instrument_id_seq'::regclass);


--
-- Name: rental_instrument rental_instrument_description_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rental_instrument ALTER COLUMN rental_instrument_description_id SET DEFAULT nextval('public.rental_instrument_rental_instrument_description_id_seq'::regclass);


--
-- Name: rental_instrument_description id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rental_instrument_description ALTER COLUMN id SET DEFAULT nextval('public.rental_instrument_description_id_seq'::regclass);


--
-- Name: school id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.school ALTER COLUMN id SET DEFAULT nextval('public.school_id_seq'::regclass);


--
-- Name: sibling student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sibling ALTER COLUMN student_id SET DEFAULT nextval('public.sibling_student_id_seq'::regclass);


--
-- Name: sibling sibling_discount_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sibling ALTER COLUMN sibling_discount_id SET DEFAULT nextval('public.sibling_sibling_discount_id_seq'::regclass);


--
-- Name: sibling_discount id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sibling_discount ALTER COLUMN id SET DEFAULT nextval('public.sibling_discount_id_seq'::regclass);


--
-- Name: skill_level id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skill_level ALTER COLUMN id SET DEFAULT nextval('public.skill_level_id_seq'::regclass);


--
-- Name: student id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student ALTER COLUMN id SET DEFAULT nextval('public.student_id_seq'::regclass);


--
-- Name: student guardian_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student ALTER COLUMN guardian_id SET DEFAULT nextval('public.student_guardian_id_seq'::regclass);


--
-- Name: student person_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student ALTER COLUMN person_id SET DEFAULT nextval('public.student_person_id_seq'::regclass);


--
-- Name: student_skill_level student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_skill_level ALTER COLUMN student_id SET DEFAULT nextval('public.student_skill_level_student_id_seq'::regclass);


--
-- Name: student_skill_level skill_level_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_skill_level ALTER COLUMN skill_level_id SET DEFAULT nextval('public.student_skill_level_skill_level_id_seq'::regclass);


--
-- Data for Name: appointment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.appointment (id, start_time, end_time, booked, instructor_id) FROM stdin;
\.


--
-- Data for Name: audition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audition (id, instrument, passed, start_time, end_time, student_id) FROM stdin;
\.


--
-- Data for Name: email; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.email (email, person_id) FROM stdin;
\.


--
-- Data for Name: ensemble; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ensemble (lesson_id, genre, lesson_type, pricing_salary_scheme_id) FROM stdin;
\.


--
-- Data for Name: group_lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.group_lesson (lesson_id, instrument, lesson_type, pricing_salary_scheme_id, level) FROM stdin;
\.


--
-- Data for Name: guardian; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.guardian (id, person_number, first_name, last_name, phone_number, email) FROM stdin;
1	197004301235	Jonas	Andersson	0701234567	jonas@mail.se
2	197210137344	Pia	Svensson	0731234567	pia@mail.se
3	19670722	Rickard	Lundgren	0705551112	rickard@mail.com
\.


--
-- Data for Name: individual_lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.individual_lesson (id, lesson_code, instrument, lesson_type, school_id, pricing_salary_scheme_id, level) FROM stdin;
\.


--
-- Data for Name: individual_lesson_application; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.individual_lesson_application (appointment_id, accepted, student_id, individual_lesson_id) FROM stdin;
\.


--
-- Data for Name: instructor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instructor (id, employee_number, monthly_salary, person_id) FROM stdin;
\.


--
-- Data for Name: instrument; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instrument (instrument, instructor_id) FROM stdin;
\.


--
-- Data for Name: instrument_rental; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instrument_rental (rental_id, rental_start_date, rental_return_date, school_id, rental_instrument_id, student_id) FROM stdin;
\.


--
-- Data for Name: lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lesson (id, lesson_code, max_number_of_students, min_number_of_students, school_id) FROM stdin;
\.


--
-- Data for Name: lesson_application; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lesson_application (student_id, lesson_slot_id, accepted) FROM stdin;
\.


--
-- Data for Name: lesson_slot; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lesson_slot (id, start_time, end_time, total_number_of_students, lesson_id, instructor_id) FROM stdin;
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person (id, person_number, first_name, last_name, street_address, zip_code, city) FROM stdin;
1	200612041234	Martin	Andersson	Gatan 1	11111	Staden
2	200703251660	Anna	Svensson	Gatan 2	11111	Staden
3	200506102424	Karin	Lundgren	Gatan 3	11111	Staden
4	201004231225	Josefin	Lundgren	Gatan 3	11111	Staden
5	201202052357	Bertil	Lundgren	Gatan 3	11111	Staden
\.


--
-- Data for Name: phone_number; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.phone_number (phone_number, person_id) FROM stdin;
\.


--
-- Data for Name: pricing_salary_scheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pricing_salary_scheme (id, lesson_type, price, salary, day, level) FROM stdin;
\.


--
-- Data for Name: rental_instrument; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rental_instrument (id, instrument_id, rental_instrument_description_id, currently_rented) FROM stdin;
2	trumpet_1	3	\N
5	trumpet_3	3	\N
6	trumpet_4	3	\N
7	trumpet_5	3	\N
8	trumpet_6	3	\N
9	trumpet_7	3	\N
10	trumpet_8	3	\N
11	trumpet_9	3	\N
12	trumpet_10	3	\N
13	trumpet_11	3	\N
14	trumpet_12	3	\N
15	trumpet_13	3	\N
16	trumpet_14	3	\N
17	trumpet_15	3	\N
18	trumpet_16	3	\N
19	trumpet_17	3	\N
20	trumpet_18	3	\N
21	trumpet_19	3	\N
22	trumpet_20	3	\N
23	guitar_1	1	\N
24	guitar_2	1	\N
25	guitar_3	1	\N
26	guitar_4	1	\N
27	guitar_5	1	\N
28	guitar_6	1	\N
29	guitar_7	1	\N
30	guitar_8	1	\N
31	guitar_9	1	\N
32	guitar_10	1	\N
34	violin_2	2	\N
35	violin_3	2	\N
36	violin_4	2	\N
37	violin_5	2	\N
33	violin_1	2	1
4	trumpet_2	3	1
\.


--
-- Data for Name: rental_instrument_description; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rental_instrument_description (id, name, instrument_type, brand, rental_price, quantity_available_for_rental, quantity_rented, total_quantity) FROM stdin;
1	guitar	string	\N	150.00	10	0	10
3	trumpet	brass	\N	120.00	19	1	20
2	violin	yamaha	string	100.00	4	1	5
\.


--
-- Data for Name: school; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.school (id, organization_id, name, street_address, zip_code, city) FROM stdin;
1	123123	Soundgood	Music Street 1	12345	Music Town
\.


--
-- Data for Name: sibling; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sibling (person_number, student_id, sibling_discount_id) FROM stdin;
\.


--
-- Data for Name: sibling_discount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sibling_discount (id, discount_percentage) FROM stdin;
\.


--
-- Data for Name: skill_level; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.skill_level (id, intrument, level) FROM stdin;
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (id, monthly_fee, age, guardian_id, person_id) FROM stdin;
1	\N	14	1	1
2	\N	13	2	2
3	\N	15	3	3
4	\N	10	3	4
5	\N	8	3	5
\.


--
-- Data for Name: student_skill_level; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_skill_level (student_id, skill_level_id) FROM stdin;
\.


--
-- Name: appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointment_id_seq', 1, false);


--
-- Name: appointment_instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointment_instructor_id_seq', 1, false);


--
-- Name: audition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.audition_id_seq', 1, false);


--
-- Name: audition_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.audition_student_id_seq', 1, false);


--
-- Name: email_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.email_person_id_seq', 1, false);


--
-- Name: ensemble_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ensemble_lesson_id_seq', 1, false);


--
-- Name: ensemble_pricing_salary_scheme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ensemble_pricing_salary_scheme_id_seq', 1, false);


--
-- Name: group_lesson_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.group_lesson_lesson_id_seq', 1, false);


--
-- Name: group_lesson_pricing_salary_scheme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.group_lesson_pricing_salary_scheme_id_seq', 1, false);


--
-- Name: guardian_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.guardian_id_seq', 4, true);


--
-- Name: individual_lesson_application_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individual_lesson_application_appointment_id_seq', 1, false);


--
-- Name: individual_lesson_application_individual_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individual_lesson_application_individual_lesson_id_seq', 1, false);


--
-- Name: individual_lesson_application_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individual_lesson_application_student_id_seq', 1, false);


--
-- Name: individual_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individual_lesson_id_seq', 1, false);


--
-- Name: individual_lesson_pricing_salary_scheme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individual_lesson_pricing_salary_scheme_id_seq', 1, false);


--
-- Name: individual_lesson_school_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individual_lesson_school_id_seq', 1, false);


--
-- Name: instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instructor_id_seq', 1, false);


--
-- Name: instructor_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instructor_person_id_seq', 1, false);


--
-- Name: instrument_instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instrument_instructor_id_seq', 1, false);


--
-- Name: instrument_rental_rental_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instrument_rental_rental_id_seq', 1, false);


--
-- Name: instrument_rental_rental_instrument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instrument_rental_rental_instrument_id_seq', 1, false);


--
-- Name: instrument_rental_school_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instrument_rental_school_id_seq', 1, false);


--
-- Name: instrument_rental_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instrument_rental_student_id_seq', 1, false);


--
-- Name: lesson_application_lesson_slot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lesson_application_lesson_slot_id_seq', 1, false);


--
-- Name: lesson_application_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lesson_application_student_id_seq', 1, false);


--
-- Name: lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lesson_id_seq', 1, false);


--
-- Name: lesson_school_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lesson_school_id_seq', 1, false);


--
-- Name: lesson_slot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lesson_slot_id_seq', 1, false);


--
-- Name: lesson_slot_instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lesson_slot_instructor_id_seq', 1, false);


--
-- Name: lesson_slot_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lesson_slot_lesson_id_seq', 1, false);


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_id_seq', 5, true);


--
-- Name: phone_number_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.phone_number_person_id_seq', 1, false);


--
-- Name: pricing_salary_scheme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pricing_salary_scheme_id_seq', 1, false);


--
-- Name: rental_instrument_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rental_instrument_description_id_seq', 3, true);


--
-- Name: rental_instrument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rental_instrument_id_seq', 37, true);


--
-- Name: rental_instrument_rental_instrument_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rental_instrument_rental_instrument_description_id_seq', 1, false);


--
-- Name: school_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.school_id_seq', 1, true);


--
-- Name: sibling_discount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sibling_discount_id_seq', 1, false);


--
-- Name: sibling_sibling_discount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sibling_sibling_discount_id_seq', 1, false);


--
-- Name: sibling_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sibling_student_id_seq', 1, false);


--
-- Name: skill_level_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.skill_level_id_seq', 1, false);


--
-- Name: student_guardian_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_guardian_id_seq', 1, false);


--
-- Name: student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_id_seq', 5, true);


--
-- Name: student_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_person_id_seq', 1, false);


--
-- Name: student_skill_level_skill_level_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_skill_level_skill_level_id_seq', 1, false);


--
-- Name: student_skill_level_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_skill_level_student_id_seq', 1, false);


--
-- Name: appointment appointment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_pkey PRIMARY KEY (id);


--
-- Name: audition audition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audition
    ADD CONSTRAINT audition_pkey PRIMARY KEY (id);


--
-- Name: email email_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email
    ADD CONSTRAINT email_pkey PRIMARY KEY (email, person_id);


--
-- Name: ensemble ensemble_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble
    ADD CONSTRAINT ensemble_pkey PRIMARY KEY (lesson_id);


--
-- Name: group_lesson group_lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson
    ADD CONSTRAINT group_lesson_pkey PRIMARY KEY (lesson_id);


--
-- Name: guardian guardian_person_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guardian
    ADD CONSTRAINT guardian_person_number_key UNIQUE (person_number);


--
-- Name: guardian guardian_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guardian
    ADD CONSTRAINT guardian_pkey PRIMARY KEY (id);


--
-- Name: individual_lesson_application individual_lesson_application_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson_application
    ADD CONSTRAINT individual_lesson_application_pkey PRIMARY KEY (appointment_id);


--
-- Name: individual_lesson individual_lesson_lesson_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson
    ADD CONSTRAINT individual_lesson_lesson_code_key UNIQUE (lesson_code);


--
-- Name: individual_lesson individual_lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson
    ADD CONSTRAINT individual_lesson_pkey PRIMARY KEY (id);


--
-- Name: instructor instructor_employee_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_employee_number_key UNIQUE (employee_number);


--
-- Name: instructor instructor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_pkey PRIMARY KEY (id);


--
-- Name: instrument instrument_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument
    ADD CONSTRAINT instrument_pkey PRIMARY KEY (instrument, instructor_id);


--
-- Name: instrument_rental instrument_rental_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument_rental
    ADD CONSTRAINT instrument_rental_pkey PRIMARY KEY (rental_id);


--
-- Name: lesson_application lesson_application_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_application
    ADD CONSTRAINT lesson_application_pkey PRIMARY KEY (student_id, lesson_slot_id);


--
-- Name: lesson lesson_lesson_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_lesson_code_key UNIQUE (lesson_code);


--
-- Name: lesson lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_pkey PRIMARY KEY (id);


--
-- Name: lesson_slot lesson_slot_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_slot
    ADD CONSTRAINT lesson_slot_pkey PRIMARY KEY (id);


--
-- Name: person person_person_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_person_number_key UNIQUE (person_number);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- Name: phone_number phone_number_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_number
    ADD CONSTRAINT phone_number_pkey PRIMARY KEY (phone_number, person_id);


--
-- Name: pricing_salary_scheme pricing_salary_scheme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pricing_salary_scheme
    ADD CONSTRAINT pricing_salary_scheme_pkey PRIMARY KEY (id);


--
-- Name: rental_instrument_description rental_instrument_description_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rental_instrument_description
    ADD CONSTRAINT rental_instrument_description_pkey PRIMARY KEY (id);


--
-- Name: rental_instrument rental_instrument_instrument_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rental_instrument
    ADD CONSTRAINT rental_instrument_instrument_id_key UNIQUE (instrument_id);


--
-- Name: rental_instrument rental_instrument_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rental_instrument
    ADD CONSTRAINT rental_instrument_pkey PRIMARY KEY (id);


--
-- Name: school school_organization_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.school
    ADD CONSTRAINT school_organization_id_key UNIQUE (organization_id);


--
-- Name: school school_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.school
    ADD CONSTRAINT school_pkey PRIMARY KEY (id);


--
-- Name: sibling_discount sibling_discount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sibling_discount
    ADD CONSTRAINT sibling_discount_pkey PRIMARY KEY (id);


--
-- Name: sibling sibling_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sibling
    ADD CONSTRAINT sibling_pkey PRIMARY KEY (person_number, student_id);


--
-- Name: skill_level skill_level_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skill_level
    ADD CONSTRAINT skill_level_pkey PRIMARY KEY (id);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- Name: student_skill_level student_skill_level_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_skill_level
    ADD CONSTRAINT student_skill_level_pkey PRIMARY KEY (student_id, skill_level_id);


--
-- Name: appointment appointment_instructor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_instructor_id_fkey FOREIGN KEY (instructor_id) REFERENCES public.instructor(id) ON DELETE CASCADE;


--
-- Name: audition audition_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audition
    ADD CONSTRAINT audition_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE;


--
-- Name: email email_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email
    ADD CONSTRAINT email_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id) ON DELETE CASCADE;


--
-- Name: ensemble ensemble_lesson_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble
    ADD CONSTRAINT ensemble_lesson_id_fkey FOREIGN KEY (lesson_id) REFERENCES public.lesson(id);


--
-- Name: ensemble ensemble_pricing_salary_scheme_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble
    ADD CONSTRAINT ensemble_pricing_salary_scheme_id_fkey FOREIGN KEY (pricing_salary_scheme_id) REFERENCES public.pricing_salary_scheme(id);


--
-- Name: group_lesson group_lesson_lesson_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson
    ADD CONSTRAINT group_lesson_lesson_id_fkey FOREIGN KEY (lesson_id) REFERENCES public.lesson(id);


--
-- Name: group_lesson group_lesson_pricing_salary_scheme_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson
    ADD CONSTRAINT group_lesson_pricing_salary_scheme_id_fkey FOREIGN KEY (pricing_salary_scheme_id) REFERENCES public.pricing_salary_scheme(id);


--
-- Name: individual_lesson_application individual_lesson_application_appointment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson_application
    ADD CONSTRAINT individual_lesson_application_appointment_id_fkey FOREIGN KEY (appointment_id) REFERENCES public.appointment(id) ON DELETE CASCADE;


--
-- Name: individual_lesson_application individual_lesson_application_individual_lesson_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson_application
    ADD CONSTRAINT individual_lesson_application_individual_lesson_id_fkey FOREIGN KEY (individual_lesson_id) REFERENCES public.individual_lesson(id) ON DELETE CASCADE;


--
-- Name: individual_lesson_application individual_lesson_application_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson_application
    ADD CONSTRAINT individual_lesson_application_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE;


--
-- Name: individual_lesson individual_lesson_pricing_salary_scheme_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson
    ADD CONSTRAINT individual_lesson_pricing_salary_scheme_id_fkey FOREIGN KEY (pricing_salary_scheme_id) REFERENCES public.pricing_salary_scheme(id);


--
-- Name: individual_lesson individual_lesson_school_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson
    ADD CONSTRAINT individual_lesson_school_id_fkey FOREIGN KEY (school_id) REFERENCES public.school(id);


--
-- Name: instructor instructor_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id);


--
-- Name: instrument instrument_instructor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument
    ADD CONSTRAINT instrument_instructor_id_fkey FOREIGN KEY (instructor_id) REFERENCES public.instructor(id) ON DELETE CASCADE;


--
-- Name: instrument_rental instrument_rental_rental_instrument_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument_rental
    ADD CONSTRAINT instrument_rental_rental_instrument_id_fkey FOREIGN KEY (rental_instrument_id) REFERENCES public.rental_instrument(id) ON DELETE CASCADE;


--
-- Name: instrument_rental instrument_rental_school_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument_rental
    ADD CONSTRAINT instrument_rental_school_id_fkey FOREIGN KEY (school_id) REFERENCES public.school(id) ON DELETE CASCADE;


--
-- Name: instrument_rental instrument_rental_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument_rental
    ADD CONSTRAINT instrument_rental_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE;


--
-- Name: lesson_application lesson_application_lesson_slot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_application
    ADD CONSTRAINT lesson_application_lesson_slot_id_fkey FOREIGN KEY (lesson_slot_id) REFERENCES public.lesson_slot(id);


--
-- Name: lesson_application lesson_application_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_application
    ADD CONSTRAINT lesson_application_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id);


--
-- Name: lesson lesson_school_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_school_id_fkey FOREIGN KEY (school_id) REFERENCES public.school(id);


--
-- Name: lesson_slot lesson_slot_instructor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_slot
    ADD CONSTRAINT lesson_slot_instructor_id_fkey FOREIGN KEY (instructor_id) REFERENCES public.instructor(id);


--
-- Name: lesson_slot lesson_slot_lesson_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_slot
    ADD CONSTRAINT lesson_slot_lesson_id_fkey FOREIGN KEY (lesson_id) REFERENCES public.lesson(id);


--
-- Name: phone_number phone_number_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_number
    ADD CONSTRAINT phone_number_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id) ON DELETE CASCADE;


--
-- Name: rental_instrument rental_instrument_rental_instrument_description_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rental_instrument
    ADD CONSTRAINT rental_instrument_rental_instrument_description_id_fkey FOREIGN KEY (rental_instrument_description_id) REFERENCES public.rental_instrument_description(id);


--
-- Name: sibling sibling_sibling_discount_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sibling
    ADD CONSTRAINT sibling_sibling_discount_id_fkey FOREIGN KEY (sibling_discount_id) REFERENCES public.sibling_discount(id) ON DELETE CASCADE;


--
-- Name: sibling sibling_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sibling
    ADD CONSTRAINT sibling_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE;


--
-- Name: student student_guardian_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_guardian_id_fkey FOREIGN KEY (guardian_id) REFERENCES public.guardian(id);


--
-- Name: student student_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id);


--
-- Name: student_skill_level student_skill_level_skill_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_skill_level
    ADD CONSTRAINT student_skill_level_skill_level_id_fkey FOREIGN KEY (skill_level_id) REFERENCES public.student(id) ON DELETE CASCADE;


--
-- Name: student_skill_level student_skill_level_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_skill_level
    ADD CONSTRAINT student_skill_level_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

