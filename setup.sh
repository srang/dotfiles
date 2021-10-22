#!/usr/bin/env bash
#          _                    _
# ___  ___| |_ _   _ _ __   ___| |__
#/ __|/ _ \ __| | | | '_ \ / __| '_ \
#\__ \  __/ |_| |_| | |_) |\__ \ | | |
#|___/\___|\__|\__,_| .__(_)___/_| |_|
#                   |_|
# Used for reconfiguring local system
###############################################################################
# exit on command errors (so you MUST handle exit codes properly!)
set -e
# pass trap handlers down to subshells
set -E
# capture fail exit codes in piped commands
set -o pipefail
# execution tracing debug messages (for debugging option/input logic)
# set -x

# Program configuration and helpers
###############################################################################

# Error handler
on_err() {
    echo ">> ERROR: $?"
    FN=0
    for LN in "${BASH_LINENO[@]}"; do
        [ "${FUNCNAME[$FN]}" = "main" ] && break
        echo ">> ${BASH_SOURCE[$FN]} $LN ${FUNCNAME[$FN]}"
        FN=$(( FN + 1 ))
    done
}
trap on_err ERR

# Exit handler
declare -a EXIT_CMDS
add_exit_cmd() { EXIT_CMDS+="$*;  "; }
on_exit(){ eval "${EXIT_CMDS[@]}"; }
trap on_exit EXIT

# absolute path to command (used for show_help)
#CMD="$(readlink -f $0)"

# Defaults and command line options
[ "$VERBOSE" ] ||  VERBOSE=
[ "$QUIET" ]   ||  QUIET=
[ "$DEBUG" ]   ||  DEBUG=
[ "$DATEFORM" ]||  DATEFORM="%F %T(%Z)"
[ "$OUTPUT" ]  ||  OUTPUT="/tmp/config-setup.log" # useful for catching errors

# Logging helpers
out() { echo "$(date +"$DATEFORM"): $*" | tee $OUTPUT; }
err() { out "$*" 1>&2; }
vrb() { [ ! "$VERBOSE" ] || out "$@"; }
dbg() { [ ! "$DEBUG" ] || err "$@"; }
die() { err "EXIT: $1" && [ "$2" ] && [ "$2" -ge 0 ] && exit "$2" || exit 1; }

# Show help function to be used below
show_help() {
    awk 'NR>1{print} /^(###|$)/{exit}' "$CMD"
    echo "USAGE: $(basename "$CMD") [options] [command]"
    echo "OPTS:"
    MSG=$( sed -n '/^## Options/,/-?/p' "$CMD" | head -n -1 | sed -e 's/^[[:space:]]*/  /' -e 's/|/, /' -e 's/)//' | grep '^  -')
    EMSG=$(eval "echo \"$MSG\"")
    echo "$EMSG"
    echo "CMDS:"
    MSG=$( sed -n '/^## Options/,/-?/p' "$CMD" | head -n -1 | sed -e 's/^[[:space:]]*/  /' | grep '^  [a-z|]\+) ' | sed -e 's/|/, /'  -e 's/)//' )
    EMSG=$(eval "echo \"$MSG\"")
    echo "$EMSG"
}


# TODO implement this
# check OS

### MAC

# check if homebrew installed
#which brew || 
# change default shell
# brew install ansible
# install rvm
# terminal change option as meta key
# screenshot change default location
ansible-playbook configure-local.yaml
