/sql/sql | Gist 101
==============

SELECT
------

    SELECT {Columns}
    FROM {Table}
        JOIN|INNER JOIN|LEFT JOIN|RIGHT JOIN|FULL OUTER JOIN {Table}
            ON {Conditions}
    WHERE {Conditions}
    GROUP BY {Columns}
    ORDER BY {Columns}


INSERT INTO
-----------

    INSERT INTO {Table}
        ({Columns})
    VALUES
        ({Row})

UPDATE
------

    UPDATE {Table}
    SET {Assignments}
    WHERE {Conditions}

DELETE
------

    DELETE FROM {Table}
    WHERE {Conditions}

CREATE TABLE
------------

    CREATE TABLE {table}
    (
        {Column} {Data type}({Size}) {Constraint},
        {Constraints}
    );

ALTER TABLE
-----------

    ALTER TABLE {Table}
    ADD {Column} {Data type}({Size})
    DROP COLUMN {Column}
    * MODIFY COLUMN {Column} {Data type}({Size})
    * ALTER COLUMN {Column} {Data type}({Size})

TRUNCATE TABLE
--------------
TRUNCATE TABLE removes all rows from a table, but the table structure and its columns, constraints, indexes, and so on remain.

    TRUNCATE TABLE {Table}

DROP TABLE
----------

    DROP TABLE {Table}

