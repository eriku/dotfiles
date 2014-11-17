# Create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$@"
}

function push() {
  git push origin "$@"
}

function pull() {
  git pull origin "$@"
}

function gittop(){
  top=$(git rev-parse --show-toplevel)
  if [ 0 -eq $? ]; then
    cd $top
  fi
}

function last_two_dirs {
  pwd |rev| awk -F / '{print $1,$2}' | rev | sed s_\ _/_
}