# postgresのバージョン
ARG PG_IMAGE_VERSION
FROM postgres:$PG_IMAGE_VERSION

# WSLのデフォルトのGID,UIDは大体1000のはず
ARG PG_GID=${PG_GID}
ARG PG_UID=${PG_UID}

# postgresのUID,GIDをWSLデフォルトに設定する
RUN groupmod -g ${PG_GID} postgres
RUN usermod -u ${PG_UID} postgres
