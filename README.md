<h1 align=center>DV Starter</h1>
<img src="https://github.com/universe-designer/dv-starter/blob/main/dv-starter-dark.png?raw=true" width=50% align=center>

# dv-starter
This project is a collection of Windows batch files to install, preconfigure and work with datavault4dbt and turbovault4dbt in an Oracle environment.

## dv-developer.cmd 
- installs a python virtual environment
- updates pip
- installs dbt-oracle
- clones repositories 
  - [datavault4dbt](https://github.com/universe-designer/datavault4dbt) custom oracle branch with advanced features
  - [turbovault4dbt](https://github.com/universe-designer/turbovault4dbt)  custom oracle branch with advanced features
  - dbt-utils
  - dbt_constraints
- copies configuration files

## dv-starter.cmd 
Same as dv-developer.cmd but it does not clone the repositories. It rather expects them to be already copied in the working directory. This is helpful when git shall not be used in the install process.

## dv-session.cmd 
Saves your database password in a temporary and private session parameter. It is typically run once before dbt run is executed. This helps to avoid storing the password in a file.

## dv-generator.cmd 
Generates useful SQL / SQLcl statements in folder \target\compiled\datavault4dbt\models\Meta
The statements are generated for all models in datavault4dbt\models\
- META_CREATE: SQLcl commands to generate CREATE statemens 
- META_DELETE: DELETE table commands 
- META_DROP: DROP table / view commands 
- META_SELECT: SELECT statements
- META_GRANT: Grant statements for stage schema object to core schema user
- META_CONSTRAINTS: ALTER commands to enable / disable foreign key constraints
- META_INDEXES: ALTER commands to change the index tablespace

### Requirements
- Windows cmd.exe
- PowerShell
- Python
- Git (only for dv-developer.cmd)
