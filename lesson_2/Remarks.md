Часто есть смысл использовать автообновление значения поля при операции UPDATE, например: "updated_at DATETIME ON UPDATE now()".
Подумайте о возможности использовать значения полей по умолчанию. Например, для даты создания записи можно использовать поле вида "created_at DATETIME default now()". Справка в офиц. доках: https://dev.mysql.com/doc/refman/8.0/en/data-type-defaults.html
Нет кода по задаче на вставку данных. Надеюсь, эта тема понятна.