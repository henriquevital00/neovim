" vim: foldmethod=marker foldmarker={{{,}}}
"       _             _
"__   _(_)_ __ ___   (_)___    __ ___      _____  ___  ___  _ __ ___   ___
"\ \ / / | '_ ` _ \  | / __|  / _` \ \ /\ / / _ \/ __|/ _ \| '_ ` _ \ / _ \
" \ V /| | | | | | | | \__ \ | (_| |\ V  V /  __/\__ \ (_) | | | | | |  __/
"  \_/ |_|_| |_| |_| |_|___/  \__,_| \_/\_/ \___||___/\___/|_| |_| |_|\___|
"
"set verbosefile=/tmp/verbose.vim
"set verbose=15



filetype plugin on
set spell
" ===================================Plugins=================================={{{
" ____  _             _           "
"|  _ \| |_   _  __ _(_)_ __  ___ "
"| |_) | | | | |/ _` | | '_ \/ __|"
"|  __/| | |_| | (_| | | | | \__ \"
"|_|   |_|\__,_|\__, |_|_| |_|___/"
"               |___/             "
call plug#begin('~/.config/nvim/plugged')

" Programming: General Tools{{{
Plug 'xavierd/clang_complete', {'on': []}
Plug 'w0rp/ale', {'for':['c','cpp','h', 'hpp']}

" Language Server
Plug 'autozimu/LanguageClient-neovim', {
    \ 'on': [],
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ } " Disabled
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins'}
"}}}
" ==================================General Plugins================================={{{
"  ____                      _   ____  _             _
" / ___|_ __   ___ _ __ __ _| | |  _ \| |_   _  __ _(_)_ __  ___
"| |  _| '_ \ / _ \ '__/ _` | | | |_) | | | | |/ _` | | '_ \/ __|
"| |_| | | | |  __/ | | (_| | | |  __/| | |_| | (_| | | | | \__ \
" \____|_| |_|\___|_|  \__,_|_| |_|   |_|\__,_|\__, |_|_| |_|___/
"                                              |___/
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'jiangmiao/auto-pairs'
Plug 'markstory/vim-zoomwin'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tibabit/vim-templates'
"}}}
" ====================================Customize neovim initial page================================={{{
Plug 'mhinz/vim-startify'
"}}}
" ==================================Syntax checker and autocomplete================================={{{
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
"}}}
" ==================================    Color-Schemes  ============================================={{{
"  ____      _            ____       _
" / ___|___ | | ___  _ __/ ___|  ___| |__   ___ _ __ ___   ___  ___
"| |   / _ \| |/ _ \| '__\___ \ / __| '_ \ / _ \ '_ ` _ \ / _ \/ __|
"| |__| (_) | | (_) | |   ___) | (__| | | |  __/ | | | | |  __/\__ \
" \____\___/|_|\___/|_|  |____/ \___|_| |_|\___|_| |_| |_|\___||___/
"
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'
"}}}
" ==================================Snippets============================================={{{
" ____  _   _ ___ ____  ____  _____ _____ ____
"/ ___|| \ | |_ _|  _ \|  _ \| ____|_   _/ ___|
"\___ \|  \| || || |_) | |_) |  _|   | | \___ \
" ___) | |\  || ||  __/|  __/| |___  | |  ___) |
"|____/|_| \_|___|_|   |_|   |_____| |_| |____/
"

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"}}}
"===========================================TODO========================================{{{
" _____         _          _____ ___  ____   ___
"|_   _|_ _ ___| | _____  |_   _/ _ \|  _ \ / _ \
"  | |/ _` / __| |/ / __|   | || | | | | | | | | |
"  | | (_| \__ \   <\__ \   | || |_| | |_| | |_| |
"  |_|\__,_|___/_|\_\___/   |_| \___/|____/ \___/
"
Plug 'freitass/todo.txt-vim'
Plug 'aserebryakov/vim-todo-lists'
"}}}
" ==================================Python================================={{{
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'zchee/deoplete-jedi', {'on':[], 'do': ':UpdateRemotePlugins' } " Disabled
"}}}
" Programming: Plugins Related to Javascript {{{
Plug 'posva/vim-vue'
Plug 'HerringtonDarkholme/yats.vim'
" or Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'diepm/vim-rest-console'
"Plug 'prettier/vim-prettier', {
"  \ 'do': 'yarn install',
"  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
"}}}
" Programming: Plugins Related to C/C++{{{

Plug 'martong/vim-compiledb-path'
Plug 'pboettch/vim-cmake-syntax'
Plug 'huleiak47/vim-cmake-complete'

Plug 'mattn/webapi-vim'
Plug 'mattn/vim-gist'
"
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'rhysd/vim-clang-format'
Plug 'vim-scripts/a.vim'
"}}}
" Programming: Plugins Related to HTML e CSS {{{
Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
"}}}
" ==================================Markdown================================={{{
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
"}}}
" ==================================VTerm================================={{{
Plug 'vimlab/split-term.vim'
"}}}
call plug#end()
"}}}
"============ Plugins Configurations ============={{{
"                                                                       "
"  ____  _             _              ____             __ _             "
" |  _ \| |_   _  __ _(_)_ __  ___   / ___|___  _ __  / _(_) __ _ ___   "
" | |_) | | | | |/ _` | | '_ \/ __| | |   / _ \| '_ \| |_| |/ _` / __|  "
" |  __/| | |_| | (_| | | | | \__ \ | |__| (_) | | | |  _| | (_| \__ \_ "
" |_|   |_|\__,_|\__, |_|_| |_|___/  \____\___/|_| |_|_| |_|\__, |___(_)"
"                |___/                                      |___/       "
"======================================================================="

"################# Clang format  #################{{{

" Clang format - auto formatting

let g:clang_format#auto_format = 0
let g:clang_format#command = '/usr/bin/clang-format'
let g:clang_format#style_options = {
             \ "AccessModifierOffset" : -2,
             \ "AlignEscapedNewlinesLeft" : "true",
             \ "AlignTrailingComments" : "false",
             \ "AllowAllParametersOfDeclarationOnNextLine" : "false",
             \ "AllowShortFunctionsOnASingleLine" : "false",
             \ "AllowShortIfStatementsOnASingleLine" : "false",
             \ "AllowShortLoopsOnASingleLine" : "false",
             \ "AlwaysBreakBeforeMultilineStrings" : "false",
             \ "AlwaysBreakTemplateDeclarations" : "true",
             \ "BinPackParameters" : "false",
             \ "BreakBeforeBinaryOperators" : "false",
             \ "BreakBeforeBraces" : "Attach",
             \ "BreakBeforeTernaryOperators" : "false",
             \ "BreakConstructorInitializersBeforeComma" : "false",
             \ "ColumnLimit" : 100,
             \ "ConstructorInitializerAllOnOneLineOrOnePerLine" : "false",
             \ "ConstructorInitializerIndentWidth" : 0,
             \ "ContinuationIndentWidth" : 0,
             \ "Cpp11BracedListStyle" : "false",
             \ "DerivePointerBinding" : "false",
             \ "IndentCaseLabels" : "false",
             \ "IndentFunctionDeclarationAfterType" : "false",
             \ "IndentWidth" : 2,
             \ "Language" : "Cpp",
             \ "MaxEmptyLinesToKeep" : 2,
             \ "NamespaceIndentation" : "None",
             \ "ObjCSpaceAfterProperty" : "true",
             \ "ObjCSpaceBeforeProtocolList" : "true",
             \ "PenaltyBreakBeforeFirstCallParameter" : 100,
             \ "PenaltyBreakComment" : 100,
             \ "PenaltyBreakFirstLessLess" : 0,
             \ "PenaltyBreakString" : 100,
             \ "PenaltyExcessCharacter" : 1,
             \ "PenaltyReturnTypeOnItsOwnLine" : 20,
             \ "PointerBindsToType" : "true",
             \ "SpaceBeforeAssignmentOperators" : "true",
             \ "SpaceBeforeParens" : "Always",
             \ "SpaceInEmptyParentheses" : "false",
             \ "SpacesBeforeTrailingComments" : 1,
             \ "SpacesInAngles" : "false",
             \ "SpacesInCStyleCastParentheses" : "false",
             \ "SpacesInContainerLiterals" : "false",
             \ "SpacesInParentheses" : "false",
             \ "Standard" : "Cpp11",
             \ "TabWidth" : 4,
             \ "UseTab" : "Never",
             \ "BraceWrapping":
             \ {
             \ "AfterCaseLabel":  "true",
             \ "AfterClass":      "true",
             \ "AfterControlStatement": "true",
             \ "AfterEnum":       "true",
             \ "AfterFunction":   "true",
             \ "AfterNamespace":  "true",
             \ "AfterObjCDeclaration": "true",
             \ "AfterStruct":     "true",
             \ "AfterUnion":      "true",
             \ "AfterExternBlock": "true",
             \ "BeforeCatch":     "true",
             \ "BeforeElse":      "true",
             \ "IndentBraces":    "true",
             \ "SplitEmptyFunction": "true",
             \ "SplitEmptyRecord": "true",
             \ "SplitEmptyNamespace": "true"
             \ }
             \}
  augroup ClangFormatSettings
    autocmd!
    autocmd FileType c,cpp set shiftwidth=2
    autocmd FileType c,cpp au  BufWritePre <buffer=abuf> :ClangFormat
  augroup END

"}}}
"#####  Plug 'tibabit/vim-templates' ##########{{{
let g:tmpl_search_paths = ['~/.config/nvim/templates']
let g:tmpl_author_email = 'henriquevital1000@hotmail.com'
let g:tmpl_author_name = "Henrique Vital Carvalho"
"}}}
" ==================================General Configs================================={{{
syntax on
"gruvbox configurations
colorscheme gruvbox

set splitright
set updatetime=100
set hidden
set nobackup
set nowritebackup
set termguicolors
set shortmess+=c
set signcolumn=yes
set noshowmode
set ignorecase
set smartcase
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap bn :bn<cr>
set mouse=
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
"Reopen file in the last line
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd FileType python nnoremap <buffer> <F5> :w<cr>:exec '!python3 %' shellescape(@%, 1)<cr>
autocmd FileType sh nnoremap <buffer> <F5> :w<cr>:exec '!bash %' shellescape(@%, 1)<cr>

"################ Number Column ##########################{{{
" numbers
set number " see the line number column

" Toggle relative numbering, and set to absolute on loss of focus or insert mode
autocmd InsertEnter * :set nornu
autocmd InsertLeave * :set rnu
" we don't want to see relative numbering while debugging
" debugger uses its own window, so we can disable rnu when source window loses
" focus
autocmd BufLeave * :set nornu
autocmd BufEnter * call SetRNU()
function! SetRNU()
    if(mode()!='i')
        set rnu
    endif
endfunction
"}}}

"################# VTerm Config  ##################{{{
nnoremap <leader>t :Term zsh<cr>
nnoremap <leader>vt :VTerm zsh<cr>
nnoremap <leader>tt :TTerm zsh<cr>
"}}}
"################# Indentation  ##################{{{

set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4
set noerrorbells
set tabstop=4
set expandtab
set concealcursor=
set smarttab
set expandtab
set nocompatible

autocmd Filetype json,tex let g:indentLine_enabled = 0

"}}}
"################### Encoding  ###################{{{

"set encoding to utf8
if &encoding != 'utf-8'
    set encoding=utf-8              "Necessary to show Unicode glyphs
endif

"}}}
"}}}
" Programming: Coc-Configuration {{{
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
" }}}
"################# Clang format  #################{{{

"Clean white spaces
nnoremap <leader><Space> :StripWhitespace<CR>
"}}}
"################# Markdown config  #################{{{
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
"}}}
"################# Vim-Better-WhiteSpace  #################{{{
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm=0
"}}}
"################# Undo-Tree  #################{{{
nnoremap <leader>u :UndotreeShow<CR>
"}}}
"################# Neovim config file  #################{{{
" Command to go to neovim configurations
nnoremap <leader>gc :e ~/.config/nvim/init.vim<CR>
"}}}
"################# A config  #################{{{
nnoremap <leader>a :A
nnoremap <leader>va :AS
"}}}
"################# Search Files  #################{{{
nnoremap <C-p> :GFiles<CR>
nmap <s-p> :Files<CR>
nnoremap <s-r> :Rg<CR>
"}}}
" ==================================Zoom window================================={{{
"Command to zoom a split window
nnoremap <leader>z :ZoomToggle<CR>
"}}}
"
" fzf.vim
let g:fzf_preview_window = ''

" hclfmt
let g:hcl_fmt_autosave = 1
let g:tf_fmt_autosave = 1
let g:nomad_fmt_autosave = 1

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDTrimTrailingWhitespace = 1

" prettier
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>




"Snippets
let g:UltiSnipsExpandTrigger="<c-j>"

"Polyglot configs
" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

"Format python file when the file is saved
function Format_python_file()
    silent :!yapf --style="{based_on_style: pep8, indent_width: 4}" -i %
    silent :e %
endfunction

augroup python_yapf
    autocmd!
    autocmd BufWritePost *.py call Format_python_file()
augroup END

augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/2
augroup END

