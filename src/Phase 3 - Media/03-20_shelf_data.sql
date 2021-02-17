USE library;

INSERT INTO shelf VALUES
(
    NULL,
    'New Arrivals',
    1
),
(
    NULL,
    'Recommendations',
    1
),
(
    NULL,
    'Gothic Horror',
    2
),
(
    NULL,
    'Lovecraft and Friends',
    2
),
(
    NULL,
    'Horror',
    2
),
(
    NULL,
    'Python',
    3
),
(
    NULL,
    'Linux',
    3
),
(
    NULL,
    'Cybersecurity',
    3
);

select designation as 'Regal',
       room.title as 'Raum'
       from shelf, room
    WHERE shelf.room_ID = room.room_ID;