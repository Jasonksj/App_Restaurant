ALTER TABLE Config
ADD ( 
		CONSTRAINT marge_chk CHECK(marge BETWEEN 0 AND 1)
);