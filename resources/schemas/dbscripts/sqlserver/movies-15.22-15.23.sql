--DROP TABLE IF EXISTS movies.reviews;

CREATE TABLE movies.reviews
(
	ReviewID INTEGER IDENTITY(1,1),
	TitleID	INTEGER,
	Rating	INTEGER,
	Review NVARCHAR(2000),

	-- standard labkey columns
	container ENTITYID NOT NULL,
	created DATETIME,
	createdby INTEGER,
	modified DATETIME,
	modifiedby USERID,

	-- dataintegration columns
	diTransformRunId INTEGER NULL,
	diModified DATETIME,

	CONSTRAINT pk_reviews PRIMARY KEY (Container, ReviewID)
);

CREATE INDEX ix_reviews_titleid ON movies.reviews (Container, TitleID);

GO
