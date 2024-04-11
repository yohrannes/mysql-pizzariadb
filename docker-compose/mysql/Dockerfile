FROM mysql

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

# Persistindo os dados do banco em um volume pré-determinado.

RUN mkdir -p /data/storage

# Persistindo os dados do banco no diretório /data/storage
VOLUME [ "/data/storage" ]
