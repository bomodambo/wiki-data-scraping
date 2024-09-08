DROP TABLE IF EXISTS universities;

CREATE TABLE universities(
        id BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
        country VARCHAR (255) NOT NULL,
        university_name VARCHAR (255) NOT NULL,
        founded INT NOT NULL,
        `type` VARCHAR (255) NOT NULL,
        enrollment BIGINT NOT NULL,
        link VARCHAR (255) NOT NULL,
        CONSTRAINT unique_combination UNIQUE(country, university_name)
);