set completeopt=menuone,noinsert,noselect

nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.diagnostic.show_line_diagnostics<CR>
nmap <silent> [g :lua vim.lsp.diagnostic.goto_prev()<CR>
nmap <silent> ]g :lua vim.lsp.diagnostic.goto_next()<CR>


let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

lua << EOF 
local on_attach = require'completion'.on_attach

require'lspconfig'.clangd.setup {
    on_attach = on_attach, 
    root_dir = function() return vim.loop.cwd() end 
}

require'lspconfig'.fortls.setup{
    on_attach=on_attach
}

require'lspconfig'.pyls.setup{
    on_attach=require'completion'.on_attach
}

require'lspconfig'.bashls.setup{
    on_attach=on_attach
}

require'lspconfig'.texlab.setup{
    on_attach=on_attach,
    cmd = { "texlab" },
    filetypes = { "tex", "bib" },
    settings = {
      bibtex = {
        formatting = {
          lineLength = 120
        }
      },
      latex = {
        build = {
          args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
          executable = "latexmk",
          onSave = false
        },
        forwardSearch = {
          args = {},
          onSave = false
        },
        lint = {
          onChange = true
        }
      }
    }
}

EOF 
