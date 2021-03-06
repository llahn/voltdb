DROP TABLE T IF EXISTS;
DROP TABLE R1 IF EXISTS;
DROP TABLE AAA IF EXISTS;
DROP TABLE COUNT_OUTPUT IF EXISTS;
DROP TABLE TEST_SUM_OUTPUT IF EXISTS;
DROP TABLE BBB IF EXISTS;
DROP TABLE TEST_OUTPUT IF EXISTS;
DROP TABLE CCC IF EXISTS;
DROP TABLE CCCLONGANS IF EXISTS;
DROP TABLE CCCSHORTANS IF EXISTS;
DROP TABLE TEST_ORDER_BY IF EXISTS;
DROP TABLE TEST_JOIN IF EXISTS;
DROP TABLE XXX IF EXISTS;
DROP TABLE RANK_OUTPUT IF EXISTS;
DROP TABLE RANK_DENSE_OUTPUT IF EXISTS;
DROP TABLE P1 IF EXISTS;
DROP TABLE P2 IF EXISTS;
DROP TABLE T1 IF EXISTS;
DROP TABLE T2 IF EXISTS;
DROP TABLE PWEE_WITH_INDEX IF EXISTS;
DROP TABLE IIANSWER IF EXISTS;

CREATE TABLE T (
  A INTEGER,
  B INTEGER,
  C INTEGER
);

CREATE TABLE R1 (
  ID INTEGER NOT NULL,
  TINY INTEGER NOT NULL,
  BIG INTEGER NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE AAA (
  A INTEGER,
  B INTEGER,
  C INTEGER
 );
 
CREATE TABLE COUNT_OUTPUT (
  A INTEGER,
  B INTEGER,
  C INTEGER,
  D INTEGER
 );
 
 CREATE TABLE TEST_SUM_OUTPUT (
  A INTEGER,
  B INTEGER,
  C INTEGER
); 
 CREATE TABLE BBB (
  A INTEGER,
  B INTEGER,
  C INTEGER
 );
 
CREATE TABLE TEST_OUTPUT (
  A INTEGER,
  B INTEGER,
  C INTEGER
);
 
CREATE TABLE CCC (
  ID INTEGER,
  NAME VARCHAR(32),
  DATA VARCHAR(1024)
);

CREATE TABLE CCCLONGANS (
  ID INTEGER,
  NAME VARCHAR(32),
  DATA VARCHAR(1024)
);

CREATE TABLE CCCSHORTANS (
  ID INTEGER,
  NAME VARCHAR(32),
  DATA VARCHAR(1024)
);

CREATE TABLE TEST_ORDER_BY (
  A INTEGER,
  B INTEGER
);

CREATE TABLE TEST_JOIN (
  A   INTEGER,
  B   INTEGER,
  C   INTEGER
);

CREATE TABLE XXX (
  ID INTEGER PRIMARY KEY NOT NULL,
  NAME VARCHAR(32),
  DATA VARCHAR(1024)
);

CREATE TABLE RANK_OUTPUT (
  A INTEGER,
  B INTEGER,
  C INTEGER,
  R INTEGER
);

CREATE TABLE RANK_DENSE_OUTPUT (
  A INTEGER,
  B INTEGER,
  C INTEGER,
  R INTEGER
);

CREATE TABLE T1 (
  ID      BIGINT NOT NULL PRIMARY KEY,
  AAA     INTEGER,
  BBB     INTEGER
);

CREATE TABLE T2 (
  ID      BIGINT NOT NULL,
  AAA     INTEGER,
  BBB     INTEGER
);

CREATE TABLE P1 (
  ID      BIGINT NOT NULL PRIMARY KEY,
  AAA     INTEGER NOT NULL,
  BBB     INTEGER
);
PARTITION TABLE P1 ON COLUMN ID;

CREATE TABLE P2 (
  ID      BIGINT NOT NULL,
  AAA     INTEGER NOT NULL,
  BBB     INTEGER,
);
PARTITION TABLE P2 ON COLUMN ID;
