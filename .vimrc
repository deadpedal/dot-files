"Enable Syntax highlighting"
syntax enable

colorscheme elflord

"Enable Filetype plugin"
filetype indent plugin on

"Make vim behave as it should"
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=eol,start,indent

"Ignore case on search and highlight result"
set ignorecase
set hlsearch

"Confirm before exit if unsaved changes."
set confirm

"Enable line numbers"
set number

"Disable Annoying bells"
set noerrorbells
set novisualbell

"Statusline"
set laststatus=2
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
"Color Statusline in cli"
function! InsertStatuslineColor(mode)
  if a:mode=='i'
    hi statusline ctermfg=green
  elseif a:mode=='r'
    hi statusline ctermfg=red
  else
    hi statusline ctermfg=white
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertChange * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline ctermfg=white
hi statusline ctermfg=white

"Color Statusline in terminal"
function! InsertStatuslineColorGUI(mode)
  if a:mode=='i'
    hi statusline guibg=green
  elseif a:mode=='r'
    hi statusline guibg=red
  else
    hi statusline guibg=white
  endif
endfunction

au InsertEnter * call InsertStatuslineColorGUI(v:insertmode)
au InsertChange * call InsertStatuslineColorGUi(v:insertmode)
au InsertLeave * hi statusline guibg=white
hi statusline guibg=white
