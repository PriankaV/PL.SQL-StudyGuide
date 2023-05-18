DECLARE
v_date date;
s_date date:=sysdate;
BEGIN
dbms_output.put_line(v_date);
dbms_output.put_line(s_date);
v_date:='10-May-2012';
dbms_output.put_line(v_date);
END;

--------------------------------------------
DECLARE

BEGIN
dbms_output.put_line(ADD_MONTHS('01-Aug-03', 3));
dbms_output.put_line(ADD_MONTHS('01-Aug-03', -3));

dbms_output.put_line(DBTIMEZONE);
-- returns a time zone offset
dbms_output.put_line(TZ_OFFSET('US/Michigan'));
--Canada/Atlantic Canada/Central Canada/East-Saskatchewan Canada/Eastern Canada/Mountain Canada/Newfoundland Canada/Pacific Canada/Saskatchewan Canada/Yukon
--Europe/Dublin Europe/Istanbul Europe/Lisbon Europe/London Europe/Moscow Europe/Warsawv Greenwich
--Pacific/Auckland Pacific/Chatham Pacific/Easter Pacific/Honolulu Pacific/Kwajalein Pacific/Pago_Pago Pacific/Samoa
--US/Alaska US/Aleutian US/Arizona US/Central US/East-Indiana US/Eastern US/Hawaii US/Michigan US/Mountain US/Pacific US/Pacific-New US/Samoa
-- -8.00 sessiontimezone dbtimezone

dbms_output.put_line(CURRENT_DATE);
dbms_output.put_line(LOCALTIMESTAMP);
dbms_output.put_line(SESSIONTIMEZONE);
dbms_output.put_line(CURRENT_TIMESTAMP);
dbms_output.put_line(SYSTIMESTAMP);
END;

-------------------------------------------------
DECLARE

BEGIN
dbms_output.put_line(NEXT_DAY('01-Aug-03', 'TUESDAY'));
dbms_output.put_line(LAST_DAY(TO_DATE('2003/03/15', 'yyyy/mm/dd')));
dbms_output.put_line(NEW_TIME (TO_DATE ('2003/11/01 01:45', 'yyyy/mm/dd HH24:MI'), 'AST', 'MST'));

dbms_output.put_line(EXTRACT(YEAR FROM DATE '2003-08-22'));
--YEAR MONTH DAY HOUR from a DATE
--TIMEZONE_HOUR TIMEZONE_MINUTE from a TIME ZONE
--MINUTE SECOND TIMEZONE_REGION TIMEZONE_ABBR only when parameters are given

dbms_output.put_line(ROUND(TO_DATE ('22-AUG-03'),'YEAR'));

dbms_output.put_line(TRUNC(TO_DATE('22-AUG-03'), 'YEAR'));

END;

