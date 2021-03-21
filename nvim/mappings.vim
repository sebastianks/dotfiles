" --------------- MAPPINGS ---------------

" nvim-compe
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" general
map <Space> <Leader>
map <C-s> :w<CR>
map <C-q> :q<CR>

inoremap <C-l> <Esc>

nnoremap <Leader>, :noh<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

command! Tree :!tree -I 'node_modules|build|dist|.*'
command! So :so ~/.config/nvim/init.vim

" find and replace which will prompt you for input
nnoremap <expr> <Leader>s ":%s/" . input("Search for: ") . "/" . input("Replace with: ") . "/" . input("Flags: ")

" copy / paste
vnoremap <Leader>y "+y
nnoremap <Leader>p "+p

" fzf
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>F :Ag<CR>
nnoremap <Leader>B :GBranches<CR>
nnoremap <Leader>H :History:<CR>
nnoremap <Leader>P :FzfSwitchProject<CR>

