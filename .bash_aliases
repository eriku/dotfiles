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
alias l='ls -al'
alias ll='ls -alFh'
alias lp='ls -p'
alias h=history
alias space='df -h'


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

alias vhosts='sbl /private/etc/apache2/extra/httpd-vhosts.conf'
alias hosts='sbl /etc/hosts'


# ------------------------------

# DRUSH
alias cc='drush cc all'
alias online='drush vset --always-set maintenance_mode 0'
alias offline='drush vset --always-set maintenance_mode 1'


# ------------------------------

# GIT
alias gst='git status'
alias gbr='git branch -a'


# ------------------------------

# HARVEST
alias man='gem man -ls'


# ------------------------------

# JEKYLL
alias jklstart="jekyll serve --watch --baseurl ''"
alias jklstartdraft="jekyll serve --draft --watch --baseurl ''"


# ------------------------------

# MYSQL
alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'
alias mysqlrestart='mysql.server restart'
alias mysqllog='sudo tail -f /private/var/log/mysql/error_log.err'


# -------------------------------

# PHP
alias phpstart="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.php54.plist"
alias phpstop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.php54.plist"

# - Switch php version
alias use_php53="brew unlink php54 && brew unlink php55 && brew unlink php53 && brew link php53"
alias use_php54="brew unlink php53 && brew unlink php55 && brew unlink php54 && brew link php54"
alias use_php55="brew unlink php53 && brew unlink php54 && brew unlink php55 && brew link php55"


# -------------------------------

# POSTGRESQL
alias poststart="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias poststop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

alias pgstart='lunchy start postgres'
alias pgstop='lunchy stop postgres'


# ------------------------------

# RAILS

alias railsstart='bundle exec rails s'


# -------------------------------

# REDIS
alias redisstart="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redisstop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
