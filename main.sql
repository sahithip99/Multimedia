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
    
    
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('2234','8776','Hey Brother','4.37','Pop','Permit','0001',null);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('2344','9876','Dancing Queen',2.30,'Pop','Permit','0002',8800);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('3336','3736','Rock and Roll',5.45,'Rock','Permit','0003',null);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('3000','8773','Dance Beats',6.00,'Dance','Permit','0004',7000);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('2000','6660','Silent Night',3.00,'Pop','Permit','0005',null);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('1000','6630','Bohemian Rapsody',3.20,'Rock','No','0006',null);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('2019','6660','O Holy Night',4.00,'Pop','Permit','0007',null);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('1300','6830','Bad Guy',3.40,'Rap','No','0008','5002');
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('1560','6830','Goodbyes',2.00,'Rap','No','0009',null);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('1450','6830','Bury a Friend',6.00,'Rap','Permit','0010',null);
INSERT into Song(Song_ID,Album_ID,Song_Title,Song_Length,Genre,Download_Permit,File_ID,Feat_Singer_ID) values('1250','6830','Senorita',2.30,'Rap','Permit','0011',null);
 
INSERT ALL
	INTO Songby(Singer_ID, Song_ID, Album_ID)
	Values('9004','2234','8776')
	INTO Songby(Singer_ID, Song_ID, Album_ID)
	Values('5674','2344','9876')
	INTO Songby(Singer_ID, Song_ID, Album_ID)
	Values('7804','3336','3736')
	INTO Songby(Singer_ID, Song_ID, Album_ID)
	Values('6768','3000','8773')
	INTO Songby(Singer_ID, Song_ID, Album_ID)
	Values('7078','2000','6660')
	INTO Songby(Singer_ID, Song_ID, Album_ID)
	Values('6000','1000','6630')
	INTO Songby(Singer_ID, Song_ID, Album_ID)
	Values('7078','2019','6660')
	INTO Songby(Singer_ID, Song_ID, Album_ID)
	Values('6001','1300','6830')
	INTO Songby(Singer_ID, Song_ID, Album_ID)
	Values('5300','1560','6830')
	INTO Songby(Singer_ID, Song_ID, Album_ID)
	Values('6001','1450','6830')
	INTO Songby(Singer_ID, Song_ID, Album_ID)
	Values('1250','1250','6830')
Select * from DUAL;

INSERT into Featured_Artist(Feat_Singer_ID,Feat_Artist_FName,Feat_Artist_LName) values('8800','Benny','Anderson');
INSERT into Featured_Artist(Feat_Singer_ID,Feat_Artist_FName,Feat_Artist_LName) values('5002','Keke','Palmer');
INSERT into Featured_Artist(Feat_Singer_ID,Feat_Artist_FName,Feat_Artist_LName) values('7000','DJ','Dots');
    

INSERT ALL
	INTO Album(Album_ID, Singer_ID, Image_ID, Genre_ID, Producer_ID, Album_Name, Length, Released_Date, Total_Songs, Download_permit)
	VALUES ('6660','7078','0001','0728','8001','Merry Christmas', '9.45', DATE '1994-11-01','2','Permit')
	INTO Album(Album_ID, Singer_ID, Image_ID, Genre_ID, Producer_ID, Album_Name, Length, Released_Date, Total_Songs, Download_permit)
	VALUES ('6830','6001','0002', '0729', '8002','Spotify Top Hits of 2019 Album', '16.57', DATE '2019-12-09', '4','Permit')
	INTO Album(Album_ID, Singer_ID, Image_ID, Genre_ID, Producer_ID, Album_Name, Length, Released_Date, Total_Songs, Download_permit)
	VALUES ('8776','9004','0003','0728','8003', 'True', '3.35', DATE '2013-09-13','1','Permit')
	INTO Album(Album_ID, Singer_ID, Image_ID, Genre_ID, Producer_ID, Album_Name, Length, Released_Date, Total_Songs, Download_permit)
	VALUES ('9876','5674','0004','0728','8006','Dancing Queen','5.43',DATE '2018-08-28','1','Permit')
	INTO Album(Album_ID, Singer_ID, Image_ID, Genre_ID, Producer_ID, Album_Name, Length, Released_Date, Total_Songs, Download_permit)
	VALUES ('3736','7804','0005', '0730','8004','Always on My Mind','3.58',DATE '1972-03-29','1','No')
	INTO Album(Album_ID, Singer_ID, Image_ID, Genre_ID, Producer_ID, Album_Name, Length, Released_Date, Total_Songs, Download_permit)
	VALUES('8773','5674','0006','0731','8007','Dance Beats','4.12',DATE '2014-05-13','1','Permit')
	INTO Album(Album_ID, Singer_ID, Image_ID, Genre_ID, Producer_ID, Album_Name, Length, Released_Date, Total_Songs, Download_permit)
	VALUES('6630','6000','0007','0730','8005','A Night at the Opera','5.55',DATE '1975-11-21','1','Permit')
SELECT * from DUAL;

INSERT ALL 
	INTO CD_Image(image_ID,Image_Link)
	Values ('0001','Link to Merry Christmas Image')
	INTO CD_Image(image_ID,Image_Link)
	Values ('0002','Link to Spotify Top Hits Image')
	INTO CD_Image(image_ID,Image_Link)
	Values ('0003','Link to True Image')
	INTO CD_Image(image_ID,Image_Link)
	Values ('0004','Link to Dancing Queen Image')
	INTO CD_Image(image_ID,Image_Link)
	Values ('0005','Link to Always on my Mind Image')
	INTO CD_Image(image_ID,Image_Link)
	Values ('0006','Link to Dance Beats Image')
	INTO CD_Image(image_ID,Image_Link)
	Values ('0007','Link to A Night at the Opera Image')
SELECT * from DUAL;

INSERT ALL
	INTO Genre(Genre_ID,Genre_Name)
	Values('0728','Pop')
	INTO Genre(Genre_ID,Genre_Name)
	Values('0729','Rap')
	INTO Genre(Genre_ID,Genre_Name)
	Values('0730','Rock')
	INTO Genre(Genre_ID,Genre_Name)
	Values('0731','Dance')
SELECT * from DUAL;

INSERT ALL 
	INTO Producer(Producer_ID,Album_ID,Producer_Name)
	Values('8001','6660','Columbia Records')
	INTO Producer(Producer_ID,Album_ID,Producer_Name)
	Values('8002','6830','Spotify')
	INTO Producer(Producer_ID,Album_ID,Producer_Name)
	Values('8003','8776','Avicii Production')
	INTO Producer(Producer_ID,Album_ID,Producer_Name)
	Values('8004','3736','Sun Recordings')
	INTO Producer(Producer_ID,Album_ID,Producer_Name)
	Values('8005','6630','EMI')
	INTO Producer(Producer_ID,Album_ID,Producer_Name)
	Values('8006','9876','Cher Production')
	INTO Producer(Producer_ID,Album_ID,Producer_Name)
	Values('8007','8773','DJ Beat Recordings')
SELECT * from DUAL;




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
	

	
