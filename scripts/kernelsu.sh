#!/bin/bash
# KernelSU Next setup script

REPO_URL="https://github.com/rifsxd/KernelSU-Next"
BRANCH="next"

echo "=> Cloning KernelSU Next..."
git clone --depth=1 -b "$BRANCH" "$REPO_URL" ksu-next || {
    echo "Error: Failed to clone KernelSU Next"
    exit 1
}

cd ksu-next || exit 1

echo "=> Setting up KernelSU Next in kernel..."
cp -r ./* ../ || true
cd ..

echo "=> KernelSU Next installed successfully!"
