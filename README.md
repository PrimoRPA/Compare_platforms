# Проект для сравнения производительности роботов различных платформ
На данный момент проект содержит два идентичных процесса, выполненных на платформах "Primo RPA" и "UIpath".

Алгоритм процессов таков:
1. Запущенный процесс определяет путь, по которому он находится;
2. По ссылке "https://rpachallenge.com/assets/downloadFiles/challenge.xlsx" в директорию, определенную в п. 1, скачивается файл chalenge.xlsx;
3. Из файла challenge.xlsx считываются данные;
4. Робот запускает браузер на странице "https://rpachallenge.com" и заполняет полученными данными соответствующие поля.

Для измерения времени работы роботов используются скрипты powershell, которые необходимо запускать перед запуском отладки или робота.