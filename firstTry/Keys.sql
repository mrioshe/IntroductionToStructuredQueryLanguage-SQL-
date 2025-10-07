CREATE TABLE Artist(
    artist_id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY(artist_id)
) ENGINE = InnoDB;

CREATE TABLE Album(

    album_id INTEGER NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    artist_id INTEGER,
    PRIMARY KEY (album_id),
    INDEX USING BTREE (title),

    CONSTRAINT FOREIGN KEY (artist_id)
        REFERENCES Artist (artist_id)
        ON  DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE Genre (
    genre_id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY(genre_id),
    INDEX USING BTREE(name)
) ENGINE = innoDB;

CREATE TABLE Track (
    track_id INTEGER NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    len INTEGER,
    rating INTEGER,
    count INTEGER,
    album_id INTEGER,
    genre id INTEGER,
    PRIMARY KEY (track_id),
    INDEX USING BTREE (title),

    CONSTRAINT FOREIGN KEY (album_id) REFERENCIES Album (album_id)
        ON DELETE CASCADE ON UPDATE CASCADE,

    ONSTRAINT FOREIGN KEY (genre_id) REFERENCIES Genre (genre_id)
        ON DELETE CASCADE ON UPDATE CASCADE,    

) ENGINE = InnoDB;