# git-clone-with-set-git-config

To resolve git clone as well as set git config

## Usage

- User info setting with `git config --local`

  1. `vim ./git-clone.sh` to open the source.
  2. Set the field, `user_name` and `user_email`.
     > Will skip the step set git local config if the above field is empty.
  3. `:wq` to save and quit.

- Support git clone params after `git clone` while typing `repo address`.
