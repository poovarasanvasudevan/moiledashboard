DROP TABLE IF EXISTS FTP_USER;
CREATE TABLE FTP_USER (
  userid          VARCHAR(64)  NOT NULL PRIMARY KEY,
  userpassword    VARCHAR(64),
  homedirectory   VARCHAR(128) NOT NULL,
  enableflag      BOOLEAN DEFAULT TRUE,
  writepermission BOOLEAN DEFAULT FALSE,
  idletime        INT     DEFAULT 0,
  uploadrate      INT     DEFAULT 0,
  downloadrate    INT     DEFAULT 0,
  maxloginnumber  INT     DEFAULT 0,
  maxloginperip   INT     DEFAULT 0
);
