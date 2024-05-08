DROP TABLE IF EXISTS census;

CREATE TABLE census (
    id serial primary key,
    age int,
    workclass text,
    fnlwgt int,
    education text,
    education_num int,
    marital_status text,
    occupation text,
    relationship text,
    race text,
    sex text,
    capital_gain int,
    capital_loss int,
    hours_per_week int,
    native_country text,
    income text
);

COPY census (age, workclass, fnlwgt, education, education_num, marital_status, occupation, relationship, race, sex, capital_gain, capital_loss, hours_per_week, native_country, income) 
FROM 'C:/CS645/Mini-Project/CS645-Mini-Project-SeeDB/census_data/census_data.csv' 
WITH (FORMAT csv, HEADER);
