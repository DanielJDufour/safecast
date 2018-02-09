-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION base36" to load this file. \quit

CREATE OR REPLACE FUNCTION to_integer(arg text)
RETURNS int AS $$
    SELECT CASE WHEN arg~E'^\\d+$' THEN arg::integer ELSE NULL END;
$$ LANGUAGE sql;

CREATE OR REPLACE FUNCTION to_float(arg text)
RETURNS float AS $$
    SELECT CASE WHEN arg~E'^[-\\d.]+$' THEN arg::float ELSE NULL END;
$$ LANGUAGE sql;

CREATE OR REPLACE FUNCTION to_bigint(arg text)
RETURNS bigint AS $$
    SELECT CASE WHEN arg~E'^\\d+$' THEN arg::bigint ELSE NULL END;
$$ LANGUAGE sql;
