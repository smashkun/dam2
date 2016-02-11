CREATE OR REPLACE FUNCTION devolver_ano(
	fecha DATE)
RETURN CHAR IS
	ano CHAR(200);
BEGIN
	ano := TO_CHAR(fecha, 'yyyy');
	RETURN ano;
END devolver_ano;
/
show errors

SET SERVEROUTPUT ON;
DECLARE
ano CHAR(200);
BEGIN
	ano := devolver_ano(sysdate);
	DBMS_OUTPUT.PUT_LINE('Ano: '|| ano);
END;
/
