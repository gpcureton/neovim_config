local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
--[[ local formatting = null_ls.builtins.formatting ]]
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
--[[ local diagnostics = null_ls.builtins.diagnostics ]]

-- register any number of sources simultaneously
local sources = {
    --[[ null_ls.builtins.formatting.stylua, ]]
    --[[ formatting.black.with({ command = "black", extra_args = { "--fast" } }), ]]
    --[[ formatting.yapf.with({ command = {"/home/geoffc/miniconda3/bin/yapf"} }), ]]
    --[[ formatting.clang_format.with({ command = "clang-format", extra_args = { "-style=webkit" } }), ]]
    --[[ formatting.black.with({ command = "black", extra_args = { "--fast" } }), ]]
    --[[ formatting.black.with({ extra_args = { "--fast" } }), ]]
    --[[ null_ls.builtins.code_actions.gitsigns, ]]
    null_ls.builtins.diagnostics.clang_check,
    --[[ null_ls.builtins.diagnostics.cppcheck, ]]
    --[[ null_ls.builtins.diagnostics.cpplint, ]]
    --[[ null_ls.builtins.diagnostics.flake8, ]]
    --[[ null_ls.builtins.diagnostics.pycodestyle, ]]
    null_ls.builtins.diagnostics.pydocstyle,
    null_ls.builtins.formatting.black,
    --[[ null_ls.builtins.diagnostics.mypy, ]]
    --[[ null_ls.builtins.formatting.prettier, ]]
    --[[ null_ls.builtins.diagnostics.write_good, ]]
}

null_ls.setup({
	debug = false,
	sources = sources,
})
