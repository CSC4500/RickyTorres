-- create the database
DROP DATABASE IF EXISTS marvel;
CREATE DATABASE marvel;

-- select the database
USE marvel;

-- create tables 
CREATE TABLE power
(
flight		CHAR(25)	NOT NULL,
mutant		CHAR(25)	NOT NULL,
organic		CHAR(25)	NOT NULL,
combat		CHAR(25)	NOT NULL,
strength	CHAR(25)	NOT NULL,
speed		CHAR(25)	NOT NULL,
magic		CHAR(25)	NOT NULL,
powertype	CHAR(25)	NOT NULL,
CONSTRAINT power_pk
	PRIMARY KEY (powertype)
);

CREATE TABLE abilities
(
ability_ID	CHAR(25)	NOT NULL,
power_origin	VARCHAR(50) 	NOT NULL,
CONSTRAINT abilities_pk
	PRIMARY KEY (ability_ID)
);

CREATE TABLE origin
(
origin_ID	VARCHAR(50)	NOT NULL,
home_location	VARCHAR(50)	NOT NULL,
power_origin	VARCHAR(50)	NOT NULL,
CONSTRAINT origin_pk
	PRIMARY KEY (origin_ID)
);

CREATE TABLE superhero
(
superheroID	INT	NOT NULL,
powertype	CHAR(6)	NOT NULL,
superheronem_ID	INT	NOT NULL,
origin_ID	CHAR(25)  NOT NULL,
supename	CHAR(25)   NOT NULL,
supeage		INT  NOT NULL,
home_location	INT    NOT NULL,
hq_ID		VARCHAR(220)  NOT NULL,
Abilitiy_ID	CHAR(25)  NOT NULL,
CONSTRAINT superhero_pk
	PRIMARY KEY (superheroID),
CONSTRAINT superhero_fk_power
	FOREIGN KEY (powertype) REFERENCES power (powertype),
CONSTRAINT superhero_fk_nemesis
	FOREIGN KEY (superheronem_ID) REFERENCES nemesis (superheronem_ID)
);

CREATE TABLE nemesis
(
nemesis_ID	INT	NOT NULL,
superheronem_ID	CHAR(25)	NOT NULL,
supervilliannem_ID	CHAR(25)  NOT NULL,
origin_ID	VARCHAR(25)	NOT NULL,
nem_age		INT	NOT NULL,
powertype	CHAR(25)	NOT NULL,
CONSTRAINT nemesis_pk
	PRIMARY KEY (nemesis_ID),
CONSTRAINT nemesis_fk_power
	FOREIGN KEY (powertype) REFERENCES power (powertype),
CONSTRAINT nemesis_fk_origin
	FOREIGN KEY (origin_ID) REFERENCES origin (origin_ID)
);

insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Iron Man', 'Magnito', 'Spider-Man', 'Hawkeye', 'Hulk', 'Quicksilver', 'Dr.Strange', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Jessica Jones', 'Professor X', 'Venom', 'Black Widow', 'Abombanation', 'Electro', 'Wong', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Odinson', 'Wolverine', 'Carnage', 'Captian America', 'Juggernanut', 'Greer Nelson', 'Ancient One', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Ultron', 'Cyclops', 'Black Panther', 'Taskmaster', 'Thanos', 'Julie Power', 'Wanda', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Vision', 'Jean Grey', 'Iron Fist', 'Shang-Chi', 'Galactus', 'Whizzer', 'Brother Voodoo', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Storm', 'Beast', 'Thor', 'Bucky', 'Beyonder', 'Speedfreek', 'Agatha Harkness', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('The Wasp', 'Colossus', 'Gwen Stacy', 'Gamora', 'Tribunal', 'Speed Demon', 'Magik', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Captian Marvel', 'Raven', 'Tarantula', 'Bullseye', 'Silver Surfer', 'Speed', 'Baron Mordo', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Namor', 'Sunspot', 'Spider-Boy', 'Punisher', 'Reed Richards', 'Hurricane', 'Doctor Druid', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Loki', 'Deadpool', 'Spider-Girl', 'Elektra', 'Dormammu', 'Yo-Yo', 'Wiccan', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Human Torch', 'Nightcrawler', 'Arachnophilia', 'Luke Cage', 'Doom', 'Black Racer', 'Shuma-Gorath', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Adam Warlock', 'Apocalypse', 'AMP/Spiderling', 'Valkyrie', 'Hela', 'Speed', 'Agamotto', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Nova', 'Havok', 'Scarlet Spider', 'Okoye', 'Sentry', 'Cyclops', 'Felicia Hardy', 'Enchantress', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Star Lord', 'Psylocke', 'Mayhem', 'Crossbones', 'Grandmaster', 'Sam Wilson', 'Zatanna', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Polaris', 'Gambit', 'Spider-Woman', 'Kraven', 'Skaar', 'Scorpio', 'Ghost Rider', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Angel', 'Sabretooth', 'Agent Venom', 'Yu-Ti', 'Drax', 'Black Tiger', 'Frigga', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Sentry', 'Magma', 'Miles Morales', 'Karnak', 'Uatu', 'Blue Kelso', 'Hoggoth', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('War Machine', 'Legion', 'Scarlet Spider', 'Lei Kung', 'Vulcan', 'Callisto', 'Shaman', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Mephisto', 'X-23', 'Silk', 'Doc-Oc', 'Eternity', 'Chod', 'Kaecilicus', 'Ability type');
insert into power (flight, mutant, organic, combat, strength, speed, magic, powertype) values ('Spectrum', 'Cypher', 'Arana', 'Dare Devil', 'Susan Storm', 'Curtis Conners', 'Chthon', 'Ability type');


insert into abilities (ability_ID, power_origin) values ('speed', 'born with it');
insert into abilities (ability_ID, power_origin) values ('flight', 'born with it');
insert into abilities (ability_ID, power_origin) values ('mutant', 'x-gene');
insert into abilities (ability_ID, power_origin) values ('organic', 'came from a unatural spider');
insert into abilities (ability_ID, power_origin) values ('speed', 'born with it');
insert into abilities (ability_ID, power_origin) values ('strength', 'serrum');
insert into abilities (ability_ID, power_origin) values ('combat', 'skill');
insert into abilities (ability_ID, power_origin) values ('magic', 'practice of mistical arts');
insert into abilities (ability_ID, power_origin) values ('speed', 'born with it');
insert into abilities (ability_ID, power_origin) values ('flight', 'born with it');
insert into abilities (ability_ID, power_origin) values ('mutant', 'created');
insert into abilities (ability_ID, power_origin) values ('organic', 'gamma explosion');
insert into abilities (ability_ID, power_origin) values ('strength', 'came with ability');
insert into abilities (ability_ID, power_origin) values ('magic', 'born with it');
insert into abilities (ability_ID, power_origin) values ('flight', 'in dna');
insert into abilities (ability_ID, power_origin) values ('combat', 'training');
insert into abilities (ability_ID, power_origin) values ('mutant', 'family dna');
insert into abilities (ability_ID, power_origin) values ('organic', 'born with it');
insert into abilities (ability_ID, power_origin) values ('magic', 'witch');
insert into abilities (ability_ID, power_origin) values ('speed', 'mutant gene');


insert into origin (origin_ID, home_location, power_origin) values ('New York City', 'Malibu', null);
insert into origin (origin_ID, home_location, power_origin) values ('New York City', 'Booklyn', null);
insert into origin (origin_ID, home_location, power_origin) values ('Soviet Union', 'New York', null);
insert into origin (origin_ID, home_location, power_origin) values ('Iowa', 'Missouri', null);
insert into origin (origin_ID, home_location, power_origin) values ('New York City', 'Midtown Manhattan', null);
insert into origin (origin_ID, home_location, power_origin) values ('New York City', 'Dayton Ohio', null);
insert into origin (origin_ID, home_location, power_origin) values ('New York City', 'San Francisco', null);
insert into origin (origin_ID, home_location, power_origin) values ('Asgard', 'New Asgard', null);
insert into origin (origin_ID, home_location, power_origin) values ('Alabama', 'New York', null);
insert into origin (origin_ID, home_location, power_origin) values ('Ten Rings HQ', 'Ten Rings HQ', null);
insert into origin (origin_ID, home_location, power_origin) values ('Philadelphia', 'Sanctum Sanctorum', null);
insert into origin (origin_ID, home_location, power_origin) values ('Boston Massachusetts', 'Boston Massachusetts', null);
insert into origin (origin_ID, home_location, power_origin) values ('Queens NY', 'Queens NY', null);
insert into origin (origin_ID, home_location, power_origin) values ('Sokovia', 'New York', null);
insert into origin (origin_ID, home_location, power_origin) values ('Canada', 'Canada', null);
insert into origin (origin_ID, home_location, power_origin) values ('Canada', 'The Bronx', null);
insert into origin (origin_ID, home_location, power_origin) values ('Wakanda', 'Wakanda', null);
insert into origin (origin_ID, home_location, power_origin) values ('Missouri', 'Space', null);
insert into origin (origin_ID, home_location, power_origin) values ('New Jersey', 'San Francisco', null);
insert into origin (origin_ID, home_location, power_origin) values ('Indiana', 'New York City', null);


insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (1, 'flight/combat', 'Whiplash', 'New York City', 'Iron Man', '48', 'Malibu', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (2, 'combat', 'Red Skull', 'New York City', 'Captian America', '105', 'Booklyn', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (3, 'combat', 'Taskmaster', 'Soviet Union', 'Black Widow', '32', 'New York', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (4, 'combat', 'Bullseye', 'Iowa', 'Hawkeye', '47', 'Missouri', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (5, 'flight/strength', 'Ultron', 'New York City', 'Vision', '3', 'Midtown Manhattan', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (6, 'strength', 'Abomination', 'New York City', 'Hulk', '49', 'Dayton Ohio', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (7, 'combat', 'Yellow Jacket', 'New York City', 'Ant Man', '49', 'San Francisco', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (8, 'strength', 'Hela', 'Asgard', 'Thor', '48', 'New Asgard', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (9, 'combat', 'Baron Strucker', 'Alabama', 'Nick Fury', '80', 'New York', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (10, 'combat', 'Fu Manchu', 'Ten Rings HQ', 'Shang Chi', '25', 'Ten Rings HQ', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (11, 'magic', 'Dormammu', 'Philadelphia', 'Dr Strange', '43', 'Sanctum Sanctorum', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (12, 'flight/combat', 'Yon-Rogg', 'Boston Massachusetts', 'Captian Marvel', '51', 'Boston Massachusetts', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (13, 'flight/combat', 'Doc Oc', 'Queens NY', 'Spider Man', '28', 'Queens NY', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (14, 'magic', 'Agatha', 'Sokovia', 'Wanda Maximoff', '34', 'New York', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (15, 'strength', 'Sabretooth', 'Canada', 'Wolverine', '189', 'Canada', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (16, 'combat', 'Cable', 'Canada', 'Deadpool', '25', 'The Bronx', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (17, 'flight/combat', 'Claw', 'Wakanda', 'Black Panther', '26', 'Malibu', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (18, 'flight/combat', 'Ronan the Accuser', 'Missouri', 'Star Lord', '38', 'Space', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (19, 'flight/combat', 'Yellow Jacket', 'New Jersey', 'Wasp', '26', 'San Francisco', 'New York City', null);
insert into superhero (superheroID, powertype, superheronem_ID, origin_ID, supename, supeage, home_location, hq_ID, Abilitiy_ID) values (20, 'combat', 'Red Skull', 'Indiana', 'Bucky Barnes', '106', 'New York City', 'New York City', null);


insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (1, 'Whiplash', 'Iron Man', 'Russia', '58', 'combat');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (2, 'Red Skull', 'Captian America', 'Germany', '113', 'combat');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (3, 'Taskmaster', 'Black Widow', 'New York City', 'null', 'combat');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (4, 'Bullseye', 'Hawkeye', 'New York City', 'null', 'combat');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (5, 'Ultron', 'Vision', 'New York City', 'null', 'flight');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (6, 'Abomination', 'Hulk', 'Zagreb', '53', 'strength');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (7, 'Yellow Jacket', 'Ant Man', 'null', '53', 'combat');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (8, 'Hela', 'Thor', 'Jotunheim', 'null', 'magic/strength');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (9, 'Baron Strucker', 'Nick Fury', 'Russia', 'null', 'combat');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (10, 'Fu Manchu', 'Shang Chi', 'null', '70', 'combat');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (11, 'Dormammu', 'Dr Strange', 'Beyond Time', 'null', 'magic');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (12, 'Yon-Rogg', 'Captian Marvel', 'Hala', 'null', 'combat');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (13, 'Doc Oc', 'Spider Man', 'null', 'null', 'combat');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (14, 'Agatha', 'Wanda Maximoff', 'Salem', '12500', 'magic');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (15, 'Sabretooth', 'Wolverine', 'Canada', '170', 'strength');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (16, 'Cable', 'Deadpool', 'Russia', '54', 'combat');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (17, 'Claw', 'Black Panther', 'Netherlands', '53', 'combat');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (18, 'Ronan the Accuser', 'Star Lord', 'Hala', 'null', 'combat');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (19, 'Yellow Jacket', 'Wasp', 'Null', '53', 'combat');
insert into nemesis (nemesis_ID, superheronem_ID, supervilliannem_ID, origin_ID, nem_age, powertype) values (20, 'Red Skull', 'Bucky Barnes', 'Germany', '113', 'combat');



