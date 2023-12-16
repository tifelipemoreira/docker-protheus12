export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:.
cp /tmp/appserver.ini /totvs/protheus12/binarios/appserver/appserver.ini
cd /totvs/protheus12/binarios/appserver && chmod 777 appsrvlinux && ./appsrvlinux