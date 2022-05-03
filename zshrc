# Function switch-php [to version]
# example switch-php php@8.1
switch-php() {
  echo '----> Valet use php version'
  valet use $1

  echo '----> Add export path to file ~/.switch-php'
  echo -n > ~/.switch-php
  echo 'export PATH=''"/usr/local/opt/'$1'/bin:$PATH"' >> ~/.switch-php
  echo 'export PATH=''"/usr/local/opt/'$1'/sbin:$PATH"' >> ~/.switch-php
  source ~/.switch-php

  echo '----> Reread .zshrc '
  . ~/.zshrc

  echo '----> Show PHP version'
  php -v
  echo '----> DONE!'
}