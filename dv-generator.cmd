@echo off
 echo "....................................................................................................................."
 echo "...........................................   Data Vault Generator   ................................................"
 echo "....................................................................................................................."

echo This program will generate SQL scripts for data vault tables and views.
PAUSE
xcopy /s /q ..\conf\models\* .\models\Meta\ /Y

echo Generating SQL scripts. Please wait ...
dbt compile -models META_CREATE META_DELETE META_DROP META_SELECT META_GRANT META_CONSTRAINTS META_INDEXES

rmdir /s /q .\models\Meta
start %windir%\explorer.exe .\target\compiled\datavault4dbt\models\Meta


echo Files generated in direcory datavault4dbt\target\compiled\datavault4dbt\models\Meta
PAUSE