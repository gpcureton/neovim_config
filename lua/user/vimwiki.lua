-- local status_ok, npairs = pcall(require, "vimwiki")
-- if not status_ok then
--   return
-- end

local status_ok, notify = pcall(require, "notify")
if status_ok then
    vim.notify = notify
    -- notify("The Notify plugin has loaded correctly.")
else
	return
end

notify("We are loading the vimwiki options.")
vim.cmd("let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]")
-- vim.g.vimwiki_list = {{path = '~/Computer_Stuff/vimwiki/', syntax = 'markdown', ext = '.md'}}

-- vim.g.vimwiki_ext2syntax = {['.md'] = 'markdown', ['.markdown'] = 'markdown', ['.mdown'] = 'markdown'}
