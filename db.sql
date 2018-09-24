--
-- Файл сгенерирован с помощью SQLiteStudio v3.2.1 в Пн сен 24 00:08:27 2018
--
-- Использованная кодировка текста: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: Author
CREATE TABLE Author (id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE, name STRING UNIQUE ON CONFLICT ROLLBACK);

-- Таблица: book
CREATE TABLE book (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, "ISBN-10" TEXT, Year INTEGER, Pages INTEGER, Language INTEGER REFERENCES Language (id), "File size" STRING, descript TEXT, cover TEXT);

-- Таблица: book_author
CREATE TABLE book_author (author INTEGER REFERENCES Author (id), book INTEGER REFERENCES book (id));

-- Таблица: file
CREATE TABLE file (id INTEGER PRIMARY KEY AUTOINCREMENT, book INTEGER REFERENCES book (id), file_format INTEGER REFERENCES File_format (id), url STRING, name STRING, download BOOLEAN DEFAULT (0));

-- Таблица: File_format
CREATE TABLE File_format (id INTEGER PRIMARY KEY AUTOINCREMENT, name STRING UNIQUE ON CONFLICT ROLLBACK);

-- Таблица: Language
CREATE TABLE Language (id INTEGER PRIMARY KEY AUTOINCREMENT, name STRING UNIQUE ON CONFLICT ROLLBACK);

-- Таблица: Publisher
CREATE TABLE Publisher (id INTEGER PRIMARY KEY AUTOINCREMENT, name STRING UNIQUE ON CONFLICT ROLLBACK);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
