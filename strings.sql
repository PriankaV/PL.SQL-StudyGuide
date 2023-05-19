DECLARE
BEGIN
dbms_output.put_line(ASCII('p'));
dbms_output.put_line(CHR(112));
--American Standard Code for Information Interchange
dbms_output.put_line(NCHR(112));
dbms_output.put_line(ASCIISTR('A B C Ä Ê Í Õ Ø'));
--returns numerical value of the given fuction
dbms_output.put_line(CONVERT('A B C D E Ä Ê Í Õ Ø', 'US7ASCII', 'WE8ISO8859P1'));
--US7ASCII WE8DEC WE8HP F7DEC WE8EBCDIC500 WE8PC850 WE8PC850

--dbms_output.put_line(DUMP('Tech', 1016));

dbms_output.put_line(COMPOSE('o' || unistr('\0308')));
dbms_output.put_line(DECOMPOSE('é'));

dbms_output.put_line(CONCAT('Tech on', ' the Net'));

dbms_output.put_line(INITCAP('GEORGE BURNS'));
dbms_output.put_line(INITCAP('tech on the net'));
dbms_output.put_line(LOWER('Tech on the Net'));
dbms_output.put_line(UPPER('Tech on the Net'));

dbms_output.put_line(LPAD('tech', 8, '0'));
dbms_output.put_line(RPAD('tech', 8, '0'));
dbms_output.put_line(TRIM('   tech   '));
dbms_output.put_line(TRIM(LEADING '0' FROM '000123'));
-- TRIM LTRIM RTRIM
dbms_output.put_line(REPLACE('123tech123', '123'));
dbms_output.put_line(REPLACE('222tech', '2', '3'));

dbms_output.put_line(INSTR('Tech on the net', 'e'));
dbms_output.put_line(INSTR2('TechOnTheNet.com', 'e'));
dbms_output.put_line(INSTR4('TechOnTheNet.com', 'e'));
dbms_output.put_line(INSTRB('TechOnTheNet.com', 'e'));
dbms_output.put_line(INSTRC('TechOnTheNet.com', 'e'));

dbms_output.put_line(LENGTH('Tech on the Net'));
dbms_output.put_line(LENGTH2('TechOnTheNet.com'));
dbms_output.put_line(LENGTH4('TechOnTheNet.com'));
dbms_output.put_line(LENGTHB('TechOnTheNet.com'));
dbms_output.put_line(LENGTHC('TechOnTheNet.com'));

--dbms_output.put_line(VSIZE('Tech on the net'));

END;
-------------------------------------------------------------------
