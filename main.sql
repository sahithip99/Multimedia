CREATE TABLE Song(
	Song_ID INT not null PRIMARY KEY,
	Album_ID INT,
	File_ID INT,
	Feat_Singer_ID INT,
	Song_Title VARCHAR(25),
	Song_Length INT,
	Genre VARCHAR(25),
	Download_Permit VARCHAR(25));


CREATE TABLE Album(
	Album_ID INT not null PRIMARY KEY,
	Singer_ID INT,
	Image_ID INT,
	Genre_ID INT,
	Producer_ID INT,
	Album_Name VARCHAR(30),
	Length INT,
	Released_Date DATE,
	Total_Songs INT,
	Download_Permit VARCHAR(25));

CREATE TABLE Genre(
	Genre_ID INT not null PRIMARY KEY,
	Genre_Name VARCHAR(25));

CREATE TABLE Producer(
	Producer_ID INT not null PRIMARY KEY,
	Album_ID INT,
	Producer_Name VARCHAR(25));


CREATE TABLE Featured_Artist(
	Feat_Singer_ID INT not null PRIMARY KEY,
	Feat_Artist_FName VARCHAR(25),
	Feat_Artist_LName VARCHAR(25));

CREATE TABLE CD_Image(
	Image_ID INT not null Primary Key,
	Image_Link VARCHAR(35));

CREATE TABLE SongBy(
	Song_ID INT not null,
	Singer_ID INT not null,
	Album_ID INT not null,
	PRIMARY KEY(Song_ID, Singer_ID, Album_ID));

CREATE TABLE Singer(
	Singer_ID INT not null PRIMARY KEY,
	Singer_FName VARCHAR(25),
	Singer_LName VARCHAR(25),
	Total_Num_Songs INT,
	Total_Num_Albums INT);

CREATE TABLE MP3_File(
	File_ID INT not null Primary Key,
	File_Size INT);


ALTER TABLE Song
	ADD FOREIGN KEY (File_ID) REFERENCES MP3_File(File_ID);
ALTER TABLE Song
	ADD FOREIGN KEY (Album_ID) REFERENCES Album(Album_ID);
ALTER TABLE Song
	ADD FOREIGN KEY (Feat_Singer_ID) REFERENCES Featured_Artist(Feat_Singer_ID);

ALTER TABLE SongBy
	ADD FOREIGN KEY (Singer_ID) REFERENCES Singer(Singer_ID);
ALTER TABLE SongBy
	ADD FOREIGN KEY (Song_ID) REFERENCES Song(Song_ID);


ALTER TABLE Album
	ADD FOREIGN KEY (Image_ID) REFERENCES CD_Image(Image_ID);
ALTER TABLE Album
	ADD FOREIGN KEY (Singer_ID) REFERENCES Singer(Singer_ID);

ALTER TABLE Album
	ADD FOREIGN KEY (Genre_ID) REFERENCES Genre(Genre_ID);
ALTER TABLE Album
	ADD FOREIGN KEY (Producer_ID) REFERENCES Producer(Producer_ID);




INSERT into MP3_File(File_ID,File_Size) values('0001','32');
INSERT into MP3_File(File_ID,File_Size) values('0002','30');
INSERT into MP3_File(File_ID,File_Size) values('0003','54');
INSERT into MP3_File(File_ID,File_Size) values('0004','67');
INSERT into MP3_File(File_ID,File_Size) values('0005','37');
INSERT into MP3_File(File_ID,File_Size) values('0006','45');
INSERT into MP3_File(File_ID,File_Size) values('0007','54');
INSERT into MP3_File(File_ID,File_Size) values('0008','25');
INSERT into MP3_File(File_ID,File_Size) values('0009','33');
INSERT into MP3_File(File_ID,File_Size) values('00010','31');
INSERT into MP3_File(File_ID,File_Size) values('00011','65');


