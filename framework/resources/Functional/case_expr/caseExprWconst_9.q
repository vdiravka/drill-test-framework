SELECT (CASE WHEN (strpos('sdfsdfdsf?sdfsd','?')-1) <> '-1' THEN true ELSE false END) FROM (VALUES(1)) test_tbl;