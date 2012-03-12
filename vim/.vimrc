""Personal Vim settings
   set viminfo='20,\"50,%
   set history=500
   set nu!
   set ai!
   set incsearch
   set tabstop=3
   set shiftwidth=3
   set backspace=2
   set expandtab
   set showmatch
   set softtabstop=3
"Wrap lines
   set wrap "Wrap lines
   set linebreak "Break at <tab>!@*-+;:,./?
   set nolist " Enable linebreak - Disable with set list
   set textwidth=0
   set wrapmargin=0 "Characters from the right border to wrap from
"end wrap lines
   syntax on
   set cinwords=if,unless,else,while,until,do,for,switch,case
"Add syntax highlighting for .cu
    au BufNewFile,BufRead *.cu set ft=cu

"Easy undo/redo
   map  :undo<CR>
   map  :redo<CR>
   imap  <ESC>:undo<CR>i
   imap  <ESC>:redo<CR>i

"Better 'get to beginning/end of line' in command mode
   map OH 0i
   map OF $iOC

"Mouse support
   set mouse=a

"Highlight lines longer than 80 chars
   match ErrorMsg '\%>80v.\+'

"Make tabbing from within Vim better 
   "Easier to make tabs
   map  :tabnew<cr>
   imap  <ESC>:tabnew<cr>i
   "Easier to switch tabs
   map [1;6C :tabn<cr>
   imap [1;6C <ESC>:tabn<cr>
   map [1;6D :tabp<cr>
   imap [1;6D <ESC>:tabp<cr>        
   map ^` gt<cr>
   imap ^` gt<cr>i


" Enable filetype plugin
   filetype plugin on

"Make accessing the NERDTree easier  
   map  :NERDTreeToggle<cr>
   imap  <ESC>:NERDTreeToggle<cr>i
   "Single click to open dirs
   let NERDTreeMouseMode=2
   "Ignore *.class files
   let NERDTreeIgnore=['\.class$']
   "Close the tree when opening something
   let NERDTreeQuitOnOpen=1

" Autocompletion configuration
   set completeopt=longest,menuone
   inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
   inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
      \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

   inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
      \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Change windows with Alt + arrow keys
   nmap <silent> <A-Up> :wincmd k<CR>
   nmap <silent> <A-Down> :wincmd j<CR>
   nmap <silent> <A-Left> :wincmd h<CR>
   nmap <silent> <A-Right> :wincmd l<CR>

" Open taglist with F8   
   nnoremap <silent> <F8> :TlistUpdate \| TlistToggle<CR>
