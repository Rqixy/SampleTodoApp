drop table sessions;
drop table users;
drop table todo;

create table users (
    id         serial primary key,
    uuid       varchar(64) not null unique,
    name       varchar(255),
    email      varchar(255) not null unique,
    password   varchar(255) not null,
    craeted_at timestamp not null
);

create table sessions (
    id         serial primary key,
    uuid       varchar(64) not null unique,
    name       varchar(255),
    email      varchar(255) not null unique,
    user_id    integer references users(id),
    craeted_at timestamp not null
);

create table todo (
    id         serial primary key,
    content    text,
    user_id    integer references users(id),
    craeted_at timestamp not null
);