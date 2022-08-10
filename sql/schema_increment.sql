BEGIN;

CREATE TABLE IF NOT EXISTS student (
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50) NOT NULL,
  surname VARCHAR(60) NOT NULL,
  birthday DATE,
  gender BOOLEAN
);

CREATE TABLE IF NOT EXISTS subject (
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(30) NOT NULL,
  credits SMALLINT,
  optional BOOLEAN DEFAULT false
);

CREATE TABLE IF NOT EXISTS teacher (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(60) NOT NULL,
    degree VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS curriculum (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    validity DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS course (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    curricular_period DATE,
    id_teacher INTEGER,
    id_subject_curriculum INTEGER
);

CREATE TABLE IF NOT EXISTS subject_curriculum (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    semester SMALLINT,
    id_curriculum INTEGER,
    id_subject INTEGER
);

CREATE TABLE IF NOT EXISTS enrollment (
    grade NUMERIC(4,2),
    id_student INTEGER,
    id_course INTEGER
);

ALTER TABLE IF EXISTS enrollment
    ADD CONSTRAINT fk_student
        FOREIGN KEY (id_student)
        REFERENCES student(id)
        ON DELETE CASCADE;

ALTER TABLE IF EXISTS enrollment
    ADD CONSTRAINT fk_course
        FOREIGN KEY (id_course)
        REFERENCES course (id)
        ON DELETE CASCADE;

ALTER TABLE IF EXISTS course
    ADD CONSTRAINT fk_teacher
        FOREIGN KEY (id_teacher)
        REFERENCES teacher(id)
        ON DELETE CASCADE;

ALTER TABLE IF EXISTS course
    ADD CONSTRAINT fk_subject_curriculum
        FOREIGN KEY (id_subject_curriculum)
        REFERENCES subject_curriculum(id)
        ON DELETE CASCADE;

ALTER TABLE IF EXISTS subject_curriculum
    ADD CONSTRAINT fk_subject
        FOREIGN KEY (id_subject)
        REFERENCES subject(id)
        ON DELETE CASCADE;

ALTER TABLE IF EXISTS subject_curriculum
    ADD CONSTRAINT fk_curriculum
        FOREIGN KEY (id_curriculum)
        REFERENCES curriculum(id)
        ON DELETE CASCADE;

END;