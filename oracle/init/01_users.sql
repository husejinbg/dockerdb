ALTER SESSION SET CONTAINER=FREEPDB1;

CREATE USER myuser IDENTIFIED BY userpassword;
GRANT CONNECT, RESOURCE TO myuser;
ALTER USER myuser QUOTA UNLIMITED ON USERS;

EXIT;
