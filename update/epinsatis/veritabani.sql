INSERT INTO `config` (`name`, `value`)
SELECT * FROM (SELECT 'dc_client_id', '') AS tmp
WHERE NOT EXISTS (
    SELECT `name` FROM `config` WHERE `name` = 'dc_client_id'
) LIMIT 1;

INSERT INTO `config` (`name`, `value`)
SELECT * FROM (SELECT 'dc_client_secret', '') AS tmp
WHERE NOT EXISTS (
    SELECT `name` FROM `config` WHERE `name` = 'dc_client_secret'
) LIMIT 1;

INSERT INTO `config` (`name`, `value`)
SELECT * FROM (SELECT 'h_site_key', '') AS tmp
WHERE NOT EXISTS (
    SELECT `name` FROM `config` WHERE `name` = 'h_site_key'
) LIMIT 1;

INSERT INTO `config` (`name`, `value`)
SELECT * FROM (SELECT 'h_secret_key', '') AS tmp
WHERE NOT EXISTS (
    SELECT `name` FROM `config` WHERE `name` = 'h_secret_key'
) LIMIT 1;
