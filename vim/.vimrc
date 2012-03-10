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
"Start in INSERT mode (woohoo!)!
"   :start

"Easy save/quit
   "map w :mkview<CR>:w<CR>
   "map q :q<CR>

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

"Delete lines in INSERT mode
   imap  <ESC>ddi

"Add column to display folds
   set foldcolumn=3
   highlight FoldColumn ctermfg=black ctermbg=16

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

"Make accessing the NERDTree easier  
   map  :NERDTreeToggle<cr>
   imap  <ESC>:NERDTreeToggle<cr>i
   "Single click to open dirs
   let NERDTreeMouseMode=2
   "Ignore *.class files
   let NERDTreeIgnore=['\.class$']
   "Close the tree when opening something
   let NERDTreeQuitOnOpen=1

"Allow for easier access to "make" functionality
   map  :make<cr>  
   imap  <ESC>:make<cr>
   map  :copen 10<cr>
   imap  <ESC>:copen 10<cr>i
   map  :cclose<cr>
   imap  <ESC>:cclose<cr>

"Make it easier to commit
   :ab svc !svn commit % -m
   :ab sop System.out.println

"Save fold positions at exit and load at startup
   au BufWinLeave *.java mkview 
   au BufWinEnter *.java silent loadview 

au BufWinEnter *.sml mkview
au BufWinLeave *.sml silent loadview

" Enable filetype plugin
filetype plugin on

