#!/bin/sh

# Symlink the git pre-commit hook to its destination: run ./git-hook-install.sh

PROJECT_DIR="$(dirname $(dirname $(dirname "$(realpath "$0")")))"
echo "Base project dir location: ${PROJECT_DIR}"

if [ ! -h "$PROJECT_DIR/.git/hooks/pre-commit" ] ; then
    ln -s "$PROJECT_DIR/docker/git-hooks/pre-commit" "$PROJECT_DIR/.git/hooks/pre-commit"
    echo "Pre-commit link is set";
fi

if [ ! -h "$PROJECT_DIR/.git/hooks/pre-push" ] ; then
    ln -s "$PROJECT_DIR/docker/git-hooks/pre-push" "$PROJECT_DIR/.git/hooks/pre-push"
    echo "Pre-push link is set";
fi
