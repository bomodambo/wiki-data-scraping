INSERT INTO universities (country, university_name, founded, type, enrollment, link)
VALUES (%s, %s, %s, %s, %s, %s) 
ON CONFLICT(country, university_name) DO UPDATE
SET
    founded=EXCLUDED.founded,
    type=EXCLUDED.type,
    enrollment=EXCLUDED.enrollment,
    link=EXCLUDED.link;