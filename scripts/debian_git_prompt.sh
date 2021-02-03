#!/bin/bash

cd ~/
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

echo "######## Git prompt ########" >> ~/.bashrc
echo 'if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then' >> ~/.bashrc
echo '	GIT_PROMPT_ONLY_IN_REPO=1' >> ~/.bashrc
echo '	source $HOME/.bash-git-prompt/gitprompt.sh' >> ~/.bashrc
echo 'fi' >> ~/.bashrc
