# 製作docker image
```bash
sudo docker build -t alpine-laravel --no-cache .
```

# 啟動sit env
```bash
# docker-compose 啟動容器
docker-compose --env-file .env up -d
# 進去laravel-api 
docker exec -it alpine-docker-composer_laravel-api_1 sh
# 啟動nginx && php-fpm8
sh start.sh
# 進入nginx 網頁根目錄
cd /var/www/localhost/htdocs
# 啟動laravel 專案 
composer create-project laravel/laravel --prefer-dist .
# 給予專案目錄權限
chmod 777 -R /var/www/localhost/htdocs

# 修改網站.env 資料庫設定檔 連線至mysql docker container

# 資料庫遷移
php artisan migrate

# 如果mysql資料庫有新增talbe代表資料庫連線成功

```

# 啟動prod env
```bash
# 關閉已啟動docker container
docker-compose down
# 修改docker-compose.yml 將command 換成 prod env
# command: ["sh", "start.sh"] ==> command: ["tail", "-f", "/dev/null"]

# 重新啟動docker-compose
docker-compose --env-file .env up -d



```