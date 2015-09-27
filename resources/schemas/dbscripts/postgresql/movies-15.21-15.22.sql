DROP TABLE IF EXISTS movies.episodes;
DROP TABLE IF EXISTS movies.titles;
DROP TABLE IF EXISTS movies.tomatoes;
DROP TABLE IF EXISTS movies.reviews;
DROP TABLE IF EXISTS movies.genre;
DROP TABLE IF EXISTS movies.country;


CREATE TABLE movies.genre
(
	Genre VARCHAR(100),
	CONSTRAINT pk_genre PRIMARY KEY (Genre)
);


CREATE TABLE movies.country
(
	Code VARCHAR(10),
	Country VARCHAR(100),
	CONSTRAINT pk_country PRIMARY KEY (Country)
);


CREATE TABLE movies.episodes
(
	ID INTEGER NOT NULL,
	imdbID VARCHAR(20),
	Title VARCHAR(8000),
	Year INTEGER,
	Rating VARCHAR(20),
	Runtime VARCHAR(20),
	Genre VARCHAR(200),
	Released TIMESTAMP,
	Season INTEGER NULL,
	Episode INTEGER NULL,
	SeriesID INTEGER NULL,
	Director VARCHAR(1000),
	Writer VARCHAR(8000),
	"cast" VARCHAR(1000),
	Metacritic FLOAT,
	imdbRating FLOAT,
	imdbVotes INTEGER,
	Poster VARCHAR(1000),
	Plot TEXT,
	FullPlot TEXT,
	Language VARCHAR(100),
	Country VARCHAR(100),
	Awards VARCHAR(1000),
	lastUpdated TIMESTAMP,

	-- standard labkey columns
	container ENTITYID NOT NULL,
	created TIMESTAMP,
	createdby INTEGER,
	modified TIMESTAMP,
	modifiedby USERID,

	-- dataintegration columns
	diTransformRunId INTEGER NULL,
	diModified TIMESTAMP,

	CONSTRAINT pk_episodes PRIMARY KEY (Container, ID)
);
CREATE INDEX ix_episodes_title ON movies.episodes (Title);
CREATE INDEX ix_episodes_series ON movies.episodes (SeriesID);


CREATE TABLE movies.titles
(
	ID INTEGER NOT NULL,
	imdbID VARCHAR(20),
	Title VARCHAR(500),
	Year VARCHAR(10),
	Rating VARCHAR(100),
	Runtime VARCHAR(20),
	Genre VARCHAR(100),
	Released TIMESTAMP,
	Director VARCHAR(2000),
	Writer VARCHAR(2000),
	"cast" VARCHAR(1000),
	Metacritic FLOAT,
	imdbRating FLOAT,
	imdbVotes INTEGER,
	Poster VARCHAR(1000),
	Plot TEXT,
	FullPlot TEXT,
	Language VARCHAR(500),
	Country VARCHAR(1000),
	Awards VARCHAR(1000),
	--lastUpdated TIMESTAMP,

	-- standard labkey columns
	container ENTITYID NOT NULL,
	created TIMESTAMP,
	createdby INTEGER,
	modified TIMESTAMP,
	modifiedby USERID,

	-- dataintegration columns
	diTransformRunId INTEGER NULL,
	diModified TIMESTAMP,

	CONSTRAINT pk_titles PRIMARY KEY (ID)
);
CREATE INDEX ix_titles_title ON movies.titles (Container, Title);


CREATE TABLE movies.tomatoes
(
	ID	INTEGER,
	Image	VARCHAR(200),
	Rating	FLOAT,
	Meter	FLOAT,
	Reviews	INTEGER,
	Fresh	INTEGER,
	Rotten	INTEGER,
	Consensus	TEXT(8000),
	userMeter	INTEGER,
	userRating	FLOAT,
	userReviews	INTEGER,
	DVD	DATE,
	BoxOffice	DATE,
	Production	VARCHAR(200),
	Website	VARCHAR(200),
	lastUpdated TIMESTAMP,

	-- standard labkey columns
	container ENTITYID NOT NULL,
	created TIMESTAMP,
	createdby INTEGER,
	modified TIMESTAMP,
	modifiedby USERID,

	-- dataintegration columns
	diTransformRunId INTEGER NULL,
	diModified TIMESTAMP,

	CONSTRAINT pk_tomatoes PRIMARY KEY (Container, ID)
);


CREATE TABLE movies.reviews
(
	ReviewID SERIAL,
	TitleID	INTEGER,
	Rating	INTEGER,
	Review VARCHAR(2000),

	-- standard labkey columns
	container ENTITYID NOT NULL,
	created TIMESTAMP,
	createdby INTEGER,
	modified TIMESTAMP,
	modifiedby USERID,

	-- dataintegration columns
	diTransformRunId INTEGER NULL,
	diModified TIMESTAMP,

	CONSTRAINT pk_reviews PRIMARY KEY (Container, ReviewID)
);
