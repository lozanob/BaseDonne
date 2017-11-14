create database JobRecrut ; 
use JobRecrut ;


create table user(
	id_user int primary key  auto_increment, 
	email_user varchar(250)  NOT NULL , 
	passwd_user varchar(250)  NOT NULL 
); 



create table eleve(
id_elev int primary key auto_increment, 
nom_eleve varchar(250) , 
prenom_elev varchar(250), 
competence_elev varchar(250)); 


create table admin(
	id_adm int primary key auto_increment, 
	nom_adm varchar(250), 
	prenom varchar(250)); 




create table entreprise(
	id_entrep int primary key auto_increment, 
	nom_entreprise varchar(250), 
	adresse_entreprise varchar(250), 
	competence_entrep varchar(250)); 



create table rendezVous(
	id_rendezV int primary key auto_increment,
	date_rendezV date, 
	id_elev int, 
	id_entrep int,  
	foreign key(id_elev) references eleve(id_elev), 
	foreign key(id_entrep) references entreprise(id_entrep)); 







