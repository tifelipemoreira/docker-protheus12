apt-get remove msodbcsql
apt-cache madison msodbcsql
apt-get install msodbcsql=13.1.9.2-1 --y
apt-cache madison mssql-tools
ACCEPT_EULA=Y apt-get install mssql-tools=14.0.6.0-1 -y
apt-mark hold mssql-tools
apt-mark hold msodbcsql

/opt/mssql/bin/sqlservr & 
echo 'Vai chamar db_mssql apos 30 segundos para garantir que o banco está rodando antes das alterações.'

sleep 30
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P protheus@2023 -d master -i /opt/mssql/db_mssql.sql
#/opt/mssql/db_mssql.sh

/opt/entrypoint-dbaccess.sh
