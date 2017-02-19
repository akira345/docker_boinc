# docker_boinc
DockerでBOINCを動かします。

docker-compose.ymlのenvironmentに参加するプロジェクトのURLと認証キーを設定します。

```
      PROJECT_URL: http://setiathome.berkeley.edu/
      AUTH_KEY: 123456789abcdef
```

その後、

```
docker-compose up -d
```

で起動します。

