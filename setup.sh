
#!/bin/sh

RC='\033[0m'
RED='\033[0;31m'

get_latest_release() {
  latest_release=$(curl -s https://api.github.com/repos/harilvfs/rdevs/releases | 
    grep -oP '"tag_name": "\K[^"]*' | 
    head -n 1)
  if [ -z "$latest_release" ]; then
    echo "Error fetching release data" >&2
    return 1
  fi
  echo "$latest_release"
}

redirect_to_latest_pre_release() {
  local latest_release
  latest_release=$(get_latest_release)
  if [ -n "$latest_release" ]; then
    url="https://github.com/harilvfs/rdevs/releases/download/$latest_release/rdevs"
  else
    echo 'Unable to determine latest pre-release version.' >&2
    echo "Using latest Full Release"
    url="https://github.com/harilvfs/rdevs/releases/latest/download/rdevs"
  fi
  addArch
  echo "Using URL: $url"  
}

check() {
    local exit_code=$1
    local message=$2

    if [ $exit_code -ne 0 ]; then
        echo -e "${RED}ERROR: $message${RC}"
        exit 1
    fi
}

addArch() {
    case "${arch}" in
        x86_64);;
        *) url="${url}-${arch}";;
    esac
}

findArch() {
    case "$(uname -m)" in
        x86_64|amd64) arch="x86_64" ;;
        aarch64|arm64) arch="aarch64" ;;
        *) check 1 "Unsupported architecture"
    esac
}

findArch
redirect_to_latest_pre_release

TMPFILE=$(mktemp)
check $? "Creating the temporary file"

echo "Downloading rdevs from $url"  
curl -fsL $url -o $TMPFILE
check $? "Downloading rdevs"

chmod +x $TMPFILE
check $? "Making rdevs executable"

"$TMPFILE"
check $? "Executing rdevs"

rm -f $TMPFILE
check $? "Deleting the temporary file"

