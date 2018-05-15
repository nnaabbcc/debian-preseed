
# install visual studio code extensions
code --install-extension ms-vscode.cpptools
code --install-extension twxs.cmake
code --install-extension vector-of-bool.cmake-tools
code --install-extension maddouri.cmake-tools-helper
code --install-extension AlanWalk.markdown-toc
code --install-extension ms-python.python
code --install-extension vscodevim.vim

mkdir -p $HOME/.config/Code/User/
cat > $HOME/.config/Code/User/settings.json  << EOL
{
    "vim.useCtrlKeys": false
}
EOL

# set git configuration
git config --global log.decorate auto

cat >> $HOME/.bashrc << EOL

if [ -f /usr/lib/git-core/git-sh-prompt ]; then
  . /usr/lib/git-core/git-sh-prompt
  PS1='\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[36m\]\$(__git_ps1 " (%s)")\[\033[00m\]\$ '
fi

EOL

