DROP TABLE IF EXISTS movies.reviews;

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

CREATE INDEX ix_reviews_titleid ON movies.reviews (Container, TitleID);
