
CREATE TABLE MP3_File(
	File_ID INT not null Primary Key,
	File_Size INT,
	FOREIGN KEY (File_ID) references MP3_File(File_ID));
	
CREATE TABLE Song(
	Song_ID INT not null,
	Album_ID INT not null,
	File_ID INT,
	Feat_Singer_ID INT,
	Song_Title VARCHAR(25),
	Song_Length INT,
	Genre VARCHAR(25),
	Download_Permit VARCHAR(25),
	PRIMARY KEY(Song_ID, Album_ID),
	FOREIGN KEY (File_ID) references MP3_File(File_ID),
	FOREIGN KEY (Feat_Singer_ID) references Featured_Artist(Feat_Singer_ID)
	);
	CREATE TABLE Album(
	Album_ID INT not null PRIMARY KEY,
	Singer_ID INT,
	Image_ID INT,
	Genre_ID INT,
	Producer_ID INT,
	Album_Name VARCHAR(25),
	Length INT,
	Release_Dare DATE,
	Total_Songs INT,
	Download_Permit VARCHAR(25),
	FOREIGN KEY (Singer_ID) references Singer(Singer_ID),
	FOREIGN KEY (Image_ID) references CD_Image(Image_ID),
	FOREIGN KEY (Genre_ID) references Genre_ID(Genre_ID),
	FOREIGN KEY (Producer_ID) references Producer(Producer_ID)
	);
	
	CREATE TABLE Genre(
	Genre_ID INT not null PRIMARY KEY,
	Genre_Name VARCHAR(25));
	
	CREATE TABLE Producer(
	Producer_ID INT not null PRIMARY KEY,
	Album_ID INT,
	FOREIGN KEY (Album_ID) references Album(Album_ID));
	
	CREATE TABLE Featured_Artist(
	Producer_ID INT not null PRIMARY KEY);
	
	CREATE TABLE CD_Image(
	CD_ID INT not null,
	Image_ID INT not null,
	Album_ID INT,
	PRIMARY KEY (CD_ID, Image_ID)
	);
	
		
	CREATE TABLE Singer(
	Singer_ID INT not null PRIMARY KEY,
	Singer_FName VARCHAR(25),
	Singer_LName VARCHAR(25),
	Total_Num_Songs INT,
	Total_Num_Albums INT
	);
	
	
	CREATE TABLE SongBy(
	Song_ID INT not null,
	Singer_ID INT not null,
	Album_ID INT not null,
	Primary key (Song_ID, Singer_ID, Album_ID),
	FOREIGN KEY (Singer_ID) references Singer(Singer_ID)
	);


	
