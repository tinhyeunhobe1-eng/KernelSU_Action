#!/bin/bash
REPO_URL="https://github.com/rifsxd/KernelSU-Next"
BRANCH="main"

echo "=> Cloning KernelSU Next..."
git clone --depth=1 -b "$BRANCH" "$REPO_URL" ksu-next || exit 1
cd ksu-next || exit 1
cp -r ./* ../ 2>/dev/null || true
cd ..
echo "=> KernelSU Next installed!"
