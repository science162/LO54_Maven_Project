DROP DATABASE IF EXISTS GESTION_FORMATION;

CREATE DATABASE IF NOT EXISTS GESTION_FORMATION;
USE GESTION_FORMATION;

# -----------------------------------------------------------------------------
#       TABLE : CLIENT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CLIENT
 (
   ID_CLT INTEGER NOT NULL AUTO_INCREMENT  
   ,LASTNAME VARCHAR(32) NOT NULL  
   ,FIRSTNAME VARCHAR(32) NOT NULL  
   ,ADDRESS VARCHAR(32) NOT NULL  
   ,PHONE VARCHAR(32) NOT NULL  
   ,EMAIL CHAR(32) NOT NULL  
   ,PASSWORD VARCHAR(10) NOT NULL  
   ,CLIENT_TYPE ENUM('ENSEIGNANT','ETUDIANT','ADMIN') NOT NULL  
   ,PRIMARY KEY (ID_CLT) 
 ) 
 comment = "Table d'enregistrement des clients et utilisateurs";

# -----------------------------------------------------------------------------
#       TABLE : COURSE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS COURSE
 (
   ID_COURSE INTEGER NOT NULL AUTO_INCREMENT  
   ,TITLE VARCHAR(32) NOT NULL  
   ,PRIMARY KEY (ID_COURSE) 
 ) 
 comment = "Table d'enregistrement des cours disponibles";

# -----------------------------------------------------------------------------
#       TABLE : LOCATION
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS LOCATION
 (
   ID_LOCATION INTEGER NOT NULL AUTO_INCREMENT
   ,STREET VARCHAR(32) NOT NULL
   ,POSTAL_CODE VARCHAR(5) NOT NULL
   ,CITY VARCHAR(32) NOT NULL
   ,COUNTRY VARCHAR(32) NOT NULL
   ,PRIMARY KEY (ID_LOCATION) 
 ) 
 comment = "Table d'enregistrement des lieux de deroulement des sessions de formation";

# -----------------------------------------------------------------------------
#       TABLE : COURSE_SESSION
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS SESSION
 (
   ID_COURSE INTEGER NOT NULL 
   ,ID_SESSION INTEGER NOT NULL   
   ,ID_LOCATION INTEGER NOT NULL  
   ,START_DATE DATE NOT NULL  
   ,END_DATE DATE NOT NULL  
   ,NBRE_PLACE INTEGER NOT NULL  
   ,PRIMARY KEY (ID_COURSE,ID_SESSION) 
 ) 
 comment = "Table d'enregistrement des sessions de formation";


# -----------------------------------------------------------------------------
#       TABLE : INCRIRE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS INSCRIRE
 (
   ID_CLT INTEGER NOT NULL  
   ,ID_COURSE INTEGER NOT NULL  
   ,ID_SESSION INTEGER NOT NULL  
   ,DATE_INSCRIPTION DATETIME NOT NULL  
   ,PRIMARY KEY (ID_CLT,ID_COURSE,ID_SESSION) 
 ) 
 comment = "Table des inscriptions";


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE SESSION 
  ADD FOREIGN KEY FK_SESSION_LOCATION (ID_LOCATION)
      REFERENCES LOCATION (ID_LOCATION) ;


ALTER TABLE SESSION 
  ADD FOREIGN KEY FK_SESSION_COURSE (ID_COURSE)
      REFERENCES COURSE (ID_COURSE) ;


ALTER TABLE INSCRIRE 
  ADD FOREIGN KEY FK_INSCRIRE_CLIENT (ID_CLT)
      REFERENCES CLIENT (ID_CLT) ;


ALTER TABLE INSCRIRE 
  ADD FOREIGN KEY FK_INSCRIRE_SESSION (ID_COURSE,ID_SESSION)
      REFERENCES SESSION (ID_COURSE,ID_SESSION) ;