INSERT into Singer(Singer_ID,Singer_FName,Singer_LName,Total_Num_Songs,Total_Num_Albums) values('9004','Avicii','Bergling','32','1');
INSERT into Singer(Singer_ID,Singer_FName,Singer_LName,Total_Num_Songs,Total_Num_Albums) values('7008','Sarah','Jane','12','3');
INSERT into Singer(Singer_ID,Singer_FName,Singer_LName,Total_Num_Songs,Total_Num_Albums) values('7804','Elvis','Presley','100','8');
INSERT into Singer(Singer_ID,Singer_FName,Singer_LName,Total_Num_Songs,Total_Num_Albums) values('5674','Cher','Sarkisian','22','3');
INSERT into Singer(Singer_ID,Singer_FName,Singer_LName,Total_Num_Songs,Total_Num_Albums) values('7078','Mariah','Carey','60','5');
INSERT into Singer(Singer_ID,Singer_FName,Singer_LName,Total_Num_Songs,Total_Num_Albums) values('6768','DJ','Beat','22','3');
INSERT into Singer(Singer_ID,Singer_FName,Singer_LName,Total_Num_Songs,Total_Num_Albums) values('6000','Queen',null,'22','3');
INSERT into Singer(Singer_ID,Singer_FName,Singer_LName,Total_Num_Songs,Total_Num_Albums) values('6001','Billie','Eilish','20','2');
INSERT into Singer(Singer_ID,Singer_FName,Singer_LName,Total_Num_Songs,Total_Num_Albums) values('5300','Post','Malone','25','3');
INSERT into Singer(Singer_ID,Singer_FName,Singer_LName,Total_Num_Songs,Total_Num_Albums) values('1250','Shawn','Mendes','4','1');
    
    
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('2234','8776','Hey Brother','4.37','Pop','True','0001',null);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('2344','9876','Dancing Queen',2.30,'Pop','True','0002',8800);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('3336','3736','Rock and Roll',5.45,'Rock','True','0003',null);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('3000','8773','DanceFloor',6.00,'Dance','False','0004',7000);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('2000','6660','Silent Night',3.00,'Pop','True','0005',null);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('1000','6630','Bohemian Rapsody',3.20,'Rock','False,'0006',null);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('2019','6660','O Holy Night',4.00,'Pop','True','0007',null);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('1300','6830','Bad Guy',3.40,'Rap','True','0008','5002');
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('1560','6830','Goodbyes',2.00,'Rap','False','0009',null);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('1450','6830','Bury a Friend',6.00,'Rap','True','0010',null);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('1250','6830','Senorita',2.30,'Rap','True','0011',null);
    
INSERT into SongBy(Singer_ID,Song_ID,Album_ID) values('9004','2234','8776');
INSERT into SongBy(Singer_ID,Song_ID,Album_ID) values('7008','2234','5006');
INSERT into SongBy(Singer_ID,Song_ID,Album_ID) values('7804','2234','3637');
INSERT into SongBy(Singer_ID,Song_ID,Album_ID) values('5674','2234','9876');
INSERT into SongBy(Singer_ID,Song_ID,Album_ID) values('7078','2234','6660');
INSERT into SongBy(Singer_ID,Song_ID,Album_ID) values('6768','2234','5006');
INSERT into SongBy(Singer_ID,Song_ID,Album_ID) values('6000','2234','5006');
INSERT into SongBy(Singer_ID,Song_ID,Album_ID) values('6001','2234','6830');
INSERT into SongBy(Singer_ID,Song_ID,Album_ID) values('5300','2344','5007');
INSERT into SongBy(Singer_ID,Song_ID,Album_ID) values('1250','3736','5008');
INSERT into SongBy(Singer_ID,Song_ID,Album_ID) values('7078','8773','5009'); 
    
INSERT into Featured_Artist(Feat_Singer_ID,Feat_Artist_FName,Feat_Artist_LName) values('8800','Benny','Anderson');
INSERT into Featured_Artist(Feat_Singer_ID,Feat_Artist_FName,Feat_Artist_LName) values('5002','Keke','Palmer');
INSERT into Featured_Artist(Feat_Singer_ID,Feat_Artist_FName,Feat_Artist_LName) values('7000','DJ','Dots');


SELECT * FROM Song;