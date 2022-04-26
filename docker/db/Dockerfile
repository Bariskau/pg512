FROM postgres:13

RUN apt-get update && apt-get install -y build-essential curl postgresql-server-dev-13
RUN apt-get install postgresql-13-postgis-3 postgresql-13-postgis-3-scripts -y
RUN curl https://ftp.postgresql.org/pub/source/v13.0/postgresql-13.0.tar.bz2 -o /postgresql-13.0.tar.bz2
RUN cd / && tar xvf postgresql-13.0.tar.bz2
RUN cd /postgresql-13.0/contrib/cube && sed -i 's/#define CUBE_MAX_DIM (100)/#define CUBE_MAX_DIM (512)/' cubedata.h && \
    USE_PGXS=true make && USE_PGXS=true make install
COPY initdb.sh /docker-entrypoint-initdb.d/
