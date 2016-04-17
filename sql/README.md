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

### SELECT DISTINCT {Columns} ...
No duplicate values in selected columns.

### SELECT TOP {Number|Percent} ...
Equivalent to LIMIT clause in most databases.

    SELECT {Columns}
    ...
    LIMIT {Number}

### SELECT ... INTO ...

    SELECT {Columns}
    INTO {Table} [IN {Database}]
    FROM {Table}
    ...

### SELECT ... UNION [ALL] SELECT ...

INSERT INTO
-----------

    INSERT INTO {Table}
        ({Columns})
    VALUES
        ({Row})

### INSERT INTO ... SELECT ...

    INSERT INTO {Table}
        ({Columns})
    SELECT {Columns}
    FROM {Table}
    ...

UPDATE
------

    UPDATE {Table}
    SET {Assignments}
    WHERE {Conditions}

DELETE
------

    DELETE FROM {Table}
    WHERE {Conditions}

CREATE VIEW
-----------

    CREATE VIEW {View} AS
    SELECT {Columns}
    FROM {Table}
    ...

### CREATE OR REPLACE VIEW
Similar as CREATE VIEW.

DROP VIEW
---------

    DROP VIEW {View}

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

CREATE DATABASE
---------------

    CREATE DATABASE {Database}

DROP DATABASE
-------------

    DROP DATABASE {Database}