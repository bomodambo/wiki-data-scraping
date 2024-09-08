MERGE INTO universities AS target
USING #staging AS source
ON (source.University = target.university_name AND source.Country = target.country)
WHEN MATCHED THEN 
    UPDATE SET
        target.founded = source.Founded,
        target.type = source.Type,
        target.enrollment = source.Enrollment,
        target.link = source.Link
WHEN NOT MATCHED BY TARGET THEN
    INSERT (country, university_name, founded, type, enrollment, link)
    VALUES (source.Country, source.University, source.Founded, source.Type, source.Enrollment, source.Link);