CREATE TABLE subjects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    subject VARCHAR(32) NOT NULL DEFAULT ""
);

CREATE TABLE teachers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fio VARCHAR(128) NOT NULL DEFAULT "",
    tel VARCHAR(18) NOT NULL DEFAULT ""
);

CREATE TABLE classes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    year INTEGER NOT NULL DEFAULT 0,
    letter CHAR(1) NOT NULL DEFAULT ""
);

CREATE TABLE teachers_subjects (
    teacher_id INTEGER NOT NULL DEFAULT 0,
    subject_id INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX teacher_subjects ON teachers_subjects (subject_id);
CREATE INDEX teachers_subject ON teachers_subjects (teacher_id);

CREATE TABLE teachers_classes (
    teacher_id INTEGER NOT NULL DEFAULT 0,
    class_id INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX teachers_class ON teachers_classes (teacher_id);
CREATE INDEX teacher_classes ON teachers_classes (class_id);

CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fio VARCHAR(128) NOT NULL DEFAULT "",
    tel VARCHAR(18) NOT NULL DEFAULT "",
    birthday CHAR(8) NOT NULL DEFAULT "",
    address TEXT NOT NULL DEFAULT "",
    class_id INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX students_list ON students (class_id);