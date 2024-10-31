<h1 align=center>DV Starter</h1>
<img src="https://user-images.githubusercontent.com/dv-starter.png" width=100% align=center>

# dv-starter
This project containts Windows shell scripts to install, preconfigure and work with datavault4dbt and turbovault4dbt in an Oracle environment. 

## dv-developer.cmd 
- installs a python virtual environment
- updates pip
- installs dbt-oracle
- clones repositories 
  - datavault4dbt 
  - turbovault4dbt
  - dbt-utils
  - dbt_constraints
- copies configuration files

## dv-starter.cmd 
Same as dv-developer.cmd but it does not clone the repositories. It rather expects them to be already copied in the working directory

## dv-session.cmd 
Saves your database password in a temporary and private parameter. This helps to avoid storing the password in a file. It is typically run once before dbt run is executed.

## dv-generator.cmd 
Generates useful SQL / SQLcl statements in folder \target\compiled\datavault4dbt\models\Meta.
The statements are generated for all models in datavault4dbt\models\
- META_CREATE: A list of SQLcl commands to generate CREATE statemens 
- META_DELETE: A list of DELETE table commands 
- META_DROP: A list of DROP table / view commands 
- META_SELECT: A list of SELECT statements
- META_GRANT: A list of Grant statements for stage schema object to core schema user
- META_CONSTRAINTS: A list to enable / disable foreign key constraints
- META_INDEXES: A list of indexes to whose tablespace shall be moved
