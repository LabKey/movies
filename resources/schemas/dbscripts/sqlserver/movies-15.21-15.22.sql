
CREATE TABLE movies.genre
(
	Genre NVARCHAR(100),
	CONSTRAINT pk_genre PRIMARY KEY (Genre)
);


CREATE TABLE movies.country
(
	Code NVARCHAR(10),
	Country NVARCHAR(100),
	CONSTRAINT pk_country PRIMARY KEY (Country)
);


CREATE TABLE movies.episodes
(
	ID INTEGER NOT NULL,
	imdbID NVARCHAR(20),
	Title NVARCHAR(4000),
	Year INTEGER,
	Rating NVARCHAR(20),
	Runtime NVARCHAR(20),
	Genre NVARCHAR(200),
	Released DATETIME,
	Season INTEGER NULL,
	Episode INTEGER NULL,
	SeriesID INTEGER NULL,
	Director NVARCHAR(1000),
	Writer NVARCHAR(4000),
	"cast" NVARCHAR(1000),
	Metacritic FLOAT,
	imdbRating FLOAT,
	imdbVotes INTEGER,
	Poster NVARCHAR(1000),
	Plot TEXT,
	FullPlot TEXT,
	Language NVARCHAR(100),
	Country NVARCHAR(100),
	Awards NVARCHAR(1000),
	lastUpdated DATETIME,

	-- standard labkey columns
	container ENTITYID NOT NULL,
	created DATETIME,
	createdby INTEGER,
	modified DATETIME,
	modifiedby USERID,

	-- dataintegration columns
	diTransformRunId INTEGER NULL,
	diModified DATETIME,

	CONSTRAINT pk_episodes PRIMARY KEY (Container, ID)
);
CREATE INDEX ix_episodes_title ON movies.episodes (Title);
CREATE INDEX ix_episodes_series ON movies.episodes (SeriesID);


CREATE TABLE movies.titles
(
	ID INTEGER NOT NULL,
	imdbID NVARCHAR(20),
	Title NVARCHAR(500),
	Year NVARCHAR(10),
	Rating NVARCHAR(100),
	Runtime NVARCHAR(20),
	Genre NVARCHAR(100),
	Released DATETIME,
	Director NVARCHAR(2000),
	Writer NVARCHAR(2000),
	"cast" NVARCHAR(1000),
	Metacritic FLOAT,
	imdbRating FLOAT,
	imdbVotes INTEGER,
	Poster NVARCHAR(1000),
	Plot TEXT,
	FullPlot TEXT,
	Language NVARCHAR(500),
	Country NVARCHAR(1000),
	Awards NVARCHAR(1000),
	--lastUpdated DATETIME,

	-- standard labkey columns
	container ENTITYID NOT NULL,
	created DATETIME,
	createdby INTEGER,
	modified DATETIME,
	modifiedby USERID,

	-- dataintegration columns
	diTransformRunId INTEGER NULL,
	diModified DATETIME,

	CONSTRAINT pk_titles PRIMARY KEY (ID)
);
CREATE INDEX ix_titles_title ON movies.titles (Container, Title);


CREATE TABLE movies.tomatoes
(
	ID	INTEGER,
	Image	NVARCHAR(200),
	Rating	FLOAT,
	Meter	FLOAT,
	Reviews	INTEGER,
	Fresh	INTEGER,
	Rotten	INTEGER,
	Consensus	NVARCHAR(4000),
	userMeter	INTEGER,
	userRating	FLOAT,
	userReviews	INTEGER,
	DVD	DATE,
	BoxOffice	NVARCHAR(100),
	Production	NVARCHAR(200),
	Website	NVARCHAR(200),
	lastUpdated DATETIME,

	-- standard labkey columns
	container ENTITYID NOT NULL,
	created DATETIME,
	createdby INTEGER,
	modified DATETIME,
	modifiedby USERID,

	-- dataintegration columns
	diTransformRunId INTEGER NULL,
	diModified DATETIME,

	CONSTRAINT pk_tomatoes PRIMARY KEY (Container, ID)
);

GO
