USE library;

/* show genres and their subgenres */
SELECT genre.genre_ID,
       genre.title AS Genre,
       subgenre.subgenre_ID,
       subgenre.title AS Subgenre
FROM genre, subgenre
WHERE genre.genre_ID = subgenre.genre_ID;

# Show Subgenres for 'Computer Technology'
SELECT subgenre.title AS 'Computer Technology: Subgenres'
FROM genre, subgenre
WHERE genre.genre_ID = subgenre.genre_ID AND
        genre.title = 'computer technology';

# Show number of copies, available languages and formats for each Book
SELECT
    works.title AS 'Title',
    GROUP_CONCAT(CONCAT(creator.firstname, ' ', creator.lastname)) AS 'Author(s)',
    GROUP_CONCAT(DISTINCT languages.language) AS 'Languages',
    GROUP_CONCAT(DISTINCT formatting.designation) AS 'Formats',
    COUNT(DISTINCT exemplar.exemplar_ID) AS 'Copies available'

FROM works, languages, formatting, creatorworks
    LEFT JOIN exemplar
        ON exemplar.works_ID = creatorworks.works_ID
    LEFT JOIN creator
        ON creatorworks.creator_ID = creator.creator_ID
WHERE creatorworks.job_ID = 1 &&
      exemplar.works_ID = works.works_ID &&
      exemplar.languages_ID = languages.languages_ID &&
      exemplar.formatting_ID = formatting.formatting_ID &&
      works.works_ID = creatorworks.works_ID
GROUP BY works.works_ID;

# Show shelves in rooms
SELECT
    room.title AS 'Room',
    shelf.shelf_ID,
    shelf.designation AS 'Shelf'
FROM shelf, room
WHERE shelf.room_ID = room.room_ID;

# Show exemplars + titles (useful for sorting stuff on shelves)
SELECT exemplar_ID, works.title FROM exemplar, works
WHERE exemplar.works_ID = works.works_ID;

# Show rooms, shelves and exemplars on shelves (incl. languages, formats, copies available)

SELECT
    room.title AS 'Room',
    shelf.designation AS 'Shelf',
    GROUP_CONCAT (DISTINCT works.title) AS 'Title',
    GROUP_CONCAT(DISTINCT CONCAT(creator.firstname, ' ', creator.lastname)) AS 'Author(s)',
    GROUP_CONCAT(DISTINCT languages.language) AS 'Languages',
    GROUP_CONCAT(DISTINCT formatting.designation) AS 'Formats',
    COUNT(DISTINCT exemplar.exemplar_ID) AS 'Copies available'

FROM works, languages, formatting, shelfexemplar, room, shelf, creatorworks
                                       LEFT JOIN exemplar
                                                 ON exemplar.works_ID = creatorworks.works_ID
                                       LEFT JOIN creator
                                                 ON creatorworks.creator_ID = creator.creator_ID
WHERE creatorworks.job_ID = 1 &&
      exemplar.works_ID = works.works_ID &&
      exemplar.languages_ID = languages.languages_ID &&
      exemplar.formatting_ID = formatting.formatting_ID &&
      works.works_ID = creatorworks.works_ID &&
      shelf.room_ID = room.room_ID &&
      shelfexemplar.shelf_ID = shelf.shelf_ID &&
      shelfexemplar.exemplar_ID = exemplar.exemplar_ID
GROUP BY works.works_ID;

