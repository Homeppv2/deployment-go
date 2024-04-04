CREATE TABLE IF NOT EXISTS users
(
    id            SERIAL PRIMARY KEY,
    username      TEXT NOT NULL,
    email         TEXT NOT NULL,
    hash_password TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS controllers 
(
    id_controller SERIAL PRIMARY KEY,
    type_controller INTEGER,
    number_controller INTEGER
);

CREATE TABLE IF NOT EXISTS user_controllers 
(
    id_user INTEGER references users(id),
    id_controller INTEGER references controllers(id_controller)
);

CREATE TABLE IF NOT EXISTS messanges 
(
    id_messange SERIAL PRIMARY KEY,
    id_controller INTEGER references controllers(id_controller),
    status_controller INTEGER,
    charge_controller INTEGER,
    temperature_MK_controller INTEGER
);

CREATE TABLE IF NOT EXISTS messanges_controllers_leack
(
    id_messange INTEGER references messanges(id_messange),
    leack INTEGER
);

CREATE TABLE IF NOT EXISTS messanges_controllers_module
(
    id_messange INTEGER references messanges(id_messange),
    temperature INTEGER,
    humidity INTEGER,
    pressure INTEGER,
    gas INTEGER
);

CREATE TABLE IF NOT EXISTS messanges_controllers_enviroment
(
    id_messange INTEGER references messanges(id_messange),
    temperature INTEGER,
    humidity INTEGER,
    pressure INTEGER,
    VOC INTEGER,
    gas1 INTEGER,
    gas2 INTEGER,
    gas3 INTEGER,
    pm1 INTEGER,
    pm25 INTEGER,
    pm10 INTEGER,
    fire INTEGER,
    smoke INTEGER
);

CREATE TABLE IF NOT EXISTS messanges_controllers_smokeandfire
(
    id_messange INTEGER references messanges(id_messange),
    smoke INTEGER,
    fire1 INTEGER, 
    fire2 INTEGER,
    fire3 INTEGER,
    fire4 INTEGER,
    illumination INTEGER
);

CREATE TABLE IF NOT EXISTS messanges_controllers_carbondioxide
(
    id_messange INTEGER references messanges(id_messange),
    temperature INTEGER,
    humidity INTEGER, 
    pressure INTEGER,
    carbone INTEGER
);

