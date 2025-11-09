@echo off
 echo "....................................................................................................................."
 echo "...........................................   Data Vault Session Starter............................................."
 echo "....................................................................................................................."

echo This program will open a session, that remembers your dbt parameters

echo Activating virtual python environment
call \dbt-env\Scripts\activate



::set /p TNS_ADMIN=Set path to tnsnames.ora: 
set TNS_ADMIN=/path/to/directory_containing_tnsnames.ora
echo TNS_ADMIN: %TNS_ADMIN%

::set /p WALLET_LOCATION=Set path to ewallet.pem: 
set WALLET_LOCATION=/path/to/directory_containing_ewallet.pem
echo WALLET_LOCATION: %WALLET_LOCATION%

set /p WALLET_PASSWORD=Set Wallet Password: 
::echo WALLET_PASSWORD: ***

set /p DBT_ENV_SECRET_PASSWORD=Set database user password: 
::echo DBT_ENV_SECRET_PASSWORD: ***

::echo Testing connection
::dbt debug

echo Session started!