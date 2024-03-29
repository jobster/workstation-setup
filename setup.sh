#!/usr/bin/env bash
#
# setup.sh:  run the Pivotal workstation setup
#
# Arguments:
#   - a list of components to install, see scripts/opt-in/ for valid options
#

# Fail immediately if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;
clear

MY_DIR="$(dirname "$0")"
echo "Running scripts from directory: $MY_DIR"
echo "Create the workspace directory: ~/workspace"
mkdir -p ~/workspace

# NOTE: scripts are executed in a specific order!  Some later scripts rely on
# results such as directories or files that were created in earlier scripts.
source ${MY_DIR}/scripts/common/configure-oh-my-zsh.sh
source ${MY_DIR}/scripts/common/homebrew.sh

# Place any applications that require the user to type in their password here
brew install github
brew install zoom

source ${MY_DIR}/scripts/common/applications-common.sh

source ${MY_DIR}/scripts/common/git.sh
source ${MY_DIR}/scripts/common/git-aliases.sh
source ${MY_DIR}/scripts/common/unix.sh
source ${MY_DIR}/scripts/common/configuration-osx.sh
source ${MY_DIR}/scripts/common/configurations.sh

# For each command line argument, try executing the corresponding script in opt-in/
for var in "$@"
do
    echo "$var"
    FILE=${MY_DIR}/scripts/opt-in/${var}.sh
    echo "$FILE"
    if [ -f $FILE ]; then
        source ${FILE}
    else
       echo "Warning: $var does not appear to be a valid argument. File $FILE does not exist."
    fi
done

source ${MY_DIR}/scripts/common/finished.sh
