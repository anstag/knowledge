# План обучения курса: "Основы работы с Git и GitHub"

## 1. Пояснения
> git-scm.com: сайт с документацией

## 2. Git install
> Linux: sudo apt-get install git  
> Red Hat: sudo yum install git  

## 3. Git install continue

## 4. Конфигурация
> .gitconfig  
```
$ git config --global user.name "User Name"
$ git config --global user.email "User Email"
$ git config -l
```

## 5. Работа с локальным репозиторием
```
$ git init
$ git status
$ git add . или git add *
$ git commit -m "Message commit"
```

## 6. История изменений, .gitignore, восстановление файлов
> .gitignore  

> все коммиты в бд  
`$ git log`  

> 1 коммит из бд  
`$ git log -1`  

> 1 коммит из бд + покажет изменения  
`$ git log -1 -p`  

> вернуть файл к последнему коммиту  
`$ git checkout -- fileName.txt`  

> показывает, какие изменения пойдут в коммит  
`$ git diff --staged`  

## 7. Регистрация аккаунта

## 8. Загрузка проекта на GitHub
`$ git clone URL`  
`$ git push origin`  

## 9. Hастройка логина в GitHub через SSH Key на Linux
> с какой ссылкой соединен репозиторий  
`$ git remote -v`  

> устанавливаем новую ссылку удаленного репозитория  
`$ git remote set-url origin URL`  

## 10. Hастройка логина в GitHub через SSH Key на Windows

## 11. Создание и работа с ветвлениями
> показать ветки  
`$ git branch`  

> создать ветку  
`$ git branch branchName`  

> удалить ветку  
`$ git branch -d branchName`  

> перейти на другую ветку  
`$ git checkout branchName`  

> создать и перейти на новую ветку  
`$ git checkout -b branchName`  

> слияние веток  
`$ git merge branchName`  

## 12. Возврат на предыдущие версии
> вернуться на определенную точку  
`$ git checkout hashCommit`  

> вернуться обратно  
`$ git checkout master`  

> изменение коммита  
`$ git commit --amend`  

> удалить коммиты WARNING!  
`$ git reset --hard HEAD~countCommits`  

> удаление коммитов с сохранением последней версии  
`$ git reset --soft HEAD~countCommits`  

## 13. Полный рабочий цикл действий Git + GitHub
> создание новой ветки в удаленном репозитории  
`$ git push --set-upstream origin branchName`  

> удаление ветки из удаленного репозитория  
`$ git push origin --delete branchName`  

## 14. Добавление тегов (релизов)
> Текущие теги  
`$ git tags`  

> Добавление нового тега  
`$ git tag -a v0.0.1 -m "you message"`

> Загрузка тега в удаленный репозиторий 
`$ git push v0.0.1`

> Загрузка всех тегов в удаленный репозиторий 
`$ git push --tags`
