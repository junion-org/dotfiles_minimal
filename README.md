# dotfiles_minimal

minimal dotfiles

## requirements

- bash
- vim
- git

## installation

以下のような内容を.bash_profileに記述することで、特定ユーザのみ環境を変更できる
```bash
DOT_DIR=/path/to/dotfiles/dir
USER_NAME=`ps Tu | head -n 2 | tail -n 1 | awk '{print $1}'`
if [ $USER_NAME = "hogeuser" ]; then
        source $DOT_DIR/.bash_profile
fi
```
