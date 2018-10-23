USE Meet

CREATE TABLE User(
	id_user int(11) Auto_increment NOT NULL ,
  last_name varchar(50),
  first_name varchar(50) NOT NULL,
  type int NOT NULL,
  gender int,
	age int(3) NOT NULL,
	hide_age boolean,
	password varchar(255) NOT NULL,
	id_campus int NOT NULL,
	biography varchar(255) NOT NULL,
	
	PRIMARY KEY (id_user)
	);
	
CREATE TABLE Campus(
	id_campus int(11) Auto_increment NOT NULL,
	name varchar(50) NOT NULL,
	
	PRIMARY KEY (id_campus)
	);

CREATE TABLE Language(
	id_language int(11) Auto_increment NOT NULL,
	name varchar(50) NOT NULL,
	
	PRIMARY KEY (id_language)
	);
	
CREATE TABLE addLanguage(
	id_user int NOT NULL,
	id_language int NOT NULL,
	teachOrLearn boolean,
	
	PRIMARY KEY (id_user,id_language)
	);
	
CREATE TABLE Hobbies(
	id_hobbies int(11) Auto_increment NOT NULL,
	name varchar(50) NOT NULL,
	
	PRIMARY KEY (id_hobbies)
	);
	
CREATE TABLE addHobies(
	id_user int NOT NULL,
	id_hobbies int NOt NULL,
	
	PRIMARY KEY (id_user,id_hobbies)
	);

CREATE TABLE Tandem(
	id_tandem int(11) Auto_increment NOT NULL,
	id_user1 int NOT NULL,
	id_user2 int NOT NULL,
	conversationName varchar(50),
	delete_conversation_user boolean,
	delete_conversation_user2 boolean,
	
	PRIMARY KEY (id_tandem)
	);
		
CREATE TABLE SendMessage(
	id_message int(11) Auto_increment NOT NULL,
	id_userSend int NOT NULL,
	id_userReceive int NOT NULL,
	id_tandem int NOT NULL,
	dtime TimeStamp NOt NULL,
	viewMessage boolean,
	message varchar(255),
	
	PRIMARY KEY (id_message)
	);

CREATE TABLE matchRequest(
	id_userSend int NOT NULL,
	id_userMatch int NOT NULL,
	requestState boolean,
	
	PRIMARY KEY (id_userMatch,id_userSend)
	);

CREATE TABLE Meeting(
	id_meeting int(11) Auto_increment NOT NULL,
	id_user1 int NOT NULL,
	id_user2 int NOT NULL,
	place varchar(50),
	dtime TimeStamp NOt NULL,
	
	PRIMARY KEY (id_meeting)
	);
	
CREATE TABLE meetingRequest(
	id_userSend int NOT NULL,
	id_userReceive int NOT NULL,
	place varchar(50),
	dtime TimeStamp NOt NULL,
	meetingMessage varchar(255),
	requestState boolean,
	
	PRIMARY KEY (id_userReceive,id_userSend)
	);
	
CREATE TABLE ActivationKey(
	id_activationKey int(11) Auto_increment NOT NULL,
	id_user int NOT NULL,
	keyNumber int NOT NULL,
	
	PRIMARY KEY (id_activationKey)
	);
	

ALTER TABLE ActivationKey ADD CONSTRAINT FK_id_user FOREIGN KEY (id_user) REFERENCES User(id_user);
ALTER TABLE sendMessage ADD CONSTRAINT FK_id_tandem FOREIGN KEY (id_tandem) REFERENCES Tandem(id_tandem);
ALTER TABLE sendMessage ADD CONSTRAINT FK_id_userSend FOREIGN KEY (id_userSend) REFERENCES User(id_user);
ALTER TABLE meetingRequest ADD CONSTRAINT FK_id_userSend2 FOREIGN KEY (id_userSend) REFERENCES User(id_user);
ALTER TABLE addLanguage ADD CONSTRAINT FK_id_user2 FOREIGN KEY (id_user) REFERENCES User(id_user);	
ALTER TABLE addLanguage ADD CONSTRAINT FK_id_language FOREIGN KEY (id_language) REFERENCES Language(id_language);
ALTER TABLE addHobies ADD CONSTRAINT FK_id_user3 FOREIGN KEY (id_user) REFERENCES User(id_user);
ALTER TABLE addHobies ADD CONSTRAINT FK_id_hobbies FOREIGN KEY (id_hobbies) REFERENCES Hobbies(id_hobbies);
ALTER TABLE matchRequest ADD CONSTRAINT FK_id_userSend3 FOREIGN KEY (id_userSend) REFERENCES User(id_user);


	
	