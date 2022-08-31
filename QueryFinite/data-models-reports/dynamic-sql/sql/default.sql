declare type refcursor is REF CURSOR;

xdo_cursor refcursor;

decodedSql varchar2(32000);

begin decodedSql := utl_raw.cast_to_varchar2(
  utl_encode.base64_decode(UTL_RAW.CAST_TO_RAW(:p_in_dyn_sql))
);

open :xdo_cursor FOR decodedSql;

end;