DROP TRIGGER IF EXISTS check_community_name;

DELIMITER $$

CREATE TRIGGER check_community_name
BEFORE INSERT ON communities
FOR EACH ROW
BEGIN
    IF (CHAR_LENGTH(NEW.name) < 5) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: Name length should be greater than or equal to 5';
    END IF;
END$$
DELIMITER ;

insert into communities (name) values ('qwer');