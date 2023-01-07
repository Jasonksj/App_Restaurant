CREATE OR REPLACE PROCEDURE sp_register_admin(p_id_user IN INT,
                                              p_username IN VARCHAR,
                                              p_password IN VARCHAR
                                             )
    IS
       l_msg  VARCHAR(100);
   BEGIN
      INSERT INTO Users (id_user,
                         username,
                         password
                        )
      SELECT p_id_user,
             p_username,
             p_password
      FROM DUAL
      WHERE NOT EXISTS
              (SELECT NULL
               FROM Users
               WHERE id_user = p_id_user);
      
	   l_msg :=
              CASE
                 WHEN SQL%ROWCOUNT > 0 THEN 'User registered'
                 ELSE 'User already exists' 
             END;
 
   DBMS_OUTPUT.put_line(l_msg);
   END;
   /

   CREATE OR REPLACE PROCEDURE Sp_Inscription( p_id_admin,
                                            p_name_admin ,
                                            p_pwd_admin )
   IS
        a_msg VARCHAR2(100);
 BEGIN
             INSERT INTO Customers( id_admin,
                                   name_admin ,
                                  pwd_admin)
            SELECT p_id_admin,
                   p_name_admin ,
                   p_pwd_admin
       FROM DUAL
      WHERE NOT EXISTS
           (SELECT NULL FROM Admin WHERE id_admin = p_id_admin);
    a_msg :=
    CASE 
        WHEN SQL%ROWCOUNT >0 THEN 'administrator registered'
            ELSE ' administrator already exists'
         END;
          DBMS.OUTPUT.put_line(a_msg);
 END;

 BEGIN