/*
Reference:
  - http://stackoverflow.com/questions/6069237/fastest-way-to-count-exact-number-of-rows-in-a-very-large-table
*/

/*******************************************************************************
@link http://stackoverflow.com/a/6069288
*******************************************************************************/

SELECT
   Total_Rows= SUM(st.row_count)
FROM
   sys.dm_db_partition_stats st
WHERE
    object_name(object_id) = 'MyBigtable' AND (index_id < 2)

/*******************************************************************************
@link http://stackoverflow.com/a/6561805
*******************************************************************************/

SELECT /*+ parallel(a) */ count(1) FROM table_name a;


/*******************************************************************************

*******************************************************************************/

SHOW TABLE STATUS;
