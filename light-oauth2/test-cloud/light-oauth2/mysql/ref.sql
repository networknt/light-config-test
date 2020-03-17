DROP DATABASE IF EXISTS ref;
CREATE DATABASE ref;

GRANT ALL PRIVILEGES ON ref.* TO 'mysqluser'@'%' WITH GRANT OPTION;

USE ref;

DROP table IF EXISTS ref_table;
DROP table IF EXISTS ref_value;
DROP table IF EXISTS value_locale;
DROP table IF EXISTS relation_type;
DROP table IF EXISTS relation;


CREATE TABLE ref_table (
  table_id             VARCHAR(160) NOT NULL,
  table_name           VARCHAR(80) NOT NULL,
  table_desc           VARCHAR(1024) NULL,
  host                 VARCHAR(32) NULL,
  active               VARCHAR(1) NOT NULL DEFAULT 'Y',
  editable             VARCHAR(1) NOT NULL DEFAULT 'Y',
  common               VARCHAR(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY(table_id)
);


CREATE TABLE ref_value (
  value_id              VARCHAR(160) NOT NULL,
  table_id              VARCHAR(160) NOT NULL,
  value_code            VARCHAR(80) NOT NULL,
  start_time            TIMESTAMP NULL,
  end_time              TIMESTAMP NULL,
  display_order         INT,
  active                VARCHAR(1) NOT NULL,
  PRIMARY KEY(value_id)
);


CREATE TABLE value_locale (
  value_id              VARCHAR(160) NOT NULL,
  language              VARCHAR(2) NOT NULL,
  value_desc            VARCHAR(256) NULL,
  PRIMARY KEY(value_id,language)
);



CREATE TABLE relation_type (
  relation_id           VARCHAR(10) NOT NULL,
  relation_name         VARCHAR(32) NOT NULL,
  relation_desc         VARCHAR(256) NOT NULL,
  PRIMARY KEY(relation_id)
);



CREATE TABLE relation (
  relation_id           VARCHAR(10) NOT NULL,
  value_id_from         VARCHAR(160) NOT NULL,
  value_id_to           VARCHAR(160) NOT NULL,
  PRIMARY KEY(relation_id, value_id_from, value_id_to)
);

INSERT INTO ref_table(table_id, table_name, table_desc, host) values ('country', 'country', 'ISO country', 'net.lightapi');
INSERT INTO ref_table(table_id, table_name, table_desc, host) values ('province', 'province', 'Province or State', 'net.lightapi');
INSERT INTO ref_table(table_id, table_name, table_desc, host) values ('city', 'city', 'City', 'net.lightapi');
INSERT INTO ref_table(table_id, table_name, table_desc, host) values ('language', 'language', 'Language', 'net.lightapi');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Canada', 'country', 'CAN', 100, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('USA', 'country', 'USA', 200, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('France', 'country', 'FRA', 300, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('China', 'country', 'CHN', 400, 'Y');


INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('ON', 'province', 'ON', 100, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('BC', 'province', 'BC', 200, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('NY', 'province', 'NY', 300, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Orleanais', 'province', 'Orleanais', 400, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Liaoning', 'province', 'Liaoning', 500, 'Y');


INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Toronto', 'city', 'Toroton', 100, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Mississauga', 'city', 'Mississauga', 200, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Vancouver', 'city', 'Vancouver', 300, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('New York City', 'city', 'New York City', 400, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Orleans', 'city', 'Orleans', 500, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Dalian', 'city', 'Dalian', 600, 'Y');


-- country
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Canada', 'en', 'Canada');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Canada', 'fr', 'Canada');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Canada', 'zh', '加拿大');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('USA', 'en', 'USA');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('USA', 'fr', 'USA');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('USA', 'zh', '美国');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('France', 'en', 'France');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('France', 'fr', 'France');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('France', 'zh', '法国');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('China', 'en', 'China');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('China', 'fr', 'Chine');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('China', 'zh', '中国');

-- province
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('ON', 'en', 'Ontario');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('ON', 'fr', 'Ontario');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('ON', 'zh', '安大略省');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('BC', 'en', 'British Columbia');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('BC', 'fr', 'British Columbia');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('BC', 'zh', '不列颠哥伦比亚省');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NY', 'en', 'NY');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NY', 'fr', 'NY');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NY', 'zh', '纽约州');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Orleanais', 'en', 'Orléanais');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Orleanais', 'fr', 'Orléanais');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Orleanais', 'zh', '奥尔良');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Liaoning', 'en', 'Liaoning');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Liaoning', 'fr', 'Liaoning');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Liaoning', 'zh', '辽宁');

-- city
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Toronto', 'en', 'Toronto');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Toronto', 'fr', 'Toronto');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Toronto', 'zh', '多伦多');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Mississauga', 'en', 'Mississauga');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Mississauga', 'fr', 'Mississauga');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Mississauga', 'zh', '密西沙加');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Vancouver', 'en', 'Vancouver');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Vancouver', 'fr', 'Vancouver');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Vancouver', 'zh', '温哥华');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('New York City', 'en', 'New York City');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('New York City', 'fr', 'New York City');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('New York City', 'zh', '纽约市');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Orleans', 'en', 'Orleans');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Orleans', 'fr', 'Orleans');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Orleans', 'zh', '奥尔良');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Dalian', 'en', 'Dalian');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Dalian', 'fr', 'Dalian');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Dalian', 'zh', '大连');

-- relation type
INSERT INTO relation_type(relation_id, relation_name, relation_desc) VALUES ('ctry-prov', 'country-province', 'country province dropdown');
INSERT INTO relation_type(relation_id, relation_name, relation_desc) VALUES ('prov-city', 'province-city', 'province city dropdown');

-- relation
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'Canada', 'ON');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'Canada', 'BC');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'NY');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'France', 'Orleanais');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'China', 'Liaoning');

INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Toronto');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Mississauga');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'BC', 'Vancouver');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'NY', 'New York City');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'Orleanais', 'Orleans');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'Liaoning', 'Dalian');




