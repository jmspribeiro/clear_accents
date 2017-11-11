#!/bin/bash
#
# clear_accents.sh
#
# created on 2017/11/11 by Jorge Ribeiro

#workspace="."
workspace="workspace"
no_accent_folder="###no_accents_folder"
begin_path="$(pwd)"

# for now it doesn't work for symlinks
if [ -d "$workspace/$no_accent_folder" ]; then
  echo ""
  echo "Folder [$workspace/$no_accent_folder] already exists, consider deleting it."
  echo ""
  exit 1;
fi

mkdir -p "$workspace/$no_accent_folder"
cd "$workspace"


# find all files in the folder
for fl in $(find . -type f ); do
  file_path="$(dirname $fl)"
  #echo "path_file $file_path"

  # symlink without accents
  last_dir=$(basename $file_path | iconv -f utf8 -t ascii//TRANSLIT) 
  #echo "last_dir $last_dir"
  
  # relative path without accents
  file_path_clean=$(echo $file_path | iconv -f utf8 -t ascii//TRANSLIT)
  #echo "file_path_clean $file_path_clean"

  # create tree with no accents
  folder_to_create=$(readlink -m $no_accent_folder/$file_path_clean/../)
  #echo "folder $folder_to_create"
  mkdir -p "$folder_to_create"

  # create symlink to folder
  #echo "link $folder_to_create/$last_dir"
  # TODO: generate relative path
  ln -s $(readlink -m $file_path) "$folder_to_create/$last_dir"

done

# return to where we were
cd $begin_path
