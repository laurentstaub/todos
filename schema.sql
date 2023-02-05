CREATE TABLE todolists (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL UNIQUE,
  username text NOT NULL
);

CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  done BOOLEAN NOT NULL DEFAULT false,
  username text NOT NULL,
  todolist_id INTEGER 
    NOT NULL
    REFERENCES todolists(id) ON DELETE CASCADE
);

CREATE TABLE users (
  username text PRIMARY KEY,
  password text NOT NULL
);