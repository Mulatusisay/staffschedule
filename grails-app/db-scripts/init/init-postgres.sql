CREATE ROLE mulatu LOGIN ENCRYPTED PASSWORD 'md5f0013792c6394927b13ca0085664bcb5'
VALID UNTIL 'infinity';

CREATE DATABASE etdb
 WITH ENCODING='UTF8'
      OWNER=mulatu
      CONNECTION LIMIT=-1;