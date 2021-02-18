USE library;

# Show book titles, creator names, creator jobs and job ordinal.
SELECT
    works.works_ID,
    works.title,
    creator.firstname,
    creator.lastname,
    job.title,
    creatorworks.ordinal
FROM    creatorworks, works, creator, job
WHERE
            works.works_ID = creatorworks.works_ID &&
            creator.creator_ID = creatorworks.creator_ID &&
            job.job_ID = creatorworks.job_ID;

# Show all the authors of one work
SELECT
    works.works_ID,
    works.title,
    works.subtitle,
    GROUP_CONCAT(CONCAT(creator.firstname, ' ', creator.lastname)) AS author_names,
    GROUP_CONCAT(creator.creator_ID) as author_IDs
FROM works
         LEFT JOIN creatorworks
                   ON works.works_ID = creatorworks.works_ID
         LEFT JOIN creator
                   ON creatorworks.creator_ID = creator.creator_ID
WHERE creatorworks.job_ID = 1
GROUP BY works.works_ID;