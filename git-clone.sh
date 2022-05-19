#!/bin/bash
# git clone repo and set git config --local

user_name=""
user_email=""

echo "Please enter repo address: (support git clone params)"
read repo_address
echo "Start cloning ${repo_address}..."
git clone ${repo_address}
if [[ $user_name && $user_email ]]; then
  test $? -ne 0 &&
    echo 'error: Git clone failed! 🙅<200d>♂️' && exit
  directory_name=$(echo ${repo_address##*/} | cut -d . -f1)
  echo "Switching directory '${directory_name}'..."
  cd ${directory_name}
  test $? -ne 0 &&
    echo 'error: Switch directory failed! 🙅<200d>♂️' && exit
  echo "Setting git local config..."
  git config --local user.name ${user_name}
  test $? -ne 0 &&
    echo 'error: Set git local config "user.name" failed! 🙅<200d>♂️' && exit
  git config --local user.email ${user_email}
  test $? -ne 0 &&
    echo 'error: Set git local config "uesr.email" failed! 🙅<200d>♂️' && exit
fi
if [[ !$user_name && !$user_email ]]; then
  echo "⚠️  Whitout set git config --local because user_name or user_email is empty!"
fi
echo "👤 user_name: ${user_name}"
echo "💼 nuser_email: ${user_email}"
echo "🌈 Successful!"
