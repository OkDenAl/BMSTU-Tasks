# Лабораторная работа №3

### Особенности реализации

1) На данный момент язык оракула "захардкожен" и описывается автоматом Глушкова (взяли с прошлой лабы), его можно менять
непосредственно в коде файла main.cpp в параметрах `mainLangRegex` и `suffixLangRegex` (представляется в виде автомата).

*P.S. Планируется избавиться от этого решения и сделать оракул по граммматике, поэтому пока что работает в формате подобной заглушки*


2) В алгоритме L* проверка языков на эквивалетность проходит методом "бомбардировки" словами, представляющими собой
все возможные комбинации букв алфавита определенной длины. Тем самым получаем сразу минимальный контрпример, хоть и мб
алгоритм работает долго.

3) В примере с языком Дика при чтении алфавита слева направо каждая пара символов образует
один вид скобок (сначала открывающая, потом закрывающая), если символов нечетное количество, последний становится "свободным" - его вхождения не влияют на принадлежность слова языку. 


### Запуск
1) Сбилдить проект:
```
$ make generate
```
*При повторном запуске использовать*
```
$ make build-project
```
2) Запустить программу в обычном режиме (2 способа)
    1) ```
       $ ./build/lab3
       ```
    2) ```
        $ make run 
       ```
**ВАЖНО** При запуске программы поддерживаются следующие флаги:

1) `-a` `--alphabet` для указания алфавита
2) `-ra` `--regadm` для указания допуска на регулярность (используется при L*)
3) `-mtc` `--maxtrycount` для указания максимального количества попыток проверки на эквивалентность
4) `-pi` `--pumpit` для указания максимального количества итераций для накачки

* Если запускать через `make run` то необходимо прописать эти флаги в `Makefile`
* Для вывода в файл необходимо написать так:
```
$ make run >> file.txt 
```
