#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USERNAME" <<-EOSQL
create database $POSTGRES_DB;
\c $POSTGRES_DB;
create extension cube;
create extension postgis;
EOSQL
