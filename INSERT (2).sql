/*insertion dans la table Course */

INSERT INTO course (TITLE,LIBELLE) Values ('Administrations des Bases de données','Apprendre la conception des bases de données, administration des serveurs, de A à Z');
INSERT INTO course (TITLE,LIBELLE) Values ('Conception des Bases de données','Acquérir les compétences sur les méthodes et outils de conception de bases de données et les modèles de données');
INSERT INTO course (TITLE,LIBELLE) Values ('Java Entreprise Applications Architectures','Acquérir les compétences des architectures des applications java:Définir le vocabulaire des architectures SOA');
INSERT INTO course (TITLE,LIBELLE) Values ('Business Intelligence and Data Warehouse','Acquérir les compétences sur le business intelligence process et le management des modèles multi-dimensionel');
INSERT INTO course (TITLE,LIBELLE) Values ('Processus et qualité du logiciel','Acquérir les compétences sur les principes et les procédures dassurance qualité, tout en les intégrant dans le suivi et organisation des projets informatiques');
INSERT INTO course (TITLE,LIBELLE) Values ('Réalisation audiovisuelle','Construire et réaliser un produit audiovisuel à partir des objectifs clairement définis dans un cahier des charge');
INSERT INTO course (TITLE,LIBELLE) Values ('Analyse des données multidimensionelles et datamining','Analyse et exploitation efficaces des données puis Explorer, décrire et interpréter des données dans leur aspect multidimensionnel');



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

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (1, '2018-12-22','2018-12-30',20,1);

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (2, '2019-01-12','2019-02-17',20,1);
	
INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (4, '2019-03-22','2019-04-17',20,1);


INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (2, '2019-01-12','2018-02-17',15,2);
INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (1, '2019-02-26','2019-03-30',15,2);
INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (3, '2019-04-10','2019-05-27',30,2);
	

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (4, '2018-12-22','2018-12-30',30,3);
INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (1, '2019-01-20','2019-02-20',30,3);
INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (2, '2019-03-20','2019-04-20',30,3);
	
INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (4, '2019-01-12','2018-02-17',15,4);
INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (2, '2019-02-26','2019-03-30',15,4);
	
INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (2, '2019-01-20','2019-02-20',30,5);
INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (1, '2019-04-10','2019-06-27',30,5);
	
INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (4, '2019-01-12','2019-02-17',20,6);
INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (2, '2019-03-22','2019-06-17',20,6);
	
INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (4, '2018-12-22','2018-12-30',30,7);
INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (1, '2019-01-20','2019-02-20',30,7);
INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE,ID_COURSE) 
	Values (4, '2019-02-25','2019-04-20',30,7);
	
	
	/*insertion dans la table inscrire*/
	
	
INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (3,1,CURRENT_DATE);

INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (2,1,CURRENT_DATE);
	
INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (1,1,CURRENT_DATE);

INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (4,1,CURRENT_DATE);
	
	
INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (1,2,CURRENT_DATE);

INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (2,2,CURRENT_DATE);
	
INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (4,2,CURRENT_DATE);
	
	
INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (3,3,CURRENT_DATE);

INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (1,3,CURRENT_DATE);
	
INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (2,4,CURRENT_DATE);
INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (1,4,CURRENT_DATE);
	