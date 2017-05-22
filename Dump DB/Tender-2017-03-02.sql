-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2017 at 10:40 AM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Trender`
--

-- --------------------------------------------------------

--
-- Table structure for table `Actors`
--

CREATE TABLE IF NOT EXISTS `Actors` (
  `actor` varchar(50) NOT NULL,
  `note` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`actor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Actors`
--

INSERT INTO `Actors` (`actor`, `note`) VALUES
('Admin', ''),
('Alexa', ''),
('Ospite', ''),
('Slack', ''),
('SuperAdmin', ''),
('Utente', '');

-- --------------------------------------------------------

--
-- Table structure for table `ActorsInheritance`
--

CREATE TABLE IF NOT EXISTS `ActorsInheritance` (
  `base` varchar(50) NOT NULL,
  `derivative` varchar(50) NOT NULL,
  PRIMARY KEY (`base`,`derivative`),
  KEY `derivative` (`derivative`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ActorsInheritance`
--

INSERT INTO `ActorsInheritance` (`base`, `derivative`) VALUES
('Admin', 'SuperAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `ActorUsecases`
--

CREATE TABLE IF NOT EXISTS `ActorUsecases` (
  `actor` varchar(50) NOT NULL,
  `usecase` varchar(100) NOT NULL,
  PRIMARY KEY (`actor`,`usecase`),
  KEY `usecase` (`usecase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ActorUsecases`
--

INSERT INTO `ActorUsecases` (`actor`, `usecase`) VALUES
('Utente', 'UC1'),
('Ospite', 'UC10'),
('Ospite', 'UC11'),
('Utente', 'UC11'),
('Ospite', 'UC2'),
('Utente', 'UC2'),
('Ospite', 'UC2.1'),
('Utente', 'UC2.1'),
('Ospite', 'UC2.2'),
('Utente', 'UC2.2'),
('Alexa', 'UC3'),
('Utente', 'UC3'),
('Alexa', 'UC3.1'),
('Utente', 'UC3.1'),
('Utente', 'UC4'),
('Utente', 'UC4.1'),
('Utente', 'UC4.2'),
('Utente', 'UC4.3'),
('Utente', 'UC4.3.1'),
('Utente', 'UC4.4'),
('Alexa', 'UC5'),
('Ospite', 'UC5'),
('Slack', 'UC5'),
('Alexa', 'UC5.1'),
('Ospite', 'UC5.1'),
('Slack', 'UC5.1'),
('Alexa', 'UC5.2'),
('Ospite', 'UC5.2'),
('Slack', 'UC5.2'),
('Alexa', 'UC5.3'),
('Ospite', 'UC5.3'),
('Slack', 'UC5.3'),
('Alexa', 'UC5.4'),
('Ospite', 'UC5.4'),
('Slack', 'UC5.4'),
('Alexa', 'UC5.5'),
('Ospite', 'UC5.5'),
('Slack', 'UC5.5'),
('Alexa', 'UC5.5.1'),
('Ospite', 'UC5.5.1'),
('Slack', 'UC5.5.1'),
('Alexa', 'UC5.5.2'),
('Ospite', 'UC5.5.2'),
('Slack', 'UC5.5.2'),
('Alexa', 'UC5.5.3'),
('Ospite', 'UC5.5.3'),
('Slack', 'UC5.5.3'),
('Ospite', 'UC5.6'),
('Slack', 'UC5.6'),
('Admin', 'UC6'),
('SuperAdmin', 'UC6'),
('Admin', 'UC7'),
('Slack', 'UC7'),
('SuperAdmin', 'UC7'),
('Admin', 'UC7.1'),
('Slack', 'UC7.1'),
('SuperAdmin', 'UC7.1'),
('Admin', 'UC7.1.1'),
('SuperAdmin', 'UC7.1.1'),
('Admin', 'UC7.1.2'),
('Slack', 'UC7.1.2'),
('SuperAdmin', 'UC7.1.2'),
('Admin', 'UC7.1.3'),
('SuperAdmin', 'UC7.1.3'),
('Admin', 'UC7.2'),
('SuperAdmin', 'UC7.2'),
('Admin', 'UC7.2.1'),
('SuperAdmin', 'UC7.2.1'),
('Admin', 'UC7.2.2'),
('SuperAdmin', 'UC7.2.2'),
('Admin', 'UC7.2.3'),
('SuperAdmin', 'UC7.2.3'),
('Admin', 'UC7.2.4'),
('SuperAdmin', 'UC7.2.4'),
('Admin', 'UC7.2.4.1'),
('SuperAdmin', 'UC7.2.4.1'),
('Admin', 'UC7.2.4.2'),
('SuperAdmin', 'UC7.2.4.2'),
('Admin', 'UC7.2.4.3'),
('SuperAdmin', 'UC7.2.4.3'),
('Admin', 'UC7.2.4.4'),
('SuperAdmin', 'UC7.2.4.4'),
('Admin', 'UC7.2.4.5'),
('SuperAdmin', 'UC7.2.4.5'),
('Admin', 'UC7.2.4.6'),
('SuperAdmin', 'UC7.2.4.6'),
('Admin', 'UC7.2.5'),
('SuperAdmin', 'UC7.2.5'),
('Admin', 'UC7.2.6'),
('SuperAdmin', 'UC7.2.6'),
('Admin', 'UC7.3'),
('Slack', 'UC7.3'),
('SuperAdmin', 'UC7.3'),
('Admin', 'UC7.3.1'),
('SuperAdmin', 'UC7.3.1'),
('Admin', 'UC7.3.1.1'),
('SuperAdmin', 'UC7.3.1.1'),
('Admin', 'UC7.3.1.2'),
('SuperAdmin', 'UC7.3.1.2'),
('Admin', 'UC7.3.2'),
('Slack', 'UC7.3.2'),
('SuperAdmin', 'UC7.3.2'),
('Admin', 'UC7.4'),
('SuperAdmin', 'UC7.4'),
('Admin', 'UC7.4.1'),
('SuperAdmin', 'UC7.4.1'),
('Admin', 'UC7.4.2'),
('SuperAdmin', 'UC7.4.2'),
('SuperAdmin', 'UC8'),
('SuperAdmin', 'UC8.1'),
('SuperAdmin', 'UC8.1.1'),
('SuperAdmin', 'UC8.1.2'),
('SuperAdmin', 'UC8.1.2.1'),
('SuperAdmin', 'UC8.1.2.2'),
('SuperAdmin', 'UC8.1.3'),
('Admin', 'UC9'),
('Ospite', 'UC9'),
('SuperAdmin', 'UC9');

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE IF NOT EXISTS `Admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ClassAttributes`
--

CREATE TABLE IF NOT EXISTS `ClassAttributes` (
  `class` varchar(100) NOT NULL,
  `attribute` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `package` varchar(100) NOT NULL,
  PRIMARY KEY (`class`,`package`,`attribute`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Classes`
--

CREATE TABLE IF NOT EXISTS `Classes` (
  `class` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `applications` longtext NOT NULL,
  `package` varchar(100) NOT NULL,
  PRIMARY KEY (`class`,`package`),
  KEY `package` (`package`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Classes`
--

INSERT INTO `Classes` (`class`, `description`, `applications`, `package`) VALUES
('Action', 'Action', 'Action', 'TipiParametri (NON ELIMINARE)'),
('Action[]', 'Action[]', 'Action[]', 'TipiParametri (NON ELIMINARE)'),
('Admin', 'Admin', 'Admin', 'TipiParametri (NON ELIMINARE)'),
('AdminService', 'Classe che fornisce dei servizi specifici per gli admin ed i superadmin', 'Classe utilizzata quando viene chiamato un servizio disponibile per admin e superadmin', 'Service'),
('AdminTrame', 'AdminTrame', 'AdminTrame', 'TipiParametri (NON ELIMINARE)'),
('Admin[]', 'Admin[]', 'Admin[]', 'TipiParametri (NON ELIMINARE)'),
('boolean', 'boolean', 'boolean', 'TipiParametri (NON ELIMINARE)'),
('Connection', 'classe per gestire la connessione al database', 'connessione database', 'DatabaseInteraction'),
('Conversation', 'Conversation', 'Conversation', 'TipiParametri (NON ELIMINARE)'),
('Conversation[]', 'Conversation[]', 'Conversation[]', 'TipiParametri (NON ELIMINARE)'),
('Firm', 'Firm', 'Firm', 'TipiParametri (NON ELIMINARE)'),
('FirmService', 'Classe che implementa i servizi dedicati alla gestione del Firm di un azienda', 'Gestione del Firm di un azienda', 'Service'),
('Firm[]', 'Firm[]', 'Firm[]', 'TipiParametri (NON ELIMINARE)'),
('Guest', 'Guest', 'Guest', 'TipiParametri (NON ELIMINARE)'),
('int', 'int', 'int', 'TipiParametri (NON ELIMINARE)'),
('Interaction', 'classe per la gestione dell''interazione tra APIGateway e AVS', 'gestione interazione', 'Interaction'),
('Interlocutor', 'Interlocutor', 'Interlocutor', 'TipiParametri (NON ELIMINARE)'),
('Interlocutor[]', 'Interlocutor[]', 'Interlocutor[]', 'TipiParametri (NON ELIMINARE)'),
('ManageAdmin', 'classe per la gestione degli amministratori', 'gestione amministratori', 'Administration'),
('ManageAuth', 'Classe adibita ai permessi di autenticazione', 'Classe utilizzata per autenticare l''admin ed il superadmin', 'Administration'),
('ManageFirm', 'classe per la gestione delle aziende', 'gestione aziende', 'Administration'),
('ManageGuest', 'classe per la gestione degli ospiti in Slack', 'ospiti in Slack', 'Slack'),
('ManageQuestions', 'Classe per modificare le domande e visionare le azioni associate', 'Classe utilizzata quando si vuole manipolare in generale l''array delle domande', 'Administration'),
('ManageSlack', 'classe per la gestione di Slack', 'gestione Slack', 'Administration'),
('Question', 'Question', 'Question', 'TipiParametri (NON ELIMINARE)'),
('QuestionService', 'Fornisce i servizi per gestione delle domande.', 'Usato per le chiamate relative ai servizi di gestione delle domande.', 'Service'),
('Question[]', 'Question[]', 'Question[]', 'TipiParametri (NON ELIMINARE)'),
('Read', 'classe per gestire la lettura dal database', 'lettura database', 'DatabaseInteraction'),
('sendMessage', 'classe per l''invio di un messaggio in un canale Slack', 'invio messaggio Slack', 'Slack'),
('SlackService', 'Classe che implementa i metodi forniti dalla classe Interlocutor e fornisce servizi specifici per la gestione del canale #azienda', 'Classe utilizzata quando viene chiamato un servizio disponibile per Admin e SuperAdmin', 'Service'),
('string', 'string', 'string', 'TipiParametri (NON ELIMINARE)'),
('User', 'User', 'User', 'TipiParametri (NON ELIMINARE)'),
('void', 'void', 'void', 'TipiParametri (NON ELIMINARE)'),
('Write', 'classe per gestire la scrittura sul database', 'scrittura database', 'DatabaseInteraction');

--
-- Triggers `Classes`
--
DROP TRIGGER IF EXISTS `TypesDelete`;
DELIMITER //
CREATE TRIGGER `TypesDelete` AFTER DELETE ON `Classes`
 FOR EACH ROW BEGIN 		
DELETE FROM Types WHERE type = OLD.class and package = OLD.package;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `TypesInsert`;
DELIMITER //
CREATE TRIGGER `TypesInsert` AFTER INSERT ON `Classes`
 FOR EACH ROW BEGIN 		
INSERT INTO Types VALUES (NEW.class, NEW.package);
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `TypesUpdate`;
DELIMITER //
CREATE TRIGGER `TypesUpdate` AFTER UPDATE ON `Classes`
 FOR EACH ROW BEGIN 		
UPDATE Types SET type = NEW.class where type = OLD.class and package = OLD.package;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ClassInheritance`
--

CREATE TABLE IF NOT EXISTS `ClassInheritance` (
  `base` varchar(100) NOT NULL,
  `derivative` varchar(100) NOT NULL,
  `basePackage` varchar(100) NOT NULL,
  `derivativePackage` varchar(100) NOT NULL,
  PRIMARY KEY (`base`,`derivative`,`basePackage`,`derivativePackage`),
  KEY `derivative` (`derivative`),
  KEY `basePackage` (`basePackage`),
  KEY `derivativePackage` (`derivativePackage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ClassMethods`
--

CREATE TABLE IF NOT EXISTS `ClassMethods` (
  `class` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `returnType` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `package` varchar(100) NOT NULL,
  PRIMARY KEY (`class`,`signature`,`returnType`,`package`),
  KEY `class` (`class`,`package`),
  KEY `returnType` (`returnType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ClassMethods`
--

INSERT INTO `ClassMethods` (`class`, `signature`, `returnType`, `description`, `package`) VALUES
('AdminService', '+addAdmin(admin:Admin):void', 'void', 'Metodo che aggiunge un admin nell''array degli admin', 'Service'),
('AdminService', '+deleteAdmin(admin:Admin):void', 'void', 'Metodo che elimina un admin dall''array degli admin', 'Service'),
('AdminService', '+getAdmins():Admin[]', 'Admin[]', 'Metodo che restituisce l''intero array degli admin', 'Service'),
('AdminService', '+updateAdmin(admin:Admin):void', 'void', 'Metodo che aggiorna un admin', 'Service'),
('FirmService', '+addInteraction(sessionId:string,questionText:string,answerText:string):void', 'void', 'Aggiunge un interazione al Log.', 'Service'),
('FirmService', '+getFirms():Firms[]', 'Firm[]', 'Restituisce l''array con le Firm di tutte le aziende.', 'Service'),
('FirmService', '+getGuestConversation(firm:Firm,guest:User):Conversation[]', 'Conversation[]', 'Funzione che permette di ottenere le conversazioni di un ospite.', 'Service'),
('FirmService', '+isGuestPresent(name:string):boolean', 'boolean', 'Controlla la presenza di un ospite all''interno del database.', 'Service'),
('FirmService', '+isPresent(name:string):boolean', 'boolean', 'Metodo che controlla l''esistenza di un''azienda con il nome passato.', 'Service'),
('FirmService', '+updateFirm(firm:Firm):void', 'void', 'Metodo per l''inserimento di nuova Firm all''interno del database.', 'Service'),
('ManageAdmin', '+addAdmin(a:Admin):void', 'void', 'Metodo che aggiunge un admin all''array di Admin', 'Administration'),
('ManageAdmin', '+deleteAdmin(i:int):void', 'void', 'Metodo che permetti di eliminare un admin dall''array degli Admin', 'Administration'),
('ManageAdmin', '+getAdmins():Admin[]', 'Admin[]', 'Metodo che restituisce l''intero array di Admin', 'Administration'),
('ManageAdmin', '+sendEmail(email:string):boolean', 'boolean', 'Metodo che spedisce una e-mail all''indirizzo specificato', 'Administration'),
('ManageAdmin', '+updateAdmin(a:Admin):void', 'void', 'Metodo che aggiorna un admin', 'Administration'),
('ManageAuth', '+login(username:string,password:string):string', 'string', 'Effettua l''operazione di login ritornando un token relativo a quella sessione.', 'Administration'),
('ManageAuth', '+logout(token:string):void', 'void', 'Chiude la sessione attiva utilizzando il token generato dall''operazione di login.', 'Administration'),
('ManageAuth', '+verifyAdminTrame(trame:AdminTrame):void', 'void', ' Verifica che un trame passato in ingresso, nel caso si verificasse un errore verrÃ  lanciata un eccezione.', 'Administration'),
('ManageAuth', '+verifyLogin(token:string):boolean', 'boolean', 'Verifica della sessione attiva tramite il tocken generato dell''operazione di login(username:string,password:string).', 'Administration'),
('ManageFirm', '+getFirm():Firm[]', 'Firm[]', 'Restituisce un array di firme con i nomi delle aziende', 'Administration'),
('ManageFirm', '+getGuestConvertions(firm:Firm,guest:User):Conversation[]', 'Conversation[]', 'Ritorna un''array con le conversazioni di un ospite di un''azienda', 'Administration'),
('ManageFirm', 'createremove_+updateFirm(f:Firm):boolean', 'boolean', 'Aggiunta di una firma e ritorno se l''operazione ha avuto successo', 'Administration'),
('ManageQuestions', '+addQuestion(q:Question):void', 'void', 'Metodo per aggiungere una domanda all''array Question[] delle domande.', 'Administration'),
('ManageQuestions', '+deleteQuestion(q:Question):void', 'void', 'Metodo per eliminare una domanda dall''array delle domande.', 'Administration'),
('ManageQuestions', '+getActions():Action[]', 'Action[]', 'Metodo che restituisce l''intero array delle azioni disponibili', 'Administration'),
('ManageQuestions', '+getQuestions():Question[]', 'Question[]', 'Metodo che ritorna l''intero array delle domande', 'Administration'),
('ManageQuestions', '+updateQuestion(q:Question):void', 'void', 'Metodo che aggiorna una domanda nell''array delle domande ', 'Administration'),
('ManageSlack', '+addInterlocutor(interlocutor:Interlocutor):void', 'void', 'Aggiunge un interlocutore alla lista degli interlocutori possibili', 'Administration'),
('ManageSlack', '+getDefaultInterlocutors():Interlocutor[]', 'Interlocutor[]', 'Ritorna un array di tutti gli interlocutori che sono inseriti di default, in ascolto in un canale aziendale nuovo, presenti nel database', 'Administration'),
('ManageSlack', '+getInterlocutors():Interlocutor[]', 'Interlocutor[]', 'Ritorna un array di tutti gli interlocutori presenti nel database', 'Administration'),
('ManageSlack', '+removeInterlocutor(interlocutor:Interlocutor):void', 'void', 'Rimuove l''interlocutore passato come parametro', 'Administration'),
('QuestionService', '+addQuestion(question:Question):void', 'void', 'Questo metodo fornisce il servizio per l''aggiunta di una domanda.', 'Service'),
('QuestionService', '+deleteQuestion(question:Question):void', 'void', 'Metodo che permette di eliminare una domanda precedentemente inserita.', 'Service'),
('QuestionService', '+getActions():Action[]', 'Action[]', 'Restituisce un array contenente tutte le azioni possibili in risposta alle interazioni.', 'Service'),
('QuestionService', '+getNextQuestion(answer:Answer):Question', 'Question', 'Restituisce la domanda successiva usando in ingresso la risposta data, con tutte le relative informazioni.', 'Service'),
('QuestionService', '+getQuestions():Question[]', 'Question[]', 'Restituisce un array di Question con tutte le domande presenti nel DB.', 'Service'),
('QuestionService', '+updateQuestion(question:Question):void', 'void', 'Permette la modifica delle informazioni di una domanda.', 'Service'),
('QuestionService', 'getFirstquestion():Question', 'Question', 'Chiamata iniziale che permette l''inizio delle interazioni successive restituendo la prima domanda.', 'Service'),
('QuestionService', 'getLastAnswerText(skillSessionID:string):string', 'string', 'Restituisce il testo dell''ultima risposta data nella conversazione.', 'Service'),
('SlackService', 'addInterlocutor(interlocutor:Interlocutor):void', 'void', 'Metodo che associa un interlocutore alla lista di default degli interlocutori che verrÃ  utilizzata nel canale #azienda di Slack', 'Service'),
('SlackService', 'getDefaultInterlocutors():Interlocutor[]', 'Interlocutor[]', 'Metodo che ritorna tutti gli interlocutori presenti nella lista di default utilizzata nel canale #azienda di Slack', 'Service'),
('SlackService', 'getInterlocutors():Interlocutor[]', 'Interlocutor[]', 'Metodo che ritorna tutti gli interlocutori presenti nel sistema', 'Service'),
('SlackService', 'removeInterlocutor(interlocutor:Interlocutor):void', 'void', 'Metodo che disassocia un interlocutore alla lista di default degli interlocutori che verrÃ  utilizzata nel canale #azienda di Slack', 'Service');

-- --------------------------------------------------------

--
-- Table structure for table `ClassMethodsParams`
--

CREATE TABLE IF NOT EXISTS `ClassMethodsParams` (
  `class` varchar(100) NOT NULL,
  `package` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `returnType` varchar(100) NOT NULL,
  `param` varchar(50) NOT NULL,
  `paramType` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`class`,`signature`,`returnType`,`package`,`param`),
  KEY `class` (`class`,`package`,`signature`,`returnType`),
  KEY `paramType` (`paramType`),
  KEY `returnType` (`returnType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ClassMethodsParams`
--

INSERT INTO `ClassMethodsParams` (`class`, `package`, `signature`, `returnType`, `param`, `paramType`, `description`) VALUES
('AdminService', 'Service', '+addAdmin(admin:Admin):void', 'void', 'admin', 'Admin', 'Parametro che indica l''oggetto di tipo Admin che si vuole aggiungere'),
('AdminService', 'Service', '+deleteAdmin(admin:Admin):void', 'void', 'admin', 'Admin', 'Parametro che indica quale oggetto di tipo Admin si vuole eliminare'),
('AdminService', 'Service', '+updateAdmin(admin:Admin):void', 'void', 'admin', 'Admin', 'Parametro che indica quale oggetto di tipo Admin si vuole aggiornare'),
('FirmService', 'Service', '+addInteraction(sessionId:string,questionText:string,answerText:string):void', 'void', 'answerText', 'string', 'Contiene il testo dell''ultima risposta data.'),
('FirmService', 'Service', '+addInteraction(sessionId:string,questionText:string,answerText:string):void', 'void', 'questionText', 'string', 'Contiene il testo di una domanda.'),
('FirmService', 'Service', '+addInteraction(sessionId:string,questionText:string,answerText:string):void', 'void', 'sessionID', 'string', 'Contiene il token relativo alla sessione'),
('FirmService', 'Service', '+getGuestConversation(firm:Firm,guest:User):Conversation[]', 'Conversation[]', 'firm', 'Firm', 'Contiene la Firm dell''azienda di appartenenza dell''ospite.'),
('FirmService', 'Service', '+getGuestConversation(firm:Firm,guest:User):Conversation[]', 'Conversation[]', 'guest', 'User', 'Contine i dati dell''ospite di cui sarÃ  controllata la presenza del database.'),
('FirmService', 'Service', '+isGuestPresent(name:string):boolean', 'boolean', 'name', 'string', 'Contiene il nome di un ospite.'),
('FirmService', 'Service', '+isPresent(name:string):boolean', 'boolean', 'name', 'string', 'Nome dell''azienda.'),
('FirmService', 'Service', '+updateFirm(firm:Firm):void', 'void', 'firm', 'Firm', 'Contiene il Firm di un''azienda.'),
('ManageAdmin', 'Administration', '+addAdmin(a:Admin):void', 'void', 'a', 'Admin', 'Parametro che rappresenta l''oggetto ti tipo Admin che si vuole agiungere'),
('ManageAdmin', 'Administration', '+deleteAdmin(i:int):void', 'void', 'i', 'int', 'Parametro intero che indica l''ennesimo admin che verrÃ  eliminato dall''array di Admin'),
('ManageAdmin', 'Administration', '+sendEmail(email:string):boolean', 'boolean', 'email', 'string', 'Parametro stringa che specifica l''indirizzo desiderato per l''e-mail'),
('ManageAdmin', 'Administration', '+updateAdmin(a:Admin):void', 'void', 'a', 'Admin', 'Parametro che rappresenta l''oggetto di tipo Admin da modificare'),
('ManageAuth', 'Administration', '+login(username:string,password:string):string', 'string', 'username', 'string', 'Nome utente di cui sarÃ  effettuata la login'),
('ManageAuth', 'Administration', '+logout(token:string):void', 'void', 'token', 'string', 'stringa generata dall''operazione di login.'),
('ManageAuth', 'Administration', '+verifyAdminTrame(trame:AdminTrame):void', 'void', 'trame', 'AdminTrame', 'Contiene il trame relativo ad un admin.'),
('ManageAuth', 'Administration', '+verifyLogin(token:string):boolean', 'boolean', 'token', 'string', 'Contiene la stringa generata alla creazione della login.'),
('ManageFirm', 'Administration', '+getGuestConvertions(firm:Firm,guest:User):Conversation[]', 'Conversation[]', 'f', 'Firm', 'Contiene la firma dell''azienda'),
('ManageFirm', 'Administration', '+getGuestConvertions(firm:Firm,guest:User):Conversation[]', 'Conversation[]', 'User', 'Guest', 'Contiene l''ospite che ha effettuato la conversazione'),
('ManageFirm', 'Administration', 'createremove_+updateFirm(f:Firm):boolean', 'boolean', 'f', 'Firm', 'Contiene la firma di un''azienda'),
('ManageQuestions', 'Administration', '+addQuestion(q:Question):void', 'void', 'q', 'Question', 'Parametro che indica l''oggetto di tipo Question che si vuole aggiungere all''array delle domande.'),
('ManageQuestions', 'Administration', '+deleteQuestion(q:Question):void', 'void', 'q', 'Question', 'Parametro che indica quale oggetto di tipo Question si vuole eliminare dall''array delle domande.'),
('ManageQuestions', 'Administration', '+updateQuestion(q:Question):void', 'void', 'q', 'Question', 'Parametro che indica quale oggetto di tipo Question si vuole modificare'),
('ManageSlack', 'Administration', '+addInterlocutor(interlocutor:Interlocutor):void', 'void', 'interlocutor', 'Interlocutor', 'interlocutore da aggiungere nella lista di interlocutori'),
('ManageSlack', 'Administration', '+removeInterlocutor(interlocutor:Interlocutor):void', 'void', 'interlocutor', 'Interlocutor', 'Contiene l''interlocutore che sarÃ  successivamente eliminato dalla lista degli interlocutori di slack'),
('QuestionService', 'Service', '+addQuestion(question:Question):void', 'void', 'question', 'Question', 'Contiene una domanda da inserire nel database nella lista delle domande.'),
('QuestionService', 'Service', '+deleteQuestion(question:Question):void', 'void', 'question', 'Question', 'Contiene tutte le informazioni relative ad una domanda.'),
('QuestionService', 'Service', '+getNextQuestion(answer:Answer):Question', 'Question', 'anction', 'Action', 'Contiene tutte le informazioni relative ad una risposta data.'),
('QuestionService', 'Service', '+getQuestions():Question[]', 'Question[]', 'question', 'Question[]', 'Contiene tutte le informazioni relative ad una domanda.'),
('QuestionService', 'Service', '+updateQuestion(question:Question):void', 'void', 'questionq', 'Question', 'Contiene tutte le informazioni relative ad una domanda.'),
('QuestionService', 'Service', 'getLastAnswerText(skillSessionID:string):string', 'string', 'skillSessionID', 'string', 'Contiene il token della sessione in corso.'),
('SlackService', 'Service', 'addInterlocutor(interlocutor:Interlocutor):void', 'void', 'interlocutor', 'Interlocutor', 'Parametro che indica l''interlocutore di tipo Interlocutor da aggiungere alla lista'),
('SlackService', 'Service', 'removeInterlocutor(interlocutor:Interlocutor):void', 'void', 'interlocutor', 'Interlocutor', 'Parametro che indica l''interlocutore di tipo Interlocutor da rimuovere dalla lista');

-- --------------------------------------------------------

--
-- Table structure for table `ClassRelations`
--

CREATE TABLE IF NOT EXISTS `ClassRelations` (
  `classStart` varchar(100) NOT NULL,
  `packageStart` varchar(100) NOT NULL,
  `classEnd` varchar(100) NOT NULL,
  `packageEnd` varchar(100) NOT NULL,
  `relation` varchar(15) NOT NULL,
  PRIMARY KEY (`classStart`,`packageStart`,`classEnd`,`packageEnd`,`relation`),
  KEY `packageStart` (`packageStart`),
  KEY `classEnd` (`classEnd`),
  KEY `packageEnd` (`packageEnd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Glossary`
--

CREATE TABLE IF NOT EXISTS `Glossary` (
  `term` varchar(100) NOT NULL,
  `explanation` varchar(5000) NOT NULL,
  PRIMARY KEY (`term`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `IntegrationTest`
--

CREATE TABLE IF NOT EXISTS `IntegrationTest` (
  `idTest` tinyint(255) NOT NULL AUTO_INCREMENT,
  `package` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `implemented` varchar(15) NOT NULL,
  `satisfied` varchar(15) NOT NULL,
  PRIMARY KEY (`idTest`,`package`),
  KEY `package` (`package`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `PackageInteractions`
--

CREATE TABLE IF NOT EXISTS `PackageInteractions` (
  `packageA` varchar(100) NOT NULL,
  `packageB` varchar(100) NOT NULL,
  `interaction` longtext NOT NULL,
  PRIMARY KEY (`packageA`,`packageB`),
  KEY `packageB` (`packageB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Packages`
--

CREATE TABLE IF NOT EXISTS `Packages` (
  `package` varchar(100) NOT NULL,
  `dad` varchar(100) DEFAULT NULL,
  `description` varchar(2000) NOT NULL,
  `imagePath` varchar(500) DEFAULT NULL,
  `didascalia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`package`),
  KEY `dad` (`dad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Packages`
--

INSERT INTO `Packages` (`package`, `dad`, `description`, `imagePath`, `didascalia`) VALUES
('Action', NULL, 'Package che contiene le possibili azioni in risposta alle interazioni ', '', ''),
('Administration', NULL, 'Package  che contiene tuttle le funzionalitÃ  che un admin ed un superadmin possono fare', '', ''),
('AdministrationView', NULL, 'Package dedicato alla parte client dell''admin e del superadmin', '', ''),
('APIGateway', NULL, 'Package dedicato all''interfaccia rest', '', ''),
('BackEnd', NULL, 'Package che contiene tutti i package dedicati alla parte logica dell''applicazione', '', ''),
('Component', 'AdministrationView', 'Package dedicato alla gestione dei componenti grafici (View e Controller)', '', ''),
('DatabaseInteraction', NULL, 'package per la gestione del database', '', ''),
('Front-End', NULL, 'Package che rappresenta il client dell''applicazione', '', ''),
('GuestComponent', 'GuestHome', 'Package dedicato alla parte view e controller dell''interfaccia ospite', '', ''),
('GuestHome', 'Front-End', 'Package dedicato alla parte d''interfaccia client disponibile per l''ospite e per l''utente', '', ''),
('GuestServices', 'GuestHome', 'Package dedicato ai servizi disponibili agli ospiti ', '', ''),
('Interaction', NULL, 'package per il tramite tra APIGateway e AVS', '', ''),
('LambdaSkill', NULL, 'Package contenente la logica del workflow dell''applicazione', '', ''),
('Service', NULL, 'Package che gestisce tutti i servizi disponibili nell''applicazione', '', ''),
('ServiceView', 'AdministrationView', 'package di servizi a cui si appoggia il package Component per interagire con l''APIGateway tramite funzioni REST ', '', ''),
('Slack', NULL, 'package per la gestione di Slack', '', ''),
('TipiParametri (NON ELIMINARE)', NULL, 'TipiParametri (NON ELIMINARE)', '', '');

--
-- Triggers `Packages`
--
DROP TRIGGER IF EXISTS `PackageDelete`;
DELIMITER //
CREATE TRIGGER `PackageDelete` BEFORE DELETE ON `Packages`
 FOR EACH ROW BEGIN
DELETE FROM Types where type in (SELECT class FROM Classes where package = OLD.package);
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `PackagesRequirements`
--

CREATE TABLE IF NOT EXISTS `PackagesRequirements` (
  `package` varchar(100) NOT NULL,
  `requirement` varchar(100) NOT NULL,
  PRIMARY KEY (`package`,`requirement`),
  KEY `requirement` (`requirement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Requirements`
--

CREATE TABLE IF NOT EXISTS `Requirements` (
  `requirement` varchar(100) NOT NULL,
  `dad` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `source` varchar(50) NOT NULL,
  `satisfied` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`requirement`),
  KEY `dad` (`dad`),
  KEY `source` (`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Requirements`
--

INSERT INTO `Requirements` (`requirement`, `dad`, `description`, `source`, `satisfied`) VALUES
('R0F1', NULL, 'L''utente deve poter attivare il sistema tramite comando vocale', 'UC1', 'notSatisfied'),
('R0F11', NULL, 'Un amministratore deve poter effettuare il login al sistema', 'UC4', 'notSatisfied'),
('R0F12', NULL, 'Un amministratore deve poter inserire la propria email per effettuare il login nel sistema', 'UC4.1', 'notSatisfied'),
('R0F13', NULL, 'Un amministratore deve poter confermare la propria email per effettuare il login nel sistema', 'UC4.1', 'notSatisfied'),
('R0F14', NULL, 'Un amministratore deve poter recuperare la propria password', 'UC4.2', 'notSatisfied'),
('R0F15', NULL, 'Un amministratore deve poter inserire la propria email per recuperare la propria password', 'UC4.2', 'notSatisfied'),
('R0F16', NULL, 'Un amministratore deve poter confermare la propria email per recuperare la propria password', 'UC4.2', 'notSatisfied'),
('R0F17', NULL, 'Un amministratore deve poter inserire la password inserita per effettuare il login nel sistema', 'UC4.3', 'notSatisfied'),
('R0F18', NULL, 'Un amministratore deve poter confermare la password inserita per effettuare il login nel sistema', 'UC4.3', 'notSatisfied'),
('R0F19', NULL, 'La password deve essere alfanumerica e deve essere lunga almeno 8 caratteri', 'UC4.3', 'notSatisfied'),
('R0F20', NULL, 'Un amministratore deve poter visualizzare un messaggio di errore se la password inserita non Ã¨ corretta', 'UC4.3.1', 'notSatisfied'),
('R0F21', NULL, 'Un amministratore deve poter visualizzare un messaggio di errore se la email inserita non Ã¨ presente nel sistema', 'UC4.4', 'notSatisfied'),
('R0F22', NULL, 'L''ospite deve poter interagire con il sistema rispondendo alle domande che gli vengono poste', 'UC5', 'notSatisfied'),
('R0F23', NULL, 'L''ospite deve poter interagire con il sistema vocalmente', 'UC5', 'notSatisfied'),
('R0F24', NULL, 'Il sistema deve poter verificare se un ospite Ã¨ giÃ  registrato o meno', 'Riunione interna in data 2016-12-19', 'notSatisfied'),
('R0F25', NULL, 'Il sistema deve poter adattare le domande in base al numero di presenze precedenti dell''ospite', 'Riunione interna in data 2016-12-19', 'notSatisfied'),
('R0F26', NULL, 'Il sistema deve poter chiedere all''ospite l''azienda di appartenenza', 'UC5.1', 'notSatisfied'),
('R0F27', NULL, 'Il sistema deve poter rimanere in ascolto, del nome dell''azienda dell''ospite, per un periodo di tempo prefissato', 'UC5.1', 'notSatisfied'),
('R0F29', NULL, 'Il sistema deve poter chiedere all''ospite l''interlocutore ricercato', 'UC5.2', 'notSatisfied'),
('R0F3', NULL, 'Il sistema deve poter disattivarsi in automatico per timeout', 'UC2', 'notSatisfied'),
('R0F30', NULL, 'Il sistema deve poter rimanere in ascolto, del nome della persona cercata da parte dell''ospite, per un periodo di tempo prefissato', 'UC5.2', 'notSatisfied'),
('R0F32', NULL, 'Il sistema deve poter chiedere all''ospite se desidera un caffÃ¨', 'UC5.3', 'notSatisfied'),
('R0F33', NULL, 'Il sistema deve poter rimanere in ascolto di una risposta da parte dell''ospite per un periodo di tempo prefissato', 'UC5.3', 'notSatisfied'),
('R0F34', NULL, 'Il sistema deve poter chiedere all''ospite se necessita di qualche materiale', 'UC5.4', 'notSatisfied'),
('R0F35', NULL, 'Il sistema deve poter rimanere in ascolto di una risposta da parte dell''ospite per un periodo di tempo prefissato', 'UC5.4', 'notSatisfied'),
('R0F36', NULL, 'Il sistema deve poter intrattenere l''ospite con determinati argomenti', 'UC5.5', 'notSatisfied'),
('R0F37', NULL, 'Il sistema deve poter intrattenere l''ospite con il meteo di una localitÃ scelta', 'UC5.5.1', 'notSatisfied'),
('R0F38', NULL, 'Il sistema deve poter intrattenere l''ospite con alcune news', 'UC5.5.2', 'notSatisfied'),
('R0F39', NULL, 'Il sistema deve poter intrattenere l''ospite con alcune barzelette', 'UC5.5.3', 'notSatisfied'),
('R0F4', NULL, 'L''utente deve poter disattivare il sistema in qualsiasi momento tramite comando vocale', 'UC2', 'notSatisfied'),
('R0F41', NULL, 'Un amministratore deve poter effettuare il logout dal sistema solo se loggato', 'UC6', 'notSatisfied'),
('R0F42', NULL, 'Il sistema deve poter essere gestito da un pannello di amministrazione', 'UC7', 'notSatisfied'),
('R0F6', NULL, 'L''utente deve poter identificarsi nel sistema per usufruirne', 'UC3', 'notSatisfied'),
('R0F7', NULL, 'Il sitema deve poter chiede all'' ospite il proprio nome e cognome', 'UC3.1', 'notSatisfied'),
('R0F8', NULL, 'Il sistema deve rimanere in ascolto del nome e del cognome dell''ospite per un periodo di tempo prefissato', 'UC3.1', 'notSatisfied'),
('R0F83', NULL, 'Il Super Admin deve poter aver accesso a tutte le funzionalitÃ  di un normale Admin', 'Riunione interna in data 2016-12-19', 'notSatisfied'),
('R0F9', NULL, 'L''utente deve poter rispondere vocalmente indicando il proprio nome e cognome', 'UC3.1', 'notSatisfied'),
('R0F93', NULL, 'un super amministratore puÃ² vedere la lista di amministratori del sistema', 'UC8.1.2', 'notSatisfied'),
('R0Q5', NULL, 'Devono essere tracciati i test di unitÃ  per il sistema utilizzando Trender', 'Riunione interna in data 2016-12-19', 'notSatisfied'),
('R0Q6', NULL, 'Deve essere prodotta la documentazione dei test di unitÃ ', 'Riunione interna in data 2016-12-19', 'notSatisfied'),
('R0V1', NULL, 'Devono essere documentate e motivate le scelte riguardanti il database scelto', 'Capitolato', 'notSatisfied'),
('R0V10', NULL, 'Il sistema deve disporre di dispositivi di input quali schermo touch', 'Capitolato', 'notSatisfied'),
('R0V12', NULL, 'Il sistema deve poter interagire con i servizi AWS', 'Capitolato', 'notSatisfied'),
('R0V2', NULL, 'Devono essere documentate e motivate le scelte riguardanti le tecnologie utilizzate', 'Capitolato', 'notSatisfied'),
('R0V3', NULL, 'L''applicazione deve essere fruibile su Chrome e Firefox (vedi tabella browser per le versioni)', 'Capitolato', 'notSatisfied'),
('R0V6', NULL, 'Il sistema deve disporre di un microfono', 'Capitolato', 'notSatisfied'),
('R0V7', NULL, 'Il sistema deve essere abilitato alla registrazione di audio', 'Capitolato', 'notSatisfied'),
('R0V8', NULL, 'Il sistema deve disporre di casse audio', 'Capitolato', 'notSatisfied'),
('R0V9', NULL, 'Il sistema deve essere abilitato alla riproduzione di audio', 'Capitolato', 'notSatisfied'),
('R1Q8', NULL, 'Il pannello amministrativo puÃ essere acceduto solo da network locale per ragioni di sicurezza', 'Riunione interna in data 2016-12-19', 'notSatisfied'),
('R1V4', NULL, 'L''applicazione deve essere fruibile su altri browser compatibili con HTML5, CCS3, JavaScript (vedi tabella browser per le versioni)', 'Capitolato', 'notSatisfied'),
('R2F10', NULL, 'L''utente deve poter confermare nome e cognome inseriti vocalmente', 'UC3.1', 'notSatisfied'),
('R2F2', NULL, 'L''utente deve poter attivare il sistema tramite pulsante', 'Riunione interna in data 2016-12-19', 'notSatisfied'),
('R2F28', NULL, 'L''utente deve poter confermare l''azienda inserita vocalmente', 'UC3.1', 'notSatisfied'),
('R2F31', NULL, 'L''utente deve poter confermare il nome dell''interlocutore inserito vocalmente', 'UC3.1', 'notSatisfied'),
('R2F40', NULL, 'Il sistema deve poter visualizzare a schermo le possibili aziende di appartenenza', 'UC5.6', 'notSatisfied'),
('R2F5', NULL, 'L''utente deve poter disattivare il sistema in qualsiasi momento tramite pulsante', 'UC2', 'notSatisfied'),
('R2V11', NULL, 'Il sistema deve disporre di dispositivi di input quali mouse e tastiera', 'Capitolato', 'notSatisfied'),
('R2V5', NULL, 'L''applicazione deve essere fruibile su altri browser anche non compatibili con HTML5, CCS3, JavaScript (tutti esclusi quelli in tabella browser)', 'Capitolato', 'notSatisfied'),
('ROF43', NULL, 'L''Admin deve poter gestire gli ospiti', 'UC7.1', 'notSatisfied'),
('ROF44', NULL, 'L''Admin deve poter scegliere un ospite da rinominare', 'UC7.1.1', 'notSatisfied'),
('ROF45', NULL, 'L''Admin deve poter rinominare un ospite', 'UC7.1.1', 'notSatisfied'),
('ROF46', NULL, 'L''Admin deve poter confermare la rinomina di un ospite', 'UC7.1.1', 'notSatisfied'),
('ROF47', NULL, 'L''Admin deve poter scegliere un''azienda da rinominare', 'UC7.1.2', 'notSatisfied'),
('ROF48', NULL, 'L''Admin deve poter rinominare un''azienda', 'UC7.1.2', 'notSatisfied'),
('ROF49', NULL, 'L''Admin deve poter confermare la rinomina di un''azienda', 'UC7.1.2', 'notSatisfied'),
('ROF50', NULL, 'L''Admin deve poter visualizzare il profilo di un ospite', 'UC7.1.3', 'notSatisfied'),
('ROF51', NULL, 'L''Admin deve poter gestire le domande', 'UC7.2', 'notSatisfied'),
('ROF52', NULL, 'L''Admin deve poter aggiungere una domanda', 'UC7.2.1', 'notSatisfied'),
('ROF53', NULL, 'L''Admin deve poter confermare l''inserimento di una domanda', 'UC7.2.1', 'notSatisfied'),
('ROF54', NULL, 'L''Admin deve poter scegliere una domanda da rimuovere', 'UC7.2.2', 'notSatisfied'),
('ROF55', NULL, 'L''Admin deve poter confermare la rimozione di una domanda', 'UC7.2.2', 'notSatisfied'),
('ROF56', NULL, 'L''Admin deve poter scegliere una domanda da modificare', 'UC7.2.3', 'notSatisfied'),
('ROF57', NULL, 'L''Admin deve poter gestire le risposte', 'UC7.2.4', 'notSatisfied'),
('ROF58', NULL, 'L''Admin deve poter aggiungere una risposta', 'UC7.2.4.1', 'notSatisfied'),
('ROF59', NULL, 'L''Admin deve poter confermare l''inserimento di una risposta', 'UC7.2.4.1', 'notSatisfied'),
('ROF60', NULL, 'L''Admin deve poter modificare una risposta', 'UC7.2.4.2', 'notSatisfied'),
('ROF61', NULL, 'L''Admin deve poter confermare la modifica di una risposta', 'UC7.2.4.2', 'notSatisfied'),
('ROF62', NULL, 'L''Admin deve poter scegliere una risposta da rimuovere', 'UC7.2.4.3', 'notSatisfied'),
('ROF63', NULL, 'L''Admin deve poter confermare la rimozione di una risposta', 'UC7.2.4.3', 'notSatisfied'),
('ROF64', NULL, 'L''Admin deve poter scegliere una ACTION da associare ad una risposta', 'UC7.2.4.4', 'notSatisfied'),
('ROF65', NULL, 'L''Admin deve poter modificare il testo di una risposta', 'UC7.2.4.5', 'notSatisfied'),
('ROF66', NULL, 'L''Admin deve poter inserire una risposta lunga almeno N caratteri, con N un numero predefinito dal sistema', 'UC7.2.4.5', 'notSatisfied'),
('ROF67', NULL, 'L''Admin deve poter modificare l''associazione di un domanda successiva', 'UC7.2.4.6', 'notSatisfied'),
('ROF68', NULL, 'L''Admin deve poter modificare il testo di una domanda base', 'UC7.2.5', 'notSatisfied'),
('ROF69', NULL, 'L''Admin deve poter inserire una domanda base lunga almeno N caratteri, con N un numero predefinito dal sistema', 'UC7.2.5', 'notSatisfied'),
('ROF70', NULL, 'L''Admin deve poter modificare il testo di una domanda ricorrente', 'UC7.2.6', 'notSatisfied'),
('ROF71', NULL, 'L''Admin deve poter inserire una domanda ricorrente lunga almeno N caratteri, con N un numero predefinito dal sistema', 'UC7.2.6', 'notSatisfied'),
('ROF72', NULL, 'L''Admin deve poter gestire le impostazioni di Slack', 'UC7.3', 'notSatisfied'),
('ROF73', NULL, 'L''Admin deve poter gestire una lista di interlocutori di default per i canali #azienda che vengono creati', 'UC7.3.1', 'notSatisfied'),
('ROF74', NULL, 'L''Admin deve poter scegliere un interlocutore da associare alla lista di default', 'UC7.3.1.1', 'notSatisfied'),
('ROF75', NULL, 'L''Admin deve poter confermare un interlocutore da associare alla lista di defalut', 'UC7.3.1.1', 'notSatisfied'),
('ROF76', NULL, 'L''Admin deve poter scegliere un interlocutore da disassociare dalla lista di default', 'UC7.3.1.2', 'notSatisfied'),
('ROF77', NULL, 'L''Admin deve poter confermare un interlocutore da disassociare dalla lista di defalut', 'UC7.3.1.2', 'notSatisfied'),
('ROF78', NULL, 'L''Admin deve poter aggiornare la lista di interlocutori', 'UC7.3.2', 'notSatisfied'),
('ROF79', NULL, 'L''Admin deve poter gestire il proprio account', 'UC7.4', 'notSatisfied'),
('ROF80', NULL, 'L''Admin deve poter modificare la propria password di accesso', 'UC7.4.1', 'notSatisfied'),
('ROF81', NULL, 'L''Admin deve poter inserire una nuova password di accesso ( alfanumerica e di almeno 8 caratteri)', 'UC7.4.1', 'notSatisfied'),
('ROF82', NULL, 'L''Admin deve poter confermare la modifica della password di accesso', 'UC7.4.1', 'notSatisfied'),
('ROF84', NULL, 'Il Super Admin deve poter modificare le email di accesso di un qualsiasi Admin', 'UC8.1.2.1', 'notSatisfied'),
('ROF85', NULL, 'Il Super Admin deve poter confermare la modifica della email di accesso di un qualsiasi Admin', 'UC8.1.2.1', 'notSatisfied'),
('ROF86', NULL, 'Il Super Admin deve poter modificare le password di accesso di un qualsiasi Admin', 'UC8.1.2.2', 'notSatisfied'),
('ROF87', NULL, 'Il Super Admin deve poter confermare la modifica della password di accesso di un qualsiasi Admin', 'UC8.1.2.2', 'notSatisfied'),
('ROF88', NULL, 'Il Super Admin non deve poter visualizzare la password di accesso di un qualsiasi Admin', 'Riunione interna in data 2016-12-19', 'notSatisfied'),
('ROF89', NULL, 'Il Super Admin deve poter aggiungere un nuovo Admin al sistema', 'UC8.1.1', 'notSatisfied'),
('ROF90', NULL, 'Il Super Admin deve poter confermare l''aggiunta un nuovo Admin al sistema', 'UC8.1.1', 'notSatisfied'),
('ROF91', NULL, 'Il Super Admin deve poter rimuovere un qualsiasi Admin dal sistema', 'UC8.1.3', 'notSatisfied'),
('ROF92', NULL, 'Il Super Admin deve poter confermare la rimozione di un qualsiasi Admin dal sistema', 'UC8.1.3', 'notSatisfied'),
('ROQ1', NULL, 'Devono essere utilizzate le issue di GitHub per segnalazione di bug', 'Riunione interna in data 2016-12-19', 'notSatisfied'),
('ROQ2', NULL, 'Devono essere utilizzate le issue di GitHub per suggerimenti di miglioramenti', 'Riunione interna in data 2016-12-19', 'notSatisfied'),
('ROQ3', NULL, 'Deve essere fornita la documentazione delle API', 'Riunione interna in data 2016-12-19', 'notSatisfied'),
('ROQ4', NULL, 'Deve essere fornita la documentazione delle API utilizzando Swagger', 'Riunione interna in data 2016-12-19', 'notSatisfied'),
('ROQ7', NULL, 'Deve essere prodotta la documentazione relative alla struttura del database', 'Riunione interna in data 2016-12-19', 'notSatisfied');

-- --------------------------------------------------------

--
-- Table structure for table `RequirementsClasses`
--

CREATE TABLE IF NOT EXISTS `RequirementsClasses` (
  `requirement` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `package` varchar(100) NOT NULL,
  PRIMARY KEY (`requirement`,`class`,`package`),
  KEY `class` (`class`,`package`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RequirementSources`
--

CREATE TABLE IF NOT EXISTS `RequirementSources` (
  `source` varchar(50) NOT NULL,
  PRIMARY KEY (`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `RequirementSources`
--

INSERT INTO `RequirementSources` (`source`) VALUES
('Capitolato'),
('Riunione interna in data 2016-12-19'),
('UC1'),
('UC10'),
('UC11'),
('UC2'),
('UC2.1'),
('UC2.2'),
('UC3'),
('UC3.1'),
('UC4'),
('UC4.1'),
('UC4.2'),
('UC4.3'),
('UC4.3.1'),
('UC4.4'),
('UC5'),
('UC5.1'),
('UC5.2'),
('UC5.3'),
('UC5.4'),
('UC5.5'),
('UC5.5.1'),
('UC5.5.2'),
('UC5.5.3'),
('UC5.6'),
('UC6'),
('UC7'),
('UC7.1'),
('UC7.1.1'),
('UC7.1.2'),
('UC7.1.3'),
('UC7.2'),
('UC7.2.1'),
('UC7.2.2'),
('UC7.2.3'),
('UC7.2.4'),
('UC7.2.4.1'),
('UC7.2.4.2'),
('UC7.2.4.3'),
('UC7.2.4.4'),
('UC7.2.4.5'),
('UC7.2.4.6'),
('UC7.2.5'),
('UC7.2.6'),
('UC7.3'),
('UC7.3.1'),
('UC7.3.1.1'),
('UC7.3.1.2'),
('UC7.3.2'),
('UC7.4'),
('UC7.4.1'),
('UC7.4.2'),
('UC8'),
('UC8.1'),
('UC8.1.1'),
('UC8.1.2'),
('UC8.1.2.1'),
('UC8.1.2.2'),
('UC8.1.3'),
('UC9');

-- --------------------------------------------------------

--
-- Table structure for table `RequirementsUsecases`
--

CREATE TABLE IF NOT EXISTS `RequirementsUsecases` (
  `requirement` varchar(100) NOT NULL,
  `usecase` varchar(100) NOT NULL,
  PRIMARY KEY (`requirement`,`usecase`),
  KEY `usecase` (`usecase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RequirementsVerbal`
--

CREATE TABLE IF NOT EXISTS `RequirementsVerbal` (
  `requirement` varchar(100) NOT NULL DEFAULT '',
  `verbal` date NOT NULL,
  PRIMARY KEY (`requirement`,`verbal`),
  KEY `verbal` (`verbal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Settings_prints`
--

CREATE TABLE IF NOT EXISTS `Settings_prints` (
  `voice` varchar(100) NOT NULL,
  `active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Settings_prints`
--

INSERT INTO `Settings_prints` (`voice`, `active`) VALUES
('arFunctionalRequirement', 1),
('arQualitativeRequirement', 1),
('arBindingRequirement', 1),
('arPerformanceRequirement', 1),
('arResume', 1),
('arUsecase', 1),
('arTrackingRequirementSource', 1),
('arTrackingSourceRequirement', 1),
('arSatisfiedObbligatory', 1),
('arSatisfiedDesiderable', 1),
('arSatisfiedOptional', 1),
('arTrackingRequirementTestValidationSystem', 1),
('pqTestValidation', 1),
('pqTestSystem', 1),
('pqTestIntegration', 1),
('pqTestUnit', 1),
('pqTrackingComponentTest', 1),
('pqTrackingClassMethodTest', 1),
('pqDesignInstability', 1),
('pqMetricsSatisfiement', 1),
('pqCodeCoverage', 1),
('stTrackingClassRequirement', 1),
('stTrackingRequirementClass', 1),
('dpPackage', 1),
('glVoices', 1);

-- --------------------------------------------------------

--
-- Table structure for table `SystemTests`
--

CREATE TABLE IF NOT EXISTS `SystemTests` (
  `requirement` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `implemented` varchar(15) NOT NULL,
  `satisfied` varchar(15) NOT NULL,
  PRIMARY KEY (`requirement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Types`
--

CREATE TABLE IF NOT EXISTS `Types` (
  `type` varchar(100) NOT NULL,
  `package` varchar(100) NOT NULL,
  PRIMARY KEY (`type`),
  KEY `package` (`package`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Types`
--

INSERT INTO `Types` (`type`, `package`) VALUES
('ManageAuth', 'Administration'),
('ManageFirm', 'Administration'),
('ManageQuestions', 'Administration'),
('Connection', 'DatabaseInteraction'),
('Read', 'DatabaseInteraction'),
('Write', 'DatabaseInteraction'),
('Interaction', 'Interaction'),
('AdminService', 'Service'),
('FirmService', 'Service'),
('QuestionService', 'Service'),
('SlackService', 'Service'),
('ManageGuest', 'Slack'),
('sendMessage', 'Slack'),
('Action', 'TipiParametri (NON ELIMINARE)'),
('Action[]', 'TipiParametri (NON ELIMINARE)'),
('Admin', 'TipiParametri (NON ELIMINARE)'),
('AdminTrame', 'TipiParametri (NON ELIMINARE)'),
('Admin[]', 'TipiParametri (NON ELIMINARE)'),
('boolean', 'TipiParametri (NON ELIMINARE)'),
('Conversation', 'TipiParametri (NON ELIMINARE)'),
('Conversation[]', 'TipiParametri (NON ELIMINARE)'),
('Firm', 'TipiParametri (NON ELIMINARE)'),
('Firm[]', 'TipiParametri (NON ELIMINARE)'),
('Guest', 'TipiParametri (NON ELIMINARE)'),
('int', 'TipiParametri (NON ELIMINARE)'),
('Interlocutor', 'TipiParametri (NON ELIMINARE)'),
('Interlocutor[]', 'TipiParametri (NON ELIMINARE)'),
('Question', 'TipiParametri (NON ELIMINARE)'),
('Question[]', 'TipiParametri (NON ELIMINARE)'),
('string', 'TipiParametri (NON ELIMINARE)'),
('User', 'TipiParametri (NON ELIMINARE)'),
('void', 'TipiParametri (NON ELIMINARE)');

-- --------------------------------------------------------

--
-- Table structure for table `UnitTestClassesMethods`
--

CREATE TABLE IF NOT EXISTS `UnitTestClassesMethods` (
  `test` tinyint(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `returnType` varchar(100) NOT NULL,
  `package` varchar(100) NOT NULL,
  PRIMARY KEY (`test`,`class`,`signature`,`returnType`,`package`),
  KEY `package` (`package`),
  KEY `returnType` (`returnType`),
  KEY `class` (`class`,`signature`,`returnType`,`package`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UnitTests`
--

CREATE TABLE IF NOT EXISTS `UnitTests` (
  `test` tinyint(255) NOT NULL,
  `description` longtext NOT NULL,
  `implemented` varchar(15) NOT NULL,
  `satisfied` varchar(15) NOT NULL,
  PRIMARY KEY (`test`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Usecases`
--

CREATE TABLE IF NOT EXISTS `Usecases` (
  `usecase` varchar(100) NOT NULL,
  `dad` varchar(100) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `precondition` varchar(2000) NOT NULL,
  `postcondition` varchar(2000) NOT NULL,
  `imagePath` varchar(500) DEFAULT NULL,
  `didascalia` varchar(255) DEFAULT NULL,
  `scene` varchar(2000) DEFAULT NULL,
  `alternativeScene` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`usecase`),
  KEY `dad` (`dad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Usecases`
--

INSERT INTO `Usecases` (`usecase`, `dad`, `title`, `description`, `type`, `precondition`, `postcondition`, `imagePath`, `didascalia`, `scene`, `alternativeScene`) VALUES
('UC1', NULL, 'Attivazione', 'l''utente puÃ² attivare il sistema', '', 'il sistema non Ã¨ attivo e nessun utente è al momento identificato', 'il sistema Ã¨ attivo e nessun utente è al momento identificato', '', '', '', ''),
('UC10', NULL, 'Visualizzazione messaggio "Alexa non ha compreso"', 'Alexa non Ã¨ stato in grado di elaborare l''input vocale ricevuto e viene quindi visualizzato all''utente o all''ospite il relativo messaggio di errore', 'extension', 'il sistema ha ricevuto risposta da un utente o ospite e la inoltra ad Alexa', 'il sistema visualizza un messaggio di errore perchÃ© Alexa non Ã¨ riuscito ad elaborare l''input ricevuto, consentendo quindi all''utente o ospite di ripetere l''azione', '', '', '', ''),
('UC11', NULL, 'Visualizzazione messaggio "Alexa non raggiungibile"', 'Alexa non Ã¨ raggiungibile e viene quindi visualizzato all''utente o all''ospite il relativo messaggio di errore', 'extension', 'il sistema ha ricevuto risposta da un utente o ospite e la inoltra ad Alexa', 'il sistema visualizza un messaggio di errore perchÃ© Alexa non Ã¨ raggiungibile, non riuscendo quindi a comprendere l''input ricevuto', '', '', '', ''),
('UC2', NULL, 'Disattivazione', 'l''utente puÃ² disattivare il sistema', '', 'il sistema Ã¨ attivo e un utente o ospite è al momento identificato', 'il sistema non Ã¨ attivo e nessun utente è più identificato', '', '', '', ''),
('UC2.1', 'UC2', 'Disattivazione da input', 'il sistema puÃ² essere disattivato da un utente o un ospite tramite la pressione di un pulsante sullo schermo o un comando vocale in qualsiasi momento', '', 'il sistema Ã¨ correttamente avviato', 'il sistema Ã¨ disattivato e disponibile per un nuovo utente o ospite', '', '', '', ''),
('UC2.2', 'UC2', 'Disattivazione per timeout', 'il sistema puÃ² disattivarsi per timeout se non riceve risposta dall''utente o dall''ospite entro un  determinato tempo', '', 'il sistema Ã¨ avviato correttamente e sta attendendo risposta da un utente o ospite', 'il sistema Ã¨ disattivato e disponibile per un nuovo utente o ospite', '', '', '', ''),
('UC3', NULL, 'Identificazione', 'l''utente puÃ² identificarsi nel sistema rispondendo alle domande postegli dal sistema', '', 'il sistema Ã¨ attivo e non ha nessun utente identificato', 'il sistema Ã¨ attivo e ha un utente identificato', '', '', '', ''),
('UC3.1', 'UC3', 'Inserire nome e cognome', 'l''utente si identifica nel sistema inserendo nome e cognome vocalmente o tramite tastiera', '', 'Alexa Ã¨ disponibile e correttamente funzionante. Il sistema non ha nessun utente identificato. Il sistema chiede all''utente di identificarsi con nome e cognome.', 'il sistema riceve un input dall''utente e procede con l''identificazione dell''utente.', '', '', '', ''),
('UC4', NULL, 'Login amministrazione', 'un utente amministratore puÃ² effettuare il login per la gestione di tutta la console amministrativa', '', 'l''utente amministratore non Ã¨ al momento autenticato nel sistema', 'l''utente amministratore Ã¨ autenticato nel sistema', '', '', '', ''),
('UC4.1', 'UC4', 'Inserimento email', 'l''utente amministratore sta effettuando il login e sta inserendo la email', '', 'l''utente amministratore non Ã¨ ancora loggato nel sistema', 'l''utente amministratore ha inserito una email', '', '', '', ''),
('UC4.2', 'UC4', 'Recupero password', 'l''utente amministratore ha dimenticato la password e per recuperarla deve inserire la propria email', '', 'l''utente amministratore non Ã¨ loggato nel sistema', 'l''utente amministratore ha inserito la propria email per effettuare il recupero della password', '', '', '', ''),
('UC4.3', 'UC4', 'Inserimento password', 'l''utente amministratore inserisce una password', '', 'l''utente amministratore non Ã¨ ancora loggato nel sistema', 'l''utente amministratore ha inserito una password', '', '', '', ''),
('UC4.3.1', 'UC4.3', 'Visualizzazione messaggio "Password non corretta"', 'l''utente amministratore sta cercando di effettuare il login presso l''area amministrativa ma la password inserita non Ã¨ corretta', 'extension', 'l''utente amministratore ha inserito email e password e cerca di effettuare il login', 'l''utente amministratore visualizza un errore di password non corretta', '', '', '', ''),
('UC4.4', 'UC4', 'Visualizzazione messaggio "Email non trovata"', 'l''utente amministratore sta cercando di effettuare il login presso l''area amministrativa ma nessun email corrispondente a quella inserita Ã¨ stata trovata', 'extension', 'l''utente amministratore ha inserito email e password e cerca di effettuare il login', 'l''utente amministratore visualizza un errore di email non corretta', '', '', '', ''),
('UC5', NULL, 'Conversazione', 'l''ospite e il sistema cominciano ad interagire con una serie di domande e risposte', '', 'l''utente Ã¨ correttamente identificato nel sistema come ospite', 'il sistema ha posto le dovute domande all''ospite', '', '', '', ''),
('UC5.1', 'UC5', 'Richiesta azienda di appartenenza', 'il sistema chiede all''utente a quale azienda appartiene', '', 'Alexa Ã¨ disponibile e correttamente funzionanete. Slack Ã¨ disponibile e correttamente funzionante. L''utente Ã¨ correttamente identificato come ospite nel sistema', 'il sistema rimane in attesa di una risposta da parte dell''ospite', '', '', '', ''),
('UC5.2', 'UC5', 'Richiesta interlocutore ricercato', 'il sistema chiede all''utente quale persona sta cercando', '', 'Alexa Ã¨ disponibile e correttamente funzionante. Slack Ã¨ disponibile e correttamente funzionante. L''utente Ã¨ correttamente identificato come ospite nel sistema', 'il sistema rimane in attesa di una risposta da parte dell''ospite', '', '', '', ''),
('UC5.3', 'UC5', 'Offerta caffÃ¨', 'il sistema chiede all''utente se desidera un caffÃ¨', '', 'Alexa Ã¨ disponibile e correttamente funzionante. Slack Ã¨ disponibile e correttamente funzionante. L''utente Ã¨ correttamente identificato come ospite nel sistema', 'il sistema rimane in attesa di una risposta da parte dell''ospite', '', '', '', ''),
('UC5.4', 'UC5', 'Richiesta materiale', 'il sistema chiede all''utente se necessita del materiale', '', 'Alexa Ã¨ disponibile e correttamente funzionante. Slack Ã¨ disponibile e correttamente funzionante. L''utente Ã¨ correttamente identificato come ospite nel sistema', 'il sistema rimane in attesa di una risposta da parte dell''ospite', '', '', '', ''),
('UC5.5', 'UC5', 'Intrattenimento', 'il sistema propone all''utente una lista di argomenti con il quale interagire', '', 'Alexa Ã¨ disponibile e correttamente funzionante. Slack Ã¨ disponibile e correttamente funzionante. L''utente Ã¨ correttamente identificato come ospite nel sistema', 'il sistema rimane in attesa di una risposta da parte dell''ospite', '', '', '', ''),
('UC5.5.1', 'UC5.5', 'Meteo', 'il sistema chiede all''utente una localitÃ , e ne dice poi il meteo attuale', '', 'l''utente ha indicato al sistema di voler proseguire con la sezione di intrattenimento', 'il sistema ha restituito all''ospite il meteo corrente', '', '', '', ''),
('UC5.5.2', 'UC5.5', 'News', 'il sistema interagisce con l''utente elencando alcune news generiche piÃ¹ recenti', '', 'l''utente ha indicato al sistema di voler proseguire con la sezione di intrattenimento', 'il sistema ha restituito all''ospite una news', '', '', '', ''),
('UC5.5.3', 'UC5.5', 'Barzelette', 'il sistema interagisce con l''utente raccontando qualche barzelletta', '', 'l''utente ha indicato al sistema di voler proseguire con la sezione di intrattenimento', 'il sistema ha restituito all''ospite una barzelletta', '', '', '', ''),
('UC5.6', 'UC5.1', 'Visualizza suggerimenti azienda', 'il sistema visualizza all''utente una lista con le possibili aziende di appartenenza se l''utente si Ã¨ giÃ  presentato in passato', 'inclusion', 'il sistema ha chiesto all''ospite a quale azienda appartiene', 'il sistema rimane in attesa di una risposta a schermo da parte dell''ospite', '', '', '', ''),
('UC6', NULL, 'Logout', 'un utente amministratore correttamente loggato nel sistema come Admin o Super Admin puÃ² effettuare il logout', '', 'un utente amministratore Ã¨ correttamente loggato nel sistema come Admin o Super Admin', 'un utente amministratore non è più loggato nel sistema', '', '', '', ''),
('UC7', NULL, 'Gestione pannello Admin', 'l''Admin puÃ² gestire il pannello dell''area amministrativa', '', 'l''utente amministratore Ã¨ correttamente loggato come Admin nel sistema', 'l''Admin ha correttamente usufruito delle funzionalitÃ  messe a disposizione dal sistema', '', '', '', ''),
('UC7.1', 'UC7', 'Gestione ospiti', 'l''Admin puÃ² gestire gli ospiti presenti nel sistema', '', 'l''utente amministratore Ã¨ correttamente loggato come Admin nel sistema e vuole gestire gli ospiti', 'l''utente amministratore Ã¨ riuscito a gestire correttamente gli ospiti', '', '', '', ''),
('UC7.1.1', 'UC7.1', 'Rinomina ospite', 'l''Admin puÃ² rinominare un ospite presente nel sistema', '', 'l''utente amministratore vuole rinominare un ospite', 'l''utente amministratore ha correttamente rinominato un ospite', '', '', '', ''),
('UC7.1.2', 'UC7.1', 'Rinomina azienda', 'l''Admin puÃ² rinominare l''azienda relativa ad un ospite, ed allo stesso tempo viene rinominato il relativo canale #azienda su Slack', '', 'Slack Ã¨ disponibile e correttamente funzionante. L''utente amministratore vuole rinominare una azienda', 'l''utente amministratore ha correttamente rinominato un''azienda e il relativo canale #azienda su Slack', '', '', '', ''),
('UC7.1.3', 'UC7.1', 'Visualizza profilo ospite', 'l''Admin puÃ² visualizzare il profilo di un ospite presente nel sistema con le sue relative informazioni quali, ad esempio, se Ã¨ solito a bere un caffÃ¨, se di solito necessita di qualche materiale, e tutte le altre informazioni che il sistema riesce a raccogliere in base alle domande che effettua', '', 'l''utente amministratore vuole visualizzare il profilo di un ospite', 'l''utente amministratore ha correttamente visualizzato il profilo di un ospite', '', '', '', ''),
('UC7.2', 'UC7', 'Gestione domande', 'l''Admin puÃ² gestire le domande che il sistema puÃ² porre all''ospite', '', 'l''utente amministratore Ã¨ correttamente loggato come Admin nel sistema e vuole gestire le domande', 'l''utente amministratore Ã¨ riuscito a gestire correttamente le domande', '', '', '', ''),
('UC7.2.1', 'UC7.2', 'Aggiungi domanda', 'l''Admin puÃ² aggiungere una domanda che il sistema porrÃ  all''ospite', '', 'l''utente amministratore vuole aggiungere una domanda', 'l''utente amministratore ha correttamente aggiunto una domanda', '', '', '', ''),
('UC7.2.2', 'UC7.2', 'Rimuovi domanda', 'l''Admin puÃ² rimuovere una domanda tra quelle che il sistema porrÃ  all''ospite', '', 'l''utente amministratore vuole rimuovere una domanda', 'l''utente amministratore ha correttamente rimosso una domanda', '', '', '', ''),
('UC7.2.3', 'UC7.2', 'Modifica domanda', 'l''Admin puÃ² modificare una domanda tra quelle che il sistema porrÃ  all''ospite', '', 'l''utente amministratore vuole modificare una domanda', 'l''utente amministratore ha correttamente modificato una domanda', '', '', '', ''),
('UC7.2.4', 'UC7.2', 'Gestione risposte', 'l''Admin puÃ² gestire le risposte che il sistema puÃ² accettare da un ospite in base alla relativa domanda', '', 'l''utente amministratore vuole gestire le risposte', 'l''utente amministratore Ã¨ riuscito a gestire correttamente le risposte', '', '', '', ''),
('UC7.2.4.1', 'UC7.2.4', 'Aggiungi risposta', 'l''Admin puÃ² aggiungere una risposta che il sistema puÃ² accettare', '', 'l''utente amministratore vuole aggiungere una risposta', 'l''utente amministratore ha correttamente aggiunto una risposta', '', '', '', ''),
('UC7.2.4.2', 'UC7.2.4', 'Modifica risposta', 'l''Admin puÃ² modificare una risposta che il sistema puÃ² accettare', '', 'l''utente amministratore vuole modificare una risposta', 'l''utente amministratore ha correttamente modificato una risposta', '', '', '', ''),
('UC7.2.4.3', 'UC7.2.4', 'Rimuovi risposta', 'l''Admin puÃ² rimuovere una risposta che il sistema puÃ² accettare', '', 'l''utente amministratore vuole rimuovere una risposta', 'l''utente amministratore ha correttamente rimosso una risposta', '', '', '', ''),
('UC7.2.4.4', 'UC7.2.4', 'Seleziona ACTION', 'l''Admin puÃ² associare ad una risposta una ACTION predefinita da sistema, selezionandone una tra quelle presenti', '', 'l''utente amministratore vuole associare una ACTION ad una risposta tra quelle disponibili', 'l''utente amministratore ha correttamente associato una ACTION ad una risposta', '', '', '', ''),
('UC7.2.4.5', 'UC7.2.4', 'Modifica testo risposta', 'l''Admin puÃ² modificare il testo della risposta che il sistema porrÃ  all''ospite', '', 'l''utente amministratore vuole modificare il testo della risposta', 'l''utente amministratore Ã¨ riuscito a modificare correttamente il testo della risposta', '', '', '', ''),
('UC7.2.4.6', 'UC7.2.4', 'Modifica domanda successiva', 'l''Admin puÃ² aggiungere o modificare la domanda successiva che il sistema porrÃ all''ospite, selezionandone una dalla lista delle domande presenti nel sistema', '', 'l''utente amministratore vuole aggiungere una domanda successiva alla corrente', 'l''utente amministratore ha correttamente aggiunto una domanda successiva alla corrente', '', '', '', ''),
('UC7.2.5', 'UC7.2', 'Modifica testo domanda base', 'l''Admin puÃ² modificare il testo della domanda base, cioÃ¨ la domanda che verrÃ  posta all''ospite se Ã¨ la sua prima visita', '', 'l''utente amministratore vuole modificare il testo della domanda base', 'l''utente amministratore Ã¨ riuscito a modificare correttamente il testo della domanda', '', '', '', ''),
('UC7.2.6', 'UC7.2', 'Modifica testo domanda ricorrente', 'l''Admin puÃ² modificare il testo della domanda ricorrente, cioÃ¨ la domanda che verrÃ  posta all''ospite se non Ã¨ la sua prima visita', '', 'l''utente amministratore vuole modificare il testo della domanda ricorrente', 'l''utente amministratore Ã¨ riuscito a modificare correttamente il testo della domanda', '', '', '', ''),
('UC7.3', 'UC7', 'Gestione Slack', 'l''Admin puÃ² gestire alcune impostazioni di Slack', '', 'l''utente amministratore Ã¨ correttamente loggato come Admin nel sistema e vuole gestire le impostazioni di Slack', 'l''utente amministratore Ã¨ riuscito a gestire correttamente le impostazioni di Slack', '', '', '', ''),
('UC7.3.1', 'UC7.3', 'Gestione canale #azienda', 'l''Admin puÃ² gestire una lista di interlocutori che verranno aggiunti di default nei canali Slack #azienda che verranno creati', '', 'l''utente amministratore vuole gestire il canale #azienda', 'l''utente amministratore Ã¨ riuscito a gestire correttamente il canale #azienda', '', '', '', ''),
('UC7.3.1.1', 'UC7.3.1', 'Associa interlocutore', 'l''Admin puÃ² associare un interlocutore alla lista tra quelli presente nel sistema', '', 'l''utente amministratore vuole associare un interlocutore ad un canale #azienda', 'l''utente amministratore Ã¨ riuscito ad associare correttamente un interlocutore ad un canale #azienda', '', '', '', ''),
('UC7.3.1.2', 'UC7.3.1', 'Disassocia interlocutore', 'l''Admin puÃ² disassociare un interlocutore tra quelli presenti dalla lista', '', 'l''utente amministratore vuole disassociare un interlocutore ad un canale #azienda', 'l''utente amministratore Ã¨ riuscito a disassociare correttamente un interlocutore ad un canale #azienda', '', '', '', ''),
('UC7.3.2', 'UC7.3', 'Aggiorna lista interlocutori', 'l''Admin puÃ² aggiornare la lista degli interlocutori presenti nel sistema attraverso una richiesta a Slack', '', 'Slack Ã¨ disponibile e correttamente funzionante. L''utente amministratore vuole gestire la lista di interlocutori', 'l''utente amministratore ha correttamente gestito la lista di interlocutori', '', '', '', ''),
('UC7.4', 'UC7', 'Modifica password', 'l''Admin puÃ² modificare e aggiornare la propria password di accesso al sistema', '', 'l''utente amministratore vuole modificare la propria password', 'l''utente amministratore Ã¨ riuscito a modificare correttamente la propria password', '', '', '', ''),
('UC7.4.1', 'UC7.4', 'Visualizzazione messaggio "Errore inserimento vecchia password"', 'il sistema visualizza un messaggio di errore perchÃ© la vecchia password inserita dall''Admin non corrisponde', '', 'l''utente amministratore ha confermato di voler modificare la propria password', 'l''utente amministratore visualizza un messaggio di errore. Il sistema consente all''amministratore di modificare le informazioni inserite', '', '', '', ''),
('UC7.4.2', 'UC7.4', 'Visualizzazione messaggio "Errore nuova password"', 'il sistema visualizza un messaggio di errore perchÃ© la nuova password e la conferma della nuova password non corrispondono', '', 'l''utente amministratore ha confermato di voler modificare la propria password', 'l''utente amministratore visualizza un messaggio di errore. Il sistema consente all''amministratore di modificare le informazioni inserite', '', '', '', ''),
('UC8', NULL, 'Gestione pannello SuperAdmin', 'il Super Admin puÃ² gestire impostazioni extra rispetto ad un Admin normale', '', 'l''utente amministratore Ã¨ correttamente loggato come Super Admin nel sistema', 'il Super Admin ha correttamente usufruito delle funzionalitÃ  avanzata messe a disposizione dal sistema', '', '', '', ''),
('UC8.1', 'UC8', 'Gestione amministratori', 'il Super Admin puÃ² gestire tutti gli altri amministratori registrati nel sistema', '', 'l''utente amministratore Ã¨ correttamente loggato come Super Admin nel sistema e vuole gestire gli amministratori', 'l''utente Super Admin Ã¨ riuscito a gestire correttamente gli amministratori presenti nel sistema', '', '', '', ''),
('UC8.1.1', 'UC8.1', 'Aggiungi Admin', 'il Super Admin puÃ² registrare un nuovo amministratore nel sistema', '', 'l''utente Super Admin vuole aggiungere un nuovo amministratore', 'l''utente Super Admin ha correttamente  aggiunto un nuovo amministratore', '', '', '', ''),
('UC8.1.2', 'UC8.1', 'Modifica Admin', 'il Super Admin puÃ² modificare un amministratore nel sistema', '', 'l''utente Super Admin vuole modificare un amministratore', 'l''utente Super Admin ha correttamente  modificare un amministratore', '', '', '', ''),
('UC8.1.2.1', 'UC8.1', 'Modifica email', 'il Super Admin puÃ² modificare la email di un amministratore nel sistema', '', 'l''utente Super Admin vuole modificare la email di un amministratore', 'l''utente Super Admin ha correttamente  modificato la email di un amministratore', '', '', '', ''),
('UC8.1.2.2', 'UC8.1', 'Modifica password', 'il Super Admin puÃ² modificare la password di un amministratore nel sistema', '', 'l''utente Super Admin vuole modificare la password di un amministratore', 'l''utente Super Admin ha correttamente  modificato la password di un amministratore', '', '', '', ''),
('UC8.1.3', 'UC8.1', 'Rimuovi Admin', 'il Super Admin puÃ² rimuovere un amministratore nel sistema', '', 'l''utente Super Admin vuole rimuovere un amministratore dal sistema', 'l''utente Super Admin ha correttamente  rimosso un amministratore dal sistema', '', '', '', ''),
('UC8.1.4', 'UC8.1', 'Visualizzazione messaggio "Admin giÃ  presente"', 'il sistema visualizza un messaggio di errore perchÃ© il Super Admin cerca di aggiungere un nuovo Admin con email giÃ  esistente al sistema', '', 'il Super Admin ha confermato di voler inserire un nuovo Admin al sistema', 'il sistema visualizza un messaggio di errore per email Admin giÃ  presente, consentendo al Super Admin di poter correggere le informazioni inserite', '', '', '', ''),
('UC9', NULL, 'Visualizzazione messaggio "Slack non raggiungibile"', 'Slack non Ã¨ raggiungibile e viene quindi visualizzato all''utente o all''ospite il relativo messaggio di errore', 'extension', 'il sistema ha elaborato la risposta di un utente o ospite tramite Alexa e la inoltra ad Slack', 'il sistema visualizza un messaggio di errore perchÃ© Slack non Ã¨ raggiungibile, non riuscendo quindi ad inviare il messaggio', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `UsecasesVerbals`
--

CREATE TABLE IF NOT EXISTS `UsecasesVerbals` (
  `usecase` varchar(100) NOT NULL,
  `verbal` date NOT NULL,
  PRIMARY KEY (`usecase`,`verbal`),
  KEY `verbal` (`verbal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ValidationTest`
--

CREATE TABLE IF NOT EXISTS `ValidationTest` (
  `requirement` varchar(100) NOT NULL,
  `test` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `implemented` varchar(15) NOT NULL,
  `satisfied` varchar(15) NOT NULL,
  PRIMARY KEY (`test`),
  KEY `requirement` (`requirement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ValidationTestStep`
--

CREATE TABLE IF NOT EXISTS `ValidationTestStep` (
  `test` varchar(100) NOT NULL,
  `stepNumber` varchar(100) NOT NULL,
  `stepDescription` longtext NOT NULL,
  PRIMARY KEY (`test`,`stepNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Verbals`
--

CREATE TABLE IF NOT EXISTS `Verbals` (
  `date` date NOT NULL,
  `text` longtext,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ActorsInheritance`
--
ALTER TABLE `ActorsInheritance`
  ADD CONSTRAINT `ActorsInheritance_ibfk_1` FOREIGN KEY (`base`) REFERENCES `Actors` (`actor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ActorsInheritance_ibfk_2` FOREIGN KEY (`derivative`) REFERENCES `Actors` (`actor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ActorUsecases`
--
ALTER TABLE `ActorUsecases`
  ADD CONSTRAINT `ActorUsecases_ibfk_1` FOREIGN KEY (`actor`) REFERENCES `Actors` (`actor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ActorUsecases_ibfk_2` FOREIGN KEY (`usecase`) REFERENCES `Usecases` (`usecase`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ClassAttributes`
--
ALTER TABLE `ClassAttributes`
  ADD CONSTRAINT `ClassAttributes_ibfk_1` FOREIGN KEY (`class`, `package`) REFERENCES `Classes` (`class`, `package`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ClassAttributes_ibfk_2` FOREIGN KEY (`type`) REFERENCES `Types` (`type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Classes`
--
ALTER TABLE `Classes`
  ADD CONSTRAINT `Classes_ibfk_1` FOREIGN KEY (`package`) REFERENCES `Packages` (`package`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ClassInheritance`
--
ALTER TABLE `ClassInheritance`
  ADD CONSTRAINT `ClassInheritance_ibfk_1` FOREIGN KEY (`base`) REFERENCES `Classes` (`class`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ClassInheritance_ibfk_2` FOREIGN KEY (`derivative`) REFERENCES `Classes` (`class`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ClassInheritance_ibfk_3` FOREIGN KEY (`basePackage`) REFERENCES `Packages` (`package`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ClassInheritance_ibfk_4` FOREIGN KEY (`derivativePackage`) REFERENCES `Packages` (`package`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ClassMethods`
--
ALTER TABLE `ClassMethods`
  ADD CONSTRAINT `ClassMethods_ibfk_1` FOREIGN KEY (`class`, `package`) REFERENCES `Classes` (`class`, `package`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ClassMethods_ibfk_2` FOREIGN KEY (`returnType`) REFERENCES `Types` (`type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ClassMethodsParams`
--
ALTER TABLE `ClassMethodsParams`
  ADD CONSTRAINT `ClassMethodsParams_ibfk_1` FOREIGN KEY (`class`, `package`, `signature`, `returnType`) REFERENCES `ClassMethods` (`class`, `package`, `signature`, `returnType`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ClassMethodsParams_ibfk_2` FOREIGN KEY (`paramType`) REFERENCES `Types` (`type`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ClassMethodsParams_ibfk_3` FOREIGN KEY (`returnType`) REFERENCES `Types` (`type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ClassRelations`
--
ALTER TABLE `ClassRelations`
  ADD CONSTRAINT `ClassRelations_ibfk_1` FOREIGN KEY (`classStart`) REFERENCES `Classes` (`class`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ClassRelations_ibfk_2` FOREIGN KEY (`packageStart`) REFERENCES `Packages` (`package`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ClassRelations_ibfk_3` FOREIGN KEY (`classEnd`) REFERENCES `Classes` (`class`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ClassRelations_ibfk_4` FOREIGN KEY (`packageEnd`) REFERENCES `Packages` (`package`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `IntegrationTest`
--
ALTER TABLE `IntegrationTest`
  ADD CONSTRAINT `IntegrationTest_ibfk_1` FOREIGN KEY (`package`) REFERENCES `Packages` (`package`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `PackageInteractions`
--
ALTER TABLE `PackageInteractions`
  ADD CONSTRAINT `PackageInteractions_ibfk_1` FOREIGN KEY (`packageA`) REFERENCES `Packages` (`package`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PackageInteractions_ibfk_2` FOREIGN KEY (`packageB`) REFERENCES `Packages` (`package`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Packages`
--
ALTER TABLE `Packages`
  ADD CONSTRAINT `Packages_ibfk_1` FOREIGN KEY (`dad`) REFERENCES `Packages` (`package`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `PackagesRequirements`
--
ALTER TABLE `PackagesRequirements`
  ADD CONSTRAINT `PackagesRequirements_ibfk_1` FOREIGN KEY (`package`) REFERENCES `Packages` (`package`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PackagesRequirements_ibfk_2` FOREIGN KEY (`requirement`) REFERENCES `Requirements` (`requirement`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Requirements`
--
ALTER TABLE `Requirements`
  ADD CONSTRAINT `Requirements_ibfk_1` FOREIGN KEY (`dad`) REFERENCES `Requirements` (`requirement`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Requirements_ibfk_2` FOREIGN KEY (`source`) REFERENCES `RequirementSources` (`source`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `RequirementsClasses`
--
ALTER TABLE `RequirementsClasses`
  ADD CONSTRAINT `RequirementsClasses_ibfk_1` FOREIGN KEY (`requirement`) REFERENCES `Requirements` (`requirement`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RequirementsClasses_ibfk_2` FOREIGN KEY (`class`, `package`) REFERENCES `Classes` (`class`, `package`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `RequirementsUsecases`
--
ALTER TABLE `RequirementsUsecases`
  ADD CONSTRAINT `RequirementsUsecases_ibfk_1` FOREIGN KEY (`requirement`) REFERENCES `Requirements` (`requirement`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RequirementsUsecases_ibfk_2` FOREIGN KEY (`usecase`) REFERENCES `Usecases` (`usecase`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `RequirementsVerbal`
--
ALTER TABLE `RequirementsVerbal`
  ADD CONSTRAINT `RequirementsVerbal_ibfk_1` FOREIGN KEY (`requirement`) REFERENCES `Requirements` (`requirement`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RequirementsVerbal_ibfk_2` FOREIGN KEY (`verbal`) REFERENCES `Verbals` (`date`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SystemTests`
--
ALTER TABLE `SystemTests`
  ADD CONSTRAINT `SystemTests_ibfk_1` FOREIGN KEY (`requirement`) REFERENCES `Requirements` (`requirement`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Types`
--
ALTER TABLE `Types`
  ADD CONSTRAINT `Types_ibfk_1` FOREIGN KEY (`package`) REFERENCES `Packages` (`package`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `UnitTestClassesMethods`
--
ALTER TABLE `UnitTestClassesMethods`
  ADD CONSTRAINT `UnitTestClassesMethods_ibfk_1` FOREIGN KEY (`test`) REFERENCES `UnitTests` (`test`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UnitTestClassesMethods_ibfk_2` FOREIGN KEY (`class`) REFERENCES `Classes` (`class`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UnitTestClassesMethods_ibfk_3` FOREIGN KEY (`package`) REFERENCES `Packages` (`package`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UnitTestClassesMethods_ibfk_4` FOREIGN KEY (`returnType`) REFERENCES `Types` (`type`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UnitTestClassesMethods_ibfk_5` FOREIGN KEY (`class`, `signature`, `returnType`, `package`) REFERENCES `ClassMethods` (`class`, `signature`, `returnType`, `package`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Usecases`
--
ALTER TABLE `Usecases`
  ADD CONSTRAINT `Usecases_ibfk_1` FOREIGN KEY (`dad`) REFERENCES `Usecases` (`usecase`) ON DELETE CASCADE;

--
-- Constraints for table `UsecasesVerbals`
--
ALTER TABLE `UsecasesVerbals`
  ADD CONSTRAINT `UsecasesVerbals_ibfk_1` FOREIGN KEY (`usecase`) REFERENCES `Usecases` (`usecase`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UsecasesVerbals_ibfk_2` FOREIGN KEY (`verbal`) REFERENCES `Verbals` (`date`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ValidationTest`
--
ALTER TABLE `ValidationTest`
  ADD CONSTRAINT `ValidationTest_ibfk_1` FOREIGN KEY (`requirement`) REFERENCES `Requirements` (`requirement`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ValidationTestStep`
--
ALTER TABLE `ValidationTestStep`
  ADD CONSTRAINT `ValidationTestStep_ibfk_1` FOREIGN KEY (`test`) REFERENCES `ValidationTest` (`test`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
