# UPDATE A BUNCH OF SOFTWARE
alias updateall='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update'

# EMPTY TRASH
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# SHOW / HIDE HIDDEN FILES
alias showfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidefiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# HIDE / SHOW ALL DESKTOP ICONS (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# REBUILD “OPEN WITH” MENU TO GET RID OF DUPLICATES
alias rebuildmenu="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user"
alias fixmenu="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user"

# ADD SPACER TO OS X DOCK
alias adddockspace="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
killall Dock"

# DISABLE OS X DASHBOARD
alias killdashboard="defaults write com.apple.dashboard mcx-disabled -boolean YES && killall Dock"
alias enabledashboard="efaults write com.apple.dashboard mcx-disabled -boolean NO && killall Dock"

# ------------------------------

# STANDARD ALIASES
alias cd..='cd ..'
alias l='ls -al'
alias ll='ls -alFh'
alias lp='ls -p'
alias h=history

# ------------------------------

# NAVIGATION
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# ------------------------------

# GIT
alias pushdev='git push origin develop'
alias pulldev='git pull origin develop'

# ------------------------------

# DRUSH
alias cc='drush cc all'
alias online='drush vset --always-set maintenance_mode 0'
alias offline='drush vset --always-set maintenance_mode 1'

# ------------------------------

# MYSQL
alias mysqlstart='sudo /usr/local/mysql/support-files/mysql.server start'
alias mysqlstop='sudo /usr/local/mysql/support-files/mysql.server stop'
alias mysqlrestart='sudo /usr/local/mysql/support-files/mysql.server restart'
alias mysqllog='sudo tail -f /private/var/log/mysql/error_log.err'

# ------------------------------

# APACHE
alias apachestart='sudo apachectl start'
alias apachestop='sudo apachectl stop'
alias apacherestart='sudo apachectl restart'
alias apachelog='tail -f /private/var/log/apache2/error_log'
alias apachelogerase='sudo rm -rf /private/var/log/apache2/error_log'
alias apachelogreset='sudo apachectl stop
sudo rm -rf /private/var/log/apache2/error_log
sudo apachectl start'

alias vhosts='sudo nano /private/etc/apache2/extra/httpd-vhosts.conf'
alias hosts='sudo nano /etc/hosts'

# ------------------------------

# RAILS
alias pgstart='postgres -D /usr/local/var/postgres'
alias pgstop='postgres -D /usr/local/var/postgres stop -s -m fast'
alias railsstart='bundle exec rails s'
