# PostgreSQLの構築

## 設定ファイルの取得
```
# コンテナを仮構築（バージョンはenvと合わせる）
docker run --name temp-postgres -e POSTGRES_PASSWORD=temp -d postgres:16.2

# 設定ファイルを取得
docker cp temp-postgres:/var/lib/postgresql/data/postgresql.conf conf/postgresql.conf 

# パーミッション変更（一応、デフォルトに合わせる）
sudo chmod 600 ./conf/postgresql.conf 
```

## 設定ファイル
.env のファイルを修正
※特にGID,UIDは注意

## コンテナ構築
```
# コンテナビルド
docker compose build
# コンテナ構築
docker compose up -d
```
