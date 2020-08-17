install:

1) `composer install`
2) setup .env
3) `php artisan migrate`
4) `php artisan db:seed --class=AdminTablesSeeder`
5) Создать админа `php artisan admin:create-user`


API:
1) Headers: `Accept: application/json`
2) `php artisan route:list`
