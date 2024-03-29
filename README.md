# DockerでのPostgreSQLの構築

## 確認環境
- WSL2(Ubuntu22.04.3 LTS)
- Docker (25.0.3)
- Docker Compose (v2.24.5)

## 設定ファイルの取得
```bash
# コンテナを仮構築（バージョンはenvと合わせる）
docker run --name temp-postgres -e POSTGRES_PASSWORD=temp -d postgres:16.2

# 設定ファイルのフォルダ作成
mkdir config

# 設定ファイルを取得
docker cp temp-postgres:/var/lib/postgresql/data/postgresql.conf config/postgresql.conf 

# パーミッション変更（一応、デフォルトに合わせる）
sudo chmod 600 ./config/postgresql.conf

# コンテナ削除
docker rm -f temp-postgres
```

## 設定ファイル
.env のファイルを修正
※特にGID,UIDは注意

## コンテナ構築
```bash
# コンテナビルド
docker compose build
# コンテナ構築
docker compose up -d
```
