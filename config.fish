source ~/.config/fish/functions/fish_prompt.fish 

set -gx PATH '/Users/alireza/.rbenv/shims' $PATH
set -gx PATH '/Users/alireza/.cargo/bin' $PATH
set -gx PATH '/Users/alireza/golang/bin' $PATH
set -gx PATH '/Users/alireza/go/bin' $PATH
set -gx PATH '/Users/alireza/bin' $PATH
set -gx PATH '/usr/local/opt/gnu-which/libexec/gnubin' $PATH
set -gx PATH '/Applications/Chromium.app/Contents/MacOS' $PATH
set -gx RBENV_SHELL fish
set fish_greeting

source '/usr/local/Cellar/rbenv/1.1.1/libexec/../completions/rbenv.fish'
command rbenv rehash 2>/dev/null
function rbenv
  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case rehash shell
    source (rbenv "sh-$command" $argv|psub)
  case '*'
    command rbenv "$command" $argv
  end
end

alias vi="vim"
alias be="bundle exec"

function vbundle
  pushd ~/.vim/bundle
  git clone $argv
  popd
end
set -g fish_user_paths "/usr/local/opt/ncurses/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/protobuf@3.6/bin" $fish_user_paths
