#Prompt for Password
$password = Read-Host "Enter your dbt password"  -AsSecureString

[System.Environment]::SetEnvironmentVariable(
    'DBT_ENV_SECRET_PASSWORD', #Environment Variable used in .dbt/profiles.yml
    [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($password)) #Decript to plain Text
    ,[System.EnvironmentVariableTarget]::Process) #Set scope of Environment Variable to process. Deleted after shell is closed

