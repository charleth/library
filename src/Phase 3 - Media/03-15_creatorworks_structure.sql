USE library;

DROP TABLE IF EXISTS creatorworks;

CREATE TABLE creatorworks
(
    works_ID INTEGER,
        FOREIGN KEY creatorworks_works_FK (works_ID) REFERENCES works(works_ID),
    creator_ID INTEGER,
        FOREIGN KEY creatorworks_creator_ID (creator_ID) REFERENCES creator(creator_ID),
    job_ID INTEGER,
        FOREIGN KEY creatorworks_job_ID (job_ID) REFERENCES job(job_ID),
    ordinal INTEGER
);

