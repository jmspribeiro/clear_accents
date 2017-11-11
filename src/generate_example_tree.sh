#!/bin/sh

#workspace="."
workspace="workspace"

# create folders
mkdir -p "$workspace/João_Gonçalves/test_1"
mkdir -p "$workspace/João_Gonçalves/test_2"
mkdir -p "$workspace/João_Gonçalves/test_3"
mkdir -p "$workspace/André_Almeida/test_1"
mkdir -p "$workspace/André_Almeida/test_2"
mkdir -p "$workspace/André_Almeida/test_3"
mkdir -p "$workspace/Ruben_José/test_1"
mkdir -p "$workspace/Ruben_José/test_2"

# create some files
touch "$workspace/João_Gonçalves/test_1/one.txt"
touch "$workspace/João_Gonçalves/test_2/two.txt"
touch "$workspace/João_Gonçalves/test_3/three.txt"
touch "$workspace/André_Almeida/test_1/one.txt"
touch "$workspace/André_Almeida/test_2/two.txt"
touch "$workspace/André_Almeida/test_3/three.txt"
touch "$workspace/Ruben_José/test_1/one.txt"
touch "$workspace/Ruben_José/test_2/two.txt"