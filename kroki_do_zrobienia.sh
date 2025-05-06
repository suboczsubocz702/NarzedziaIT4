#Wyświetlenie daty

git checkout -b date-feature
# Create script.sh with the initial --date functionality
git add script.sh
git commit -m "Add --date functionality to display current date"
git push origin date-feature
git checkout main
git merge date-feature

#Utworzenie pliku 

git checkout -b gitignore-feature
git add .gitignore
git commit -m "Add .gitignore to ignore files containing 'log'"
git push origin gitignore-feature
git checkout main
git merge gitignore-feature

#Tworzenie 100 plików log

git checkout -b logs-feature
# Update script.sh to include --logs functionality
git add script.sh
git commit -m "Add --logs to create 100 log files"
git push origin logs-feature
git checkout main
git merge logs-feature

#Tworzenie n plków log

git checkout -b logs-n-feature
# Update script.sh to handle --logs with an argument
git add script.sh
git commit -m "Add --logs N to create N log files"
git push origin logs-n-feature
git checkout main
git merge logs-n-feature

#Wyświetlanie pomocy

git checkout -b help-feature
# Update script.sh to include --help functionality
git add script.sh
git commit -m "Add --help to display available options"
git push origin help-feature
git checkout main
git merge help-feature

#Utworzenie tagu
git tag v1.0
git push origin v1.0

#Dodanie flag 

git checkout -b short-flags-feature
# Update script.sh to include -h, -l, -d
git add script.sh
git commit -m "Add short flags -h, -l, -d"
git push origin short-flags-feature
git checkout main
git merge short-flags-feature

#Help bez mergu
git checkout -b help-update-feature
# Update show_help function in script.sh to include new flags
git add script.sh
git commit -m "Update --help with new flags"
git push origin help-update-feature

#Dodanie opcji --init

git checkout -b init-feature
# Update script.sh to include --init functionality
git add script.sh
git commit -m "Add --init to clone repo and update PATH"
git push origin init-feature
git checkout main
git merge init-feature

#Dodanie opcji --error

git checkout -b error-feature
# Update script.sh to include --error and -e
git add script.sh
git commit -m "Add --error and -e to create error files"
git push origin error-feature
git checkout main
git merge error-feature

#modyfikacja gitignore

git checkout -b gitignore-update
git add .gitignore
git commit -m "Update .gitignore to ignore error files"
git push origin gitignore-update
git checkout main
git merge gitignore-update

#Dokończenie opcji --help
git checkout help-update-feature
git rebase main
git push origin help-update-feature --force
git checkout main
git merge help-update-feature
