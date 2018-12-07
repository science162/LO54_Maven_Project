/*insertion dans la table Course */

INSERT INTO course (TITLE) Values ('Administrations des Bases de données');
INSERT INTO course (TITLE) Values ('Java Entreprise Applications Architectures');
INSERT INTO course (TITLE) Values ('Business Intelligence and Data Warehouse');

/*insertion dans la table Client */

INSERT INTO client (LASTNAME,FIRSTNAME,ADDRESS,PHONE,EMAIL,PASSWORD,CLIENT_TYPE)
	Values ('Sonia', 'MEIMOU','2 rue Enerst Duvillard','0716386578','meimousonia@yahoo.fr','Sonita01','ETUDIANT');

INSERT INTO client (LASTNAME,FIRSTNAME,ADDRESS,PHONE,EMAIL,PASSWORD,CLIENT_TYPE)
	Values ('Albert', 'MOUAFFO','22 rue Adolphe tiers','0568385687','mouaffoalbert@yahoo.fr','Albert02','ADMIN');

INSERT INTO client (LASTNAME,FIRSTNAME,ADDRESS,PHONE,EMAIL,PASSWORD,CLIENT_TYPE)
	Values ('Edwige', 'SAHA','25 rue de Lourcq','0768387811','edwigesaha@yahoo.fr','Edwige03','ETUDIANT');
	
INSERT INTO client (LASTNAME,FIRSTNAME,ADDRESS,PHONE,EMAIL,PASSWORD,CLIENT_TYPE)
	Values ('Demgne', 'Paola','26 rue Thiers','0668350811','paolak@yahoo.fr','paola.kamdem','ETUDIANT');
	
	
	/*insertion dans la table Location */
	
INSERT INTO location (STREET, POSTAL_CODE, CITY,COUNTRY) 
	Values ('2 rue du général Strolz', '90000', 'BELFORT', 'FRANCE');

	
INSERT INTO location (STREET, POSTAL_CODE, CITY,COUNTRY) 
	Values ('23 rue de Lourcq', '75019', 'PARIS', 'FRANCE');

INSERT INTO location (STREET, POSTAL_CODE, CITY,COUNTRY) 
	Values ('59 rue de la Madeleine', '69007', 'LYON', 'FRANCE');
	
INSERT INTO location (STREET, POSTAL_CODE, CITY,COUNTRY) 
	Values ('6 rue Andre Richelieu', '95007', 'MARSEILLE', 'FRANCE');
	

/* insertion dans la table session*/

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE) 
	Values (1, '2018-12-12','2018-12-17',20);

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE) 
	Values (2, '2018-12-26','2018-12-30',15);

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE) 
	Values (3, '2019-01-20','2019-02-20',30);

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE) 
	Values (4, '2019-01-20','2019-02-20',30);
	
	
	/*insertion dans la table inscrire*/
	
	
INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (3,1,CURRENT_DATE);

INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (2,1,CURRENT_DATE);
	
INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (1,1,CURRENT_DATE);

INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (4,1,CURRENT_DATE);
	