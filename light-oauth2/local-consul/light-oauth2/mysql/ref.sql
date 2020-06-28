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
  active                VARCHAR(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY(relation_id, value_id_from, value_id_to)
);

INSERT INTO ref_table(table_id, table_name, table_desc, host) values ('country', 'country', 'ISO country', 'net.lightapi');
INSERT INTO ref_table(table_id, table_name, table_desc, host) values ('province', 'province', 'Province or State', 'net.lightapi');
INSERT INTO ref_table(table_id, table_name, table_desc, host) values ('city', 'city', 'City', 'net.lightapi');
INSERT INTO ref_table(table_id, table_name, table_desc, host) values ('language', 'language', 'Language', 'net.lightapi');



INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('CAN', 'country', 'CAN', 100, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('USA', 'country', 'USA', 200, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('France', 'country', 'FRA', 300, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('China', 'country', 'CHN', 400, 'Y');


INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('ON', 'province', 'ON', 100, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('QC', 'province', 'QC', 200, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('NS', 'province', 'NS', 300, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('NB', 'province', 'NB', 400, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('MB', 'province', 'MB', 500, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('BC', 'province', 'BC', 600, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('PE', 'province', 'PE', 700, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('SK', 'province', 'SK', 800, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('AB', 'province', 'AB', 900, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('NL', 'province', 'NL', 1000, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('NT', 'province', 'NT', 1100, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('YT', 'province', 'YT', 1200, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('NU', 'province', 'NU', 1300, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('AL', 'province', 'AL', 100, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('AK', 'province', 'AK', 200, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('AZ', 'province', 'AZ', 300, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('AR', 'province', 'AR', 400, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('CA', 'province', 'CA', 500, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('CO', 'province', 'CO', 600, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('CT', 'province', 'CT', 700, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('DE', 'province', 'DE', 800, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('DC', 'province', 'DC', 900, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('FL', 'province', 'FL', 1000, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('GA', 'province', 'GA', 1100, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('HI', 'province', 'HI', 1200, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('ID', 'province', 'ID', 1300, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('IL', 'province', 'IL', 1400, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('IN', 'province', 'IN', 1500, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('IA', 'province', 'IA', 1600, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('KS', 'province', 'KS', 1700, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('KY', 'province', 'KY', 1800, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('LA', 'province', 'LA', 1900, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('ME', 'province', 'ME', 2000, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('MD', 'province', 'MD', 2100, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('MA', 'province', 'MA', 2200, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('MI', 'province', 'MI', 2300, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('MN', 'province', 'MN', 2400, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('MS', 'province', 'MS', 2500, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('MO', 'province', 'MO', 2600, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('MT', 'province', 'MT', 2700, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('NE', 'province', 'NE', 2800, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('NV', 'province', 'NV', 2900, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('NH', 'province', 'NH', 3000, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('NJ', 'province', 'NJ', 3100, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('NM', 'province', 'NM', 3200, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('NY', 'province', 'NY', 3300, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('NC', 'province', 'NC', 3400, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('ND', 'province', 'ND', 3500, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('OH', 'province', 'OH', 3600, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('OK', 'province', 'OK', 3700, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('OR', 'province', 'OR', 3800, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('PA', 'province', 'PA', 3900, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('RI', 'province', 'RI', 4000, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('SC', 'province', 'SC', 4100, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('SD', 'province', 'SD', 4200, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('TN', 'province', 'TN', 4300, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('TX', 'province', 'TX', 4400, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('UT', 'province', 'UT', 4500, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('VT', 'province', 'VT', 4600, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('VA', 'province', 'VA', 4700, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('WA', 'province', 'WA', 4800, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('WV', 'province', 'WV', 4900, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('WI', 'province', 'WI', 5000, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('WY', 'province', 'WY', 5100, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Orleanais', 'province', 'Orleanais', 400, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Liaoning', 'province', 'Liaoning', 500, 'Y');


INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Barrie', 'city', 'Barrie', 110, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Brampton', 'city', 'Brampton', 120, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Burlington', 'city', 'Burlington', 130, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Cambridge', 'city', 'Cambridge', 140, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Guelph', 'city', 'Guelph', 150, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Hamilton', 'city', 'Hamilton', 160, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Kingston', 'city', 'Kingston', 170, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Kitchener', 'city', 'Kitchener', 180, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('London', 'city', 'London', 190, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Markham', 'city', 'Markham', 200, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Mississauga', 'city', 'Mississauga', 210, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Oshawa', 'city', 'Oshawa', 220, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Pickering', 'city', 'Pickering', 230, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Richmond Hill', 'city', 'Richmond Hill', 240, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Toronto', 'city', 'Toroton', 250, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Vaughan', 'city', 'Vaughan', 260, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Waterloo', 'city', 'Waterloo', 270, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Vancouver', 'city', 'Vancouver', 300, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('New York City', 'city', 'New York City', 400, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Orleans', 'city', 'Orleans', 500, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('Dalian', 'city', 'Dalian', 600, 'Y');


-- country
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('CAN', 'en', 'Canada');
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
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('QC', 'en', 'Quebec');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NS', 'en', 'Nova Scotia');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NB', 'en', 'New Brunswick');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('MB', 'en', 'Manitoba');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('BC', 'en', 'British Columbia');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('PE', 'en', 'Prince Edward Island');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('SK', 'en', 'Saskatchewan');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('AB', 'en', 'Alberta');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NL', 'en', 'Newfoundland and Labrador');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NT', 'en', 'Northwest Territories');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('YT', 'en', 'Yukon');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NU', 'en', 'Nunavut');

-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('ON', 'fr', 'Ontario');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('ON', 'zh', '安大略省');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('BC', 'fr', 'British Columbia');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('BC', 'zh', '不列颠哥伦比亚省');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('AL', 'en', 'Alabama');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('AK', 'en', 'Alaska');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('AZ', 'en', 'Arizona');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('AR', 'en', 'Arkansas');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('CA', 'en', 'California');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('CO', 'en', 'Colorado');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('CT', 'en', 'Connecticut');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('DE', 'en', 'Delaware');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('DC', 'en', 'District of Columbia');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('FL', 'en', 'Florida');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('GA', 'en', 'Georgia');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('HI', 'en', 'Hawaii');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('ID', 'en', 'Idaho');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('IL', 'en', 'Illinois');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('IN', 'en', 'Indiana');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('IA', 'en', 'Iowa');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('KS', 'en', 'Kansas');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('KY', 'en', 'Kentucky');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('LA', 'en', 'Louisiana');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('ME', 'en', 'Maine');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('MD', 'en', 'Maryland');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('MA', 'en', 'Massachusetts');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('MI', 'en', 'Michigan');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('MN', 'en', 'Minnesota');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('MS', 'en', 'Mississippi');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('MO', 'en', 'Missouri');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('MT', 'en', 'Montana');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NE', 'en', 'Nebraska');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NV', 'en', 'Nevada');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NH', 'en', 'New Hampshire');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NJ', 'en', 'New Jersey');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NM', 'en', 'New Mexico');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NY', 'en', 'New York');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NC', 'en', 'North Carolina');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('ND', 'en', 'North Dakota');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('OH', 'en', 'Ohio');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('OK', 'en', 'Oklahoma');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('OR', 'en', 'Oregon');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('PA', 'en', 'Pennsylvania');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('RI', 'en', 'Rhode Island');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('SC', 'en', 'South Carolina');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('SD', 'en', 'South Dakota');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('TN', 'en', 'Tennessee');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('TX', 'en', 'Texas');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('UT', 'en', 'Utah');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('VT', 'en', 'Vermont');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('VA', 'en', 'Virginia');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('WA', 'en', 'Washington');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('WV', 'en', 'West Virginia');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('WI', 'en', 'Wisconsin');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('WY', 'en', 'Wyoming');

-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NY', 'fr', 'NY');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('NY', 'zh', '纽约州');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Orleanais', 'en', 'Orléanais');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Orleanais', 'fr', 'Orléanais');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Orleanais', 'zh', '奥尔良');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Liaoning', 'en', 'Liaoning');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Liaoning', 'fr', 'Liaoning');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Liaoning', 'zh', '辽宁');

-- city
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Barrie', 'en', 'Barrie');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Brampton', 'en', 'Brampton');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Burlington', 'en', 'Burlington');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Cambridge', 'en', 'Cambridge');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Guelph', 'en', 'Guelph');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Hamilton', 'en', 'Hamilton');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Kingston', 'en', 'Kingston');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Kitchener', 'en', 'Kitchener');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('London', 'en', 'London');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Markham', 'en', 'Markham');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Mississauga', 'en', 'Mississauga');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Oshawa', 'en', 'Oshawa');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Pickering', 'en', 'Pickering');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Richmond Hill', 'en', 'Richmond Hill');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Toronto', 'en', 'Toronto');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Vaughan', 'en', 'Vaughan');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Waterloo', 'en', 'Waterloo');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Toronto', 'fr', 'Toronto');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Toronto', 'zh', '多伦多');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Mississauga', 'fr', 'Mississauga');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Mississauga', 'zh', '密西沙加');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Vancouver', 'en', 'Vancouver');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Vancouver', 'fr', 'Vancouver');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Vancouver', 'zh', '温哥华');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('New York City', 'en', 'New York City');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('New York City', 'fr', 'New York City');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('New York City', 'zh', '纽约市');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Orleans', 'en', 'Orleans');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Orleans', 'fr', 'Orleans');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Orleans', 'zh', '奥尔良');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Dalian', 'en', 'Dalian');
-- INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Dalian', 'fr', 'Dalian');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('Dalian', 'zh', '大连');

-- relation type
INSERT INTO relation_type(relation_id, relation_name, relation_desc) VALUES ('ctry-prov', 'country-province', 'country province dropdown');
INSERT INTO relation_type(relation_id, relation_name, relation_desc) VALUES ('prov-city', 'province-city', 'province city dropdown');

-- relation
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'CAN', 'ON');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'CAN', 'QC');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'CAN', 'NS');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'CAN', 'NB');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'CAN', 'MB');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'CAN', 'BC');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'CAN', 'PE');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'CAN', 'SK');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'CAN', 'AB');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'CAN', 'NL');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'CAN', 'NT');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'CAN', 'YT');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'CAN', 'NU');

INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'AL');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'AK');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'AZ');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'AR');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'CA');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'CO');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'CT');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'DE');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'DC');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'FL');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'GA');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'HI');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'ID');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'IL');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'IN');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'IA');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'KS');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'KY');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'LA');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'ME');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'MD');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'MA');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'MI');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'MN');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'MS');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'MO');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'MT');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'NE');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'NV');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'NH');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'NJ');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'NM');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'NY');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'NC');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'ND');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'OH');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'OK');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'OR');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'PA');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'RI');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'SC');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'SD');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'TN');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'TX');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'UT');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'VT');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'VA');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'WA');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'WV');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'WI');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'USA', 'WY');

-- INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'France', 'Orleanais');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('ctry-prov', 'China', 'Liaoning');

INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Barrie');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Brampton');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Burlington');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Cambridge');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Guelph');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Hamilton');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Kingston');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Kitchener');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'London');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Markham');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Mississauga');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Oshawa');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Pickering');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Richmond Hill');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Toronto');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Vaughan');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'ON', 'Waterloo');

INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'BC', 'Vancouver');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'NY', 'New York City');
-- INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'Orleanais', 'Orleans');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('prov-city', 'Liaoning', 'Dalian');




INSERT INTO ref_table(table_id, table_name, table_desc, host) values ('covid-category', 'category', 'covid entity category', 'net.lightapi');
INSERT INTO ref_table(table_id, table_name, table_desc, host) values ('covid-subcategory', 'subcategory', 'covid entity subcategory', 'net.lightapi');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('requester', 'covid-category', 'requester', 400, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('volunteer', 'covid-category', 'volunteer', 500, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('retail', 'covid-category', 'retail', 600, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('service', 'covid-category', 'service', 700, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('manufacture', 'covid-category', 'manufacture', 800, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('healthcare', 'covid-category', 'healthcare', 900, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('education', 'covid-category', 'education', 1000, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('government', 'covid-category', 'government', 1100, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('entertainment', 'covid-category', 'entertainment', 1200, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('recreation', 'covid-category', 'recreation', 1300, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('isolated', 'covid-subcategory', 'isolated', 400, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('confirmed', 'covid-subcategory', 'confirmed', 500, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('diseased', 'covid-subcategory', 'diseased', 600, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('elder', 'covid-subcategory', 'elder', 700, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('handicapped', 'covid-subcategory', 'handicapped', 800, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('personal-care', 'covid-subcategory', 'personal-care', 400, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('medical-consultant', 'covid-subcategory', 'medical-consultant', 500, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('psychological-consultant', 'covid-subcategory', 'psychological-consultant', 500, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('face-mask', 'covid-subcategory', 'face-mask', 500, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('grocery', 'covid-subcategory', 'grocery', 500, 'Y');
INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('pharmacy', 'covid-subcategory', 'pharmacy', 500, 'Y');

INSERT INTO ref_value(value_id, table_id, value_code, display_order, active) VALUES ('restaurant', 'covid-subcategory', 'restaurant', 500, 'Y');


INSERT INTO value_locale(value_id, language, value_desc) VALUES ('requester', 'en', 'requester');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('volunteer', 'en', 'volunteer');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('retail', 'en', 'retail');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('service', 'en', 'service');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('manufacture', 'en', 'manufacture');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('healthcare', 'en', 'healthcare');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('education', 'en', 'education');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('government', 'en', 'government');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('entertainment', 'en', 'entertainment');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('recreation', 'en', 'recreation');

INSERT INTO value_locale(value_id, language, value_desc) VALUES ('isolated', 'en', 'isolated');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('confirmed', 'en', 'confirmed');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('diseased', 'en', 'diseased');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('elder', 'en', 'elder');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('handicapped', 'en', 'handicapped');

INSERT INTO value_locale(value_id, language, value_desc) VALUES ('personal-care', 'en', 'personal care');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('medical-consultant', 'en', 'medical consultant');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('psychological-consultant', 'en', 'psychological consultant');

INSERT INTO value_locale(value_id, language, value_desc) VALUES ('face-mask', 'en', 'face-mask');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('grocery', 'en', 'grocery');
INSERT INTO value_locale(value_id, language, value_desc) VALUES ('pharmacy', 'en', 'pharmacy');

INSERT INTO value_locale(value_id, language, value_desc) VALUES ('restaurant', 'en', 'restaurant');


INSERT INTO relation_type(relation_id, relation_name, relation_desc) VALUES ('cov-cat', 'covid-category', 'covid categroy and sub category');

INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('cov-cat', 'requester', 'isolated');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('cov-cat', 'requester', 'confirmed');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('cov-cat', 'requester', 'diseased');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('cov-cat', 'requester', 'elder');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('cov-cat', 'requester', 'handicapped');

INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('cov-cat', 'volunteer', 'personal-care');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('cov-cat', 'volunteer', 'medical-consultant');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('cov-cat', 'volunteer', 'psychological-consultant');

INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('cov-cat', 'retail', 'face-mask');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('cov-cat', 'retail', 'grocery');
INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('cov-cat', 'retail', 'pharmacy');

INSERT INTO relation(relation_id, value_id_from, value_id_to) VALUES ('cov-cat', 'service', 'restaurant');
