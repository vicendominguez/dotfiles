for dir in tmp _backup undodir; do
  [ ! -d $HOME/.vim-tmp/$dir ] && mkdir -p $HOME/.vim-tmp/$dir
done

