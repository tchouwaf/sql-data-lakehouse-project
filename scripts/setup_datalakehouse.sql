/*
------------------------------------------------------------------------------------
Script: setup_datalakehouse.sql
Purpose:

This script creates the logical architecture of the Data Lakehouse in PostgreSQL.

It performs the following operations:

1. Deletes the "datalakehouse" database if it already exists.

2. Creates a new, clean database, "datalakehouse".

3. Creates the three schemas corresponding to the Medallion model:

- Bronze: Raw data

- Silver: Cleaned/enriched data

- Gold: Data ready for analysis or BI

Usage:

- Run the first part in the "postgres" database.

- Then connect to the "datalakehouse" database.

- Run the schema creation.

------------------------------------------------------------------------------------
*/

DROP DATABASE IF EXISTS datalakehouse;

CREATE DATABASE datalakehouse;

CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;
