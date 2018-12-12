/*insertion dans la table Course */

INSERT INTO course (TITLE,LIBELLE) Values ('Administrations des Bases de données','Apprendre la conception et l'/'administration des bases de données facilement');
INSERT INTO course (TITLE,LIBELLE) Values ('Java Enterprise Applications Architectures','Apprendre la conception des applications en langage Java');
INSERT INTO course (TITLE,LIBELLE) Values ('Business Intelligence and Data Warehouse','Apprendre l'/'informatique decisionnelle et ses outils ');
INSERT INTO course (TITLE,LIBELLE) Values ('Algorithmiques avancées','Apprendre a Acquérir les compétences sur les concepts en algorithmique avancée : structures de données, algorithmes de routage, algorithmes géométriques, algorithmes parallèles... ');
INSERT INTO course (TITLE,LIBELLE) Values ('Analyse des données multidimensionnelles et datamining','Apprendre a Analyser et exploiter efficacement des données');
INSERT INTO course (TITLE,LIBELLE) Values ('Génie logiciel','Apprendre a Acquérir les compétences sur les méthodologies, les langages et les environnements de développement de logiciels : cycle de vie et méthodes agiles (SCRUM), approches fonctionnelles, méthodes d'/'analyse et de conception orientées objet, spécifications formelles.');
INSERT INTO course (TITLE,LIBELLE) Values ('Intelligence artificielle : concepts fondamentaux et langages dédiés','Apprendre a Acquérir les compétences sur les principaux concepts et outils logiciels dédiés à l'/'intelligence artificielle dont l'/'objectif est de reproduire des processus élaborés tels la déduction, le raisonnement ou l'/'apprentissage.');
INSERT INTO course (TITLE,LIBELLE) Values ('Statistiques pour l'/'ingénieur','Apprendre a Développer des méthodes d'/'analyse d'/'une information aléatoire et d'/'aide à la décision face aux problèmes à plusieurs variables. ');
INSERT INTO course (TITLE,LIBELLE) Values ('Processus et qualité du logiciel','Apprendre a Acquérir les compétences sur les principes et les procédures d'/'assurance qualité, tout en les intégrant dans le suivi et l'/'organisation des projets informatiques. ');
INSERT INTO course (TITLE,LIBELLE) Values ('Vision et réalité virtuelle','Acquérir les compétences fondamentales pour la conception et la construction de scènes 3D et de mondes virtuels. ');


/*insertion dans la table Client */

INSERT INTO client (LASTNAME,FIRSTNAME,ADDRESS,PHONE,EMAIL,PASSWORD,CLIENT_TYPE)
	Values ('Sonia', 'MEIMOU','2 rue Enerst Duvillard','0716386578','meimousonia@yahoo.fr','Sonita01','ETUDIANT');

INSERT INTO client (LASTNAME,FIRSTNAME,ADDRESS,PHONE,EMAIL,PASSWORD,CLIENT_TYPE)
	Values ('Albert', 'MOUAFFO','22 rue Adolphe tiers','0568385687','mouaffoalbert@yahoo.fr','Albert02','ADMIN');

INSERT INTO client (LASTNAME,FIRSTNAME,ADDRESS,PHONE,EMAIL,PASSWORD,CLIENT_TYPE)
	Values ('Edwige', 'SAHA','25 rue de Lourcq','0768387811','edwigesaha@yahoo.fr','Edwige03','ETUDIANT');
	
INSERT INTO client (LASTNAME,FIRSTNAME,ADDRESS,PHONE,EMAIL,PASSWORD,CLIENT_TYPE)
	Values ('paola', 'Demgne','26 rue Thiers','0668350811','paolak@yahoo.fr','paola.kamdem','ETUDIANT');

INSERT INTO client (LASTNAME,FIRSTNAME,ADDRESS,PHONE,EMAIL,PASSWORD,CLIENT_TYPE)
	Values ('Patrick', 'Tchepga','2 rue Enerst Duvillard','0716386578','patricktchepga@yahoo.fr','Patrick05','ETUDIANT');

INSERT INTO client (LASTNAME,FIRSTNAME,ADDRESS,PHONE,EMAIL,PASSWORD,CLIENT_TYPE)
	Values ('Jesus', 'Christ','3 bis rue Michelet','0725435225','JChrist@yahoo.fr','Jesus06','ETUDIANT');

INSERT INTO client (LASTNAME,FIRSTNAME,ADDRESS,PHONE,EMAIL,PASSWORD,CLIENT_TYPE)
	Values ('Larissa', 'Jacques','22 rue Carnot','0645528552','LJacques@yahoo.fr','Larissa07','ETUDIANT');

INSERT INTO client (LASTNAME,FIRSTNAME,ADDRESS,PHONE,EMAIL,PASSWORD,CLIENT_TYPE)
	Values ('Sabrina', 'Manuella','22 rue Enerst Duvillard','0752425142','Sabrina@yahoo.fr','Sabrina08','ETUDIANT');

INSERT INTO client (LASTNAME,FIRSTNAME,ADDRESS,PHONE,EMAIL,PASSWORD,CLIENT_TYPE)
	Values ('Serge', 'Vincent','8 rue Enerst Duvillard','0745289635','Serge@yahoo.fr','Serge09','ETUDIANT');
	
	
	/*insertion dans la table Location */
	
INSERT INTO location (STREET, POSTAL_CODE, CITY,COUNTRY) 
	Values ('2 rue du général Strolz', '90000', 'BELFORT', 'FRANCE');

	
INSERT INTO location (STREET, POSTAL_CODE, CITY,COUNTRY) 
	Values ('23 rue de Lourcq', '75019', 'PARIS', 'FRANCE');

INSERT INTO location (STREET, POSTAL_CODE, CITY,COUNTRY) 
	Values ('59 rue de la Madeleine', '69007', 'LYON', 'FRANCE');
	
INSERT INTO location (STREET, POSTAL_CODE, CITY,COUNTRY) 
	Values ('6 rue Andre Richelieu', '95007', 'MARSEILLE', 'FRANCE');

INSERT INTO location (STREET, POSTAL_CODE, CITY,COUNTRY) 
	Values ('2 rue Adolphe Thiers', '90000', 'BELFORT', 'FRANCE');

/* insertion dans la table session*/

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE) 
	Values (1, '2018-12-12','2018-12-17',20);

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE) 
	Values (2, '2018-12-26','2018-12-30',15);

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE) 
	Values (3, '2019-01-20','2019-02-20',30);

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE) 
	Values (4, '2019-01-20','2019-02-20',30);

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE) 
	Values (1, '2018-12-20','2019-02-20',60);	

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE) 
	Values (3, '2019-01-20','2019-03-20',40);

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE) 
	Values (4, '2019-04-20','2019-08-20',50);

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE) 
	Values (2, '2019-01-20','2019-02-20',30);

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE) 
	Values (2, '2019-01-20','2019-04-20',25);

INSERT INTO session (ID_LOCATION,START_DATE,END_DATE,NBRE_PLACE) 
	Values (1, '2018-12-20','2019-02-20',60);
	
	/*insertion dans la table inscrire*/
	
	
INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (3,1,CURRENT_DATE);

INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (2,1,CURRENT_DATE);
	
INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (1,1,CURRENT_DATE);

INSERT INTO inscrire (ID_CLT,ID_SESSION,DATE_INSCRIPTION) 
	Values (4,1,CURRENT_DATE);
	