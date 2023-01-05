-- As a social network user,
-- So I can have my information registered,
-- I'd like to have a user account with my email address.

-- As a social network user,
-- So I can have my information registered,
-- I'd like to have a user account with my username.

-- As a social network user,
-- So I can write on my timeline,
-- I'd like to create posts associated with my user account.

-- As a social network user,
-- So I can write on my timeline,
-- I'd like each of my posts to have a title and a content.

-- As a social network user,
-- So I can know who reads my posts,
-- I'd like each of my posts to have a number of views.

-- Nouns: accounts, email_address, username, posts, title, content, views

-- Records     |    Properties
-- accounts    |   username, email_address
-- posts       |   title, content, view_count, account_id


CREATE TABLE accounts (
  id SERIAL PRIMARY KEY,
  username text,
  email_address text
);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title text,
  content text,
  view_count int,
  account_id int,
  constraint fk_account foreign key(account_id)
  references accounts(id)
  on delete cascade
);