#!/usr/bin/env bash
for name in *; do
  if [ ! $name == "install.sh" ]; then
    target="$HOME/.$name"

    if [ -h $target ]; then
      echo "Skipping file $target."
    elif [ -d $target ]; then
      echo "Skipping directory $target."
    fi

    ln -s "$PWD/$name" "$target"
    echo "Linked $PWD/$name to $target."
  fi
done
