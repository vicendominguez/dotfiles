if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
 call neobundle#begin(expand('~/.vim/bundle/'))


" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
    \ 'build' : {
    \     'windows' : 'make -f make_mingw32.mak',
    \     'cygwin' : 'make -f make_cygwin.mak',
    \     'mac' : 'make -f make_mac.mak',
    \     'unix' : 'make -f make_bsd.mak',
    \    },
    \ } " Interactive command execution in Vim
NeoBundle 'mileszs/ack.vim' " Vim plugin for Ack
NeoBundle 'kien/ctrlp.vim' " Full path fuzzy file, buffer, mru, tag, finder for Vim
NeoBundle 'scrooloose/nerdtree' " A tree explorer
NeoBundle 'ervandew/supertab' " Perform all your vim insert mode completions with Tab
NeoBundle 'godlygeek/tabular' " text filtering and alignment
NeoBundle 'bling/vim-airline' " lean & mean status/tabline for vim that's light as air
NeoBundle 'tpope/vim-commentary' " comment stuff out
NeoBundle 'tpope/vim-endwise' " wisely add 'end' in ruby, endfunction/endif/more
NeoBundle 'tpope/vim-fugitive' " a Git wrapper
NeoBundle 'plasticboy/vim-markdown' " Markdown Vim Mode
NeoBundle 'airblade/vim-gitgutter' " A Vim plugin which shows a git diff in the sign-column
NeoBundle 'benmills/vimux' " interact with tmux
NeoBundle 'mattn/webapi-vim' " vim interface to Web API
NeoBundle 'nelstrom/vim-textobj-rubyblock' " A custom text object for selecting ruby blocks.
NeoBundle 'kana/vim-textobj-user' " This is a dependency for the above ruby plugin
NeoBundle 'junkblocker/patchreview-vim' " doing single, multi-patch or diff code reviews
NeoBundle 'elzr/vim-json' " A better JSON for Vim
NeoBundle 'moll/vim-bbye' " Delete buffers and close files in Vim without closing your windows
NeoBundle 'AndrewRadev/splitjoin.vim' " simplifies the transition between multiline and single-line code
NeoBundle 'fatih/vim-go' " Go development
NeoBundle 'scrooloose/syntastic' " syntastic for display errores in realtime
call neobundle#end()
