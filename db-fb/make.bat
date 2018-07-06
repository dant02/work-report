:: make db and its structure, expects firebird 3+ installed in c:\fb
:: https://stackoverflow.com/questions/1601947/how-do-i-create-a-new-firebird-database-from-the-command-line

del d:\work-report.fdb

SET isql=c:\fb\isql.exe

%isql% -input db.sql
