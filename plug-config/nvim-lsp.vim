set completeopt=menuone,noinsert,noselect

nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
"nnoremap <leader>vd :lua require'lspsaga.provider'.lsp_finder()<CR>

nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
"nnoremap <leader>vh :lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.diagnostic.show_line_diagnostics<CR>
"nnoremap <leader>vsd :lua vim.lsp.util.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>vll :lua vim.lsp.diagnostic.set_loclist()<CR>
nmap <silent> [g :lua vim.lsp.diagnostic.goto_prev()<CR>
nmap <silent> ]g :lua vim.lsp.diagnostic.goto_next()<CR>


let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

lua << EOF 
vim.fn.sign_define("LspDiagnosticsSignError",
                  {texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"})
                  --{texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"})
vim.fn.sign_define("LspDiagnosticsSignWarning",
                  {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"})
                  --{texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation",
                  {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"})
                  --{texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint",
                  {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"})

-- require'snippets'.use_suggested_mappings()
local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true;

require'lspconfig'.clangd.setup {
    on_attach = on_attach, 
    root_dir = function() return vim.loop.cwd() end 
}

require'lspconfig'.fortls.setup{
    on_attach=on_attach
}

-- require'lspconfig'.pyls.setup{
require'lspconfig'.pylsp.setup{
    on_attach=on_attach
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

local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
--local sumneko_root_path = vim.fn.stdpath('cache')..'/lspconfig/sumneko_lua/lua-language-server'
local sumneko_root_path = '/home/geoffc/Library/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup{
  on_attach=on_attach,
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- -- set the path to the sumneko installation
-- local system_name = "Linux" -- (Linux, macOS, or Windows)
-- -- /home/geoffc/Library/lua-language-server/bin/Linux/
-- local sumneko_root_path = '/home/geoffc/Library/lua-language-server'
-- local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"
-- 
-- require('lspconfig').sumneko_lua.setup({
--   cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
--   -- An example of settings for an LSP server.
--   --    For more options, see nvim-lspconfig
--   settings = {
--     Lua = {
--       runtime = {
--         -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--         version = 'LuaJIT',
--         -- Setup your lua path
--         path = vim.split(package.path, ';'),
--       },
--       diagnostics = {
--         -- Get the language server to recognize the `vim` global
--         globals = {'vim'},
--       },
--       workspace = {
--         -- Make the server aware of Neovim runtime files
--         library = {
--           [vim.fn.expand('$VIMRUNTIME/lua')] = true,
--           [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
--         },
--       },
--     }
--   },
--   on_attach = on_attach
-- })
EOF 
