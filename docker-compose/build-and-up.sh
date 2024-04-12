docker build -t mysqlcompose mysql/.; docker build -t flaskcompose flask/.
docker compose down
docker compose up -d
