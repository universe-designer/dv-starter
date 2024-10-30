@echo off
 echo "....................................................................................................................."
 echo "...........................................   Data Vault Starter   .................................................."
 echo "....................................................................................................................."
 

echo This will install and configure dbt, datavault4dbt and turbovault4dbt.
PAUSE


echo Creating virtual python environment
python -m venv dbt-env 

echo Activating virtual python environment
call dbt-env\Scripts\activate

echo Setuptools
python -m ensurepip --upgrade
python -m pip install --upgrade pip
python -m pip install --upgrade setuptools

echo Installing dbt-oracle
dbt-env\Scripts\python -m pip install --upgrade -r conf\requirements.txt

echo Copying configuration files
xcopy /s /F conf\profiles.yml %userprofile%\.dbt\ /Y

xcopy /s conf\dbt_project.yml datavault4dbt /Y
xcopy /s conf\.gitignore datavault4dbt /Y
xcopy /s conf\packages.yml datavault4dbt /Y
xcopy /s conf\config.ini turbovault4dbt /Y
xcopy /s templates\Excel turbovault4dbt\metadata_ddl\Excel /Y
move dv-generator.cmd datavault4dbt
move dv-session.cmd datavault4dbt

echo Configuring dbt
setx ORA_PYTHON_DRIVER_TYPE thin
set ORA_PYTHON_DRIVER_TYPE=thin
cd datavault4dbt 
dbt deps

echo Installation completed! Here is your cat!

 echo ""
 echo "       \`-._           __"
 echo "        \\  `-..____,.'  `."
 echo "         :`.         /    \`."
 echo "         :  )       :      : \"
 echo "          ;'        '   ;  |  :"
 echo "          )..      .. .:.`.;  :"
 echo "         /::...  .:::...   ` ;"
 echo "         ; _ '    __        /:\"
 echo "         `:o>   /\o_>      ;:. `."
 echo "        `-`.__ ;   __..--- /:.   \"
 echo "        === \_/   ;=====_.':.     ;"
 echo "         ,/'`--'...`--....        ;"
 echo "              ;                    ;"
 echo "            .'                      ;"
 echo "          .'                        ;"
 echo "        .'     ..     ,      .       ;"
 echo "       :       ::..  /      ;::.     |"
 echo "      /      `.;::.  |       ;:..    ;"
 echo "     :         |:.   :       ;:.    ;"
 echo "     :         ::     ;:..   |.    ;"
 echo "      :       :;      :::....|     |"
 echo "      /\     ,/ \      ;:::::;     ;"
 echo "    .:. \:..|    :     ; '.--|     ;"
 echo "   ::.  :''  `-.,,;     ;'   ;     ;"
 echo ".-'. _.'\      / `;      \,__:      \"
 echo "`---'    `----'   ;      /    \,.,,,/"
 echo "                   `----`"
PAUSE