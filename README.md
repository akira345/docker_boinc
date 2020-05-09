# docker_boinc

Docker で BOINC を動かします。(アカウントマネージャバージョン)

### 初回設定

1. まず適当な BOINC アカウントマネージャに参加します。

1. BOINC クライアントコンテナを起動します。

   ```
   docker-compose up -d
   ```

1. アカウントマネージャの登録をします。

   ```
   docker exec <起動したコンテナ名> boinccmd --join_acct_mgr <アカウントマネージャのURL> <アカウント名> <パスワード>
   ```

   例：

   ```
   docker exec docker_boinc_1 boinccmd --join_acct_mgr https://scienceunited.org akira345@example.com somePassW0rd!!
   ```

   こんな表示が出れば OK です。

   ```
   polling for reply
   poll status: operation in progress
   polling for reply
   poll status: operation in progress
   polling for reply
   ```

### 初期設定後

1. 一旦コンテナを終了させます。

   ```
   docker-compose down
   ```

1. 再度起動させます。

   ```
   docker-compose up -d
   ```

1. アカウントマネージャに登録してあるプロジェクトのジョブが受信されていることを確認します。

   ```
   docker-compose logs -f
   ```
