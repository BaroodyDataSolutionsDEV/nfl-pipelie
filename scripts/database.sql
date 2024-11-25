--create database warehouse;


create extension aws_s3 cascade;


drop schema if exists raw cascade;
create schema raw;
drop schema if exists warehouse cascade;
create schema warehouse;
drop schema if exists marts cascade;
create schema marts;


