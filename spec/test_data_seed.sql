TRUNCATE TABLE posts, accounts RESTART IDENTITY;

INSERT INTO accounts (username, email_address) VALUES ('tmccoy', 'tmccoy@gmail.com');
INSERT INTO accounts (username, email_address) VALUES ('great_account_name', 'great_email@talktalk.net');

INSERT INTO posts (title, content, view_count, account_id)
VALUES ('Summer 2022', 'OMG glasto was amazing', 2, 1);

INSERT INTO posts (title, content, view_count, account_id)
VALUES ('Spring 2022', 'Exams are like so stressful', 10, 1);