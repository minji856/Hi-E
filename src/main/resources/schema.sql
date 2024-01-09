drop table if exists member CASCADE;
drop table if exists notice CASCADE;
drop table if exists events CASCADE;
create table member
(
    id bigint generated by default as identity,
    email varchar(255) not null,
    ename varchar(255) ,
    pw varchar(255) not null,
    roles varchar(255) not null,
    birth_day varchar(255) ,
    phone_number varchar(255) default null ,
    address varchar(255) ,
    street_address varchar(255) ,
    detail_address varchar(255) ,
    picture varchar(1000) default '/img/undraw_profile_1.svg' ,
    primary key (id),
    unique (email)
);

CREATE TABLE events (
    boardno BIGINT GENERATED BY DEFAULT AS IDENTITY,
    title VARCHAR(255) NOT NULL,
    context TEXT NOT NULL,
    time BIGINT DEFAULT EXTRACT(EPOCH FROM CURRENT_TIMESTAMP),
    show BOOLEAN DEFAULT TRUE,
    address VARCHAR(255) NOT NULL,
    PRIMARY KEY (boardno)
);
CREATE TABLE notice (
    boardno BIGINT GENERATED BY DEFAULT AS IDENTITY,
    title VARCHAR(255) NOT NULL,
    context TEXT NOT NULL,
    time BIGINT DEFAULT EXTRACT(EPOCH FROM CURRENT_TIMESTAMP),
    show BOOLEAN DEFAULT TRUE,
    PRIMARY KEY (boardno)
);
