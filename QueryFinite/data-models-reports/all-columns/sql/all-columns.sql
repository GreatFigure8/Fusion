select
  table_name,
  column_name,
  data_type,
  data_length
from
  all_tab_columns a
where
  1 = 1
  and a.owner = 'FUSION'
  and upper(a.table_name) like '%' || upper(:p_table_name) || '%'