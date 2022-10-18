# Проект для сравнения производительности роботов различных платформ
На данный момент проект содержит три идентичных тест-кейса, выполненных на платформах "Primo RPA" и "UIpath":
1. "RPAchallenge" - заполняет тестовые формы на веб странице данными из скачанного xlsx файла;
2. "Heavy code" - выполняет "тяжелый" код на c#;
3. "Create files and folders" - тест работы с файловой системой, создающий папки и файлы, а потом удаляющий их.

Для измерения времени работы роботов используются скрипты powershell, находящиеся в директории с проектом. Их необходимо запустить перед запуском отладки или робота. После завершения работы процесса, в командной строке powershell будет отображено время работы в секундах, включающее время запуска и остановки процесса. Чтобы измерить время внутри процесса, нужно использовать специально созданные последовательности "Internal process time", внутрь которых помещается тестовый процесс. Результатом их выполнения будет сообщение, содержащее время выполнения в секундах. Важно отключать активность сообщения при измерении времени скриптом powershell.

Алгоритм кейса "RPAchallenge":
1. Запущенный процесс определяет путь, по которому он находится;
2. По ссылке "https://rpachallenge.com/assets/downloadFiles/challenge.xlsx" в директорию, определенную в п. 1, скачивается файл chalenge.xlsx;
3. Из файла challenge.xlsx считываются данные;
4. Робот запускает браузер на странице "https://rpachallenge.com" и заполняет полученными данными соответствующие поля.

Алгоритм кейса "Heavy code":
Запускается c# код, вычисляющий самое большое простое число в определенном диапазоне (задается условием в теле кода).

Алгоритм кейса "Create files and folders":
1. Запущенный процесс определяет путь, по которому он находится;
2. Запускается цикл на необходимое количество итераций, в котором:
  - создается директория;
  - из текстового файла в папке проекта "Text.txt" считывается текст;
  - создается файл внутри директории;
  - в созданный файл записывается текст.
3. Запускается цикл, в котором:
  - удаляется созданный в предыдущем цикле файл;
  - удаляется созданная в предыдущем цикле директория.
