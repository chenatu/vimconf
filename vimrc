call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>  
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
set cscopequickfix=s-,c-,d-,i-,t-,e-
set nocp
filetype plugin on
let g:SuperTabDefaultCompletionType="context"  
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

nmap wm :WMToggle<CR>

function! <SID>ToggleWindowsManager()
  if IsWinManagerVisible()
     call s:CloseWindowsManager()
  else
     call s:StartWindowsManager()
     exe 'q'
  end
endfunction
colo evening
set autoindent
set tabstop=4
set shiftwidth=4
p;   set mouse=a  

