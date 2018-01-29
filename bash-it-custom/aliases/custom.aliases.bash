#@IgnoreInspection BashAddShebang

## COPY
# cp -v ~/.dotfiles/bash-it-custom/aliases/custom.aliases.bash ~/.bash_it/aliases/¡

## Navigation

## Gradle
alias gwcc='./gradlew clean check'
alias gwct='./gradlew clean test integrationTest'
alias gwcodenarc='./gradlew codenarcMain codenarcTest codenarcIntegrationTest'
alias gw='./gradlew'
# alias cleanDockerCleanCheckCircleEnv='docker stop postgres && sudo rm -rf /tmp/postgres_data/ && docker start postgres && ./gradlew clean check -Dgrails.env=circleci'

## GRAILS
alias gt='sdk switch && grails -reloading test --non-interactive'
alias gta='sdk switch && grails test-app -echoOut --non-interactive'
alias grun='sdk switch && grails -reloading run-app --non-interactive'
alias gcta='sdk switch && clear && grails clean-all && grails compile && grails test-app'
alias gj7='sdk switch && sdk use java 7u80-oracle && erst'
#alias opentests='open target/test-reports/html/index.html'

## JAVA
alias setjdk7='sdk use java 7u80-oracle'
alias setjdk8='sdk use java 8u151-oracle'

## Bash-It
alias copyBashItCustom='cp -v ~/.dotfiles/bash-it-custom/aliases/custom.aliases.bash ~/.bash_it/aliases/ && cp -v ~/.dotfiles/bash-it-custom/lib/custom.bash ~/.bash_it/lib/ && source ~/.bashrc'
alias editBashItAliases='subl ~/.dotfiles/bash-it-custom/aliases/custom.aliases.bash'
## Open reports
alias opentestreport='xdg-open build/reports/tests/index.html &> /dev/null'
alias opencobertura='xdg-open build/reports/cobertura/index.html &> /dev/null'

alias runcheck='runCodenarcCleanCheckExitIfFailure'
alias runtest='runCleanTest'

## GIT
alias pull="git pull && git submodule update --init --recursive ; alert"
alias push="git push ; alert"

## alias citrixbox='z citrix && vagrant up && vagrant ssh -- -X firefox -no-remote' #relies on fasd

# sublime text
alias s='subl'

# Nice path
alias path='echo -e ${PATH//:/\\n}'

# From: http://askubuntu.com/questions/409611/desktop-notification-when-long-running-commands-complete
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


alias g='sdk switch'
alias f='less +F '

#alias erst='export GRADLE_OPTS="-Ddev.erst=true" && export GRAILS_OPTS="-Ddev.erst=true" && echo "ERST enabled"'
#alias erst-debug='export GRADLE_OPTS="-Ddev.erst=true -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005" && export GRAILS_OPTS="-Ddev.erst=true -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005" && echo "ERST debug enabled"'

alias erst='touch ~/.erst_enabled && echo "ERST is now enabled"'
alias no-erst='rm ~/.erst_enabled && echo "ERST is now disabled"'
alias er3='echo "Preparing ER3 project" && cd ~/projects/erst/er3 && sdk use grails 2.4.5 && sdk use gradle 2.3 && setjdk7 && erst'
alias er3-update='er3 && er3-dev-tools/git-pull-all.sh && er3-dev-tools/grails-refresh-dependencies.sh'

alias pwdc='pwd | pbcopy'

alias vpn='/opt/cisco/anyconnect/bin/vpn'
alias vpnui='/opt/cisco/anyconnect/bin/vpnui'

########################################################################################################################
## From bash-it -> osx.aliases.bash
########################################################################################################################

# From http://apple.stackexchange.com/questions/110343/copy-last-command-in-terminal
#alias copyLastCmd='fc -ln -1 | awk '\''{$1=$1}1'\'' ORS='\'''\'' | pbcopy'


########################################################################################################################
## UNALIAS
########################################################################################################################
unalias piano
unalias irc
unalias rb
unalias py
unalias ipy
unalias edit
unalias pager
#unalias pcurl
unalias pass
#unalias shuf

