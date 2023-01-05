TRUNCATE TABLE posts, accounts RESTART IDENTITY;

INSERT INTO accounts (username, email_address) VALUES ('tmccoy', 'tmccoy@gmail.com');
INSERT INTO accounts (username, email_address) VALUES ('great_account_name', 'great_email@talktalk.net');
