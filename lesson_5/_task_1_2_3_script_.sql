CREATE OR REPLACE VIEW v_test AS
	SELECT *
    FROM users u
    JOIN friend_requests fr on u.id = fr.initiator_user_id
    WHERE
    fr.status = 'approved';
    
    SELECT *
    FROM v_test;
    
    DROP VIEW v_test;