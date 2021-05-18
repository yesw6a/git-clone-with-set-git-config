  #!/bin/bash
  # git clone repo and set git config --local
  
  echo "Please enter repo address: "
  read repo_address
  echo "Start cloning ${repo_address}..."
  git clone ${repo_address}
  test $? -ne 0 \
   && echo 'error: Git clone failed! 🙅<200d>♂️' && exit
 directory_name=`echo ${repo_address##*/} | cut -d . -f1`
 echo "Switching directory '${directory_name}'..."
 cd ${directory_name}
 test $? -ne 0 \
  && echo 'error: Switch directory failed! 🙅<200d>♂️' && exit
 echo "Setting git local config..."
 git config --local user.name xxxx
 test $? -ne 0 \
  && echo 'error: Set git local config "user.name" failed! 🙅<200d>♂️' && exit
 git config --local user.email xxxx@xxx.com
 test $? -ne 0 \
  && echo 'error: Set git local config "uesr.email" failed! 🙅<200d>♂️' && exit
 echo "Successful!🌈"
