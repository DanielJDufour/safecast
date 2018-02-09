CREATE EXTENSION safecast;

SELECT to_integer('1sasdf');
SELECT to_integer('123123');

SELECT to_float('0.123asfd');
SELECT to_float('0.123');

SELECT to_bigint('a12345678x9123456789z');
SELECT to_bigint('123456789123456789');

SELECT to_double_precision('0.123asfd');
SELECT to_double_precision('0.123');
SELECT to_double_precision('12.123');
