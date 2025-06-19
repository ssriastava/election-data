CREATE DATABASE election --DATABASE CREATED

--CREATING TABLES

CREATE TABLE state (  --Table state created
    State_id VARCHAR(50), 
    State_name VARCHAR(100)
);

--Creating Table city
CREATE TABLE city (
    city_name VARCHAR(100),
    city_id VARCHAR(50) AUTO_INCREMENT PRIMARY KEY
    state_id VARCHAR(100);
);

--Creating Table Party
CREATE TABLE party (
    party_name VARCHAR(100),
    party_id VARCHAR(50) AUTO_INCREMENT PRIMARY KEY
);

--Creating Table Members
CREATE TABLE members (
    member_id VARCHAR(50) AUTO_INCREMENT PRIMARY KEY,
    member_name VARCHAR(100)
);

--Creating Table Election
CREATE TABLE election (
    E_id VARCHAR(50) AUTO_INCREMENT PRIMARY KEY,
    E_Year YEAR,
    E_type VARCHAR(50)
);

--Adding foreign key in the tables

 ALTER TABLE city
 ADD CONSTRAINT CAS
 FOREIGN KEY(state_id) REFERENCES state(state_id); --Foreign Key(state_id) added in table city

--Creating Table Election_data
CREATE TABLE election_data (
    ED_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    E_id INT,
    E_Year YEAR,
    party_id VARCHAR(50),
    members_id VARCHAR(50),
    city_id INT

);

--Adding foreign key in election_data

--Foreign key of election(E_id)
ALTER TABLE election_data
ADD CONSTRAINT fkE_id FOREIGN KEY(E_id) REFERENCES election(E_id);
 
 --Foreign key of part(party_id)
ALTER TABLE election_data
ADD CONSTRAINT fkP_id FOREIGN KEY(party_id) REFERENCES party(party_id);

--Foreign key of member(member_id)
ALTER TABLE election_data
ADD CONSTRAINT fkM_id FOREIGN KEY(member_id) REFERENCES member(member_id);

--Foreign key of city(city_id)
ALTER TABLE election_data
ADD CONSTRAINT fkC_id FOREIGN KEY(city_id) REFERENCES city(city_id);
