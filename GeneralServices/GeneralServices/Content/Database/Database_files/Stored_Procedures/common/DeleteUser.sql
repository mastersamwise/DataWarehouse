/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-03-26      Initial creation
 */

 CREATE PROCEDURE common.DeleteUser
 (
     IN in_user_id  integer
 )
 BEGIN

    /* Rather than a hard delete, just flip the "is_deleted" flag to true */
    UPDATE common.Users
    SET is_deleted = true
    WHERE user_id = in_user_id;

 END;