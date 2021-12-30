require("git-worktree").setup({
    update_on_change = true, -- default: true,
    clearjumps_on_change = true -- default: true,
})

local Worktree = require("git-worktree")
local Job = require("plenary.job")
local Path = require("plenary.path")

-- Is the current dir equal to the MTC project dir given in the MTC env var
local function is_mtc()
    return not not (string.find(vim.loop.cwd(), vim.env.MTC_ROOT, 1, true))
end

--local function is_tvui()
    --return not not (string.find(vim.loop.cwd(), vim.env.TVUI, 1, true))
--end

--local function get_nrdp_build_paths(path)
    --return
        --Path:new({vim.env.NRDP, path, "configure"}):absolute(),
        --Path:new({vim.env.NRDP, "build", path}):absolute()
--end

local function get_dev_path(path)
    --return Path:new({"hello", path, "configure"}):absolute()
    return Path:new({path}):absolute()
end

Worktree.on_tree_change(function(op, path, upstream)

    --print(op) -- returns "switch"
    --print(path) -- returns "table: 0x7fce00d48e28"
    --print(upstream) -- Returns nil

    --print("THe path is "..table.concat(path))
    -- Returns the path of the worktree directory
    local this_path = get_dev_path(table.concat(path))
    --local this_path = string(table.concat(path))
    print(this_path)

    --print(string(get_dev_path(path)))
    --print(op)
    --print(path)
    --print(upstream)
    -- Do this operation on switching to a different worktree 
    --if op == Worktree.Operations.Switch then
        --local dev_path = get_dev_path(path)
        --print(dev_path)
        --print(vim.env.DEVPTH)
        --print(Path:new({"a", "b", "c"}):absolute())
        --print(Path:new({"a", "b", "c"}):absolute())
        --os.execute("date >> /home/geoffc/Computer_Stuff/Git/git_examples/merge_rebase_testing/hello.txt")
        --local create_datefile = Job:new({
            --command = 'ln',
            --args = {
                --'/home/geoffc/Computer_Stuff/Git/git_examples/merge_rebase_testing/config.sh',
                --'config.new.sh'
            --},
            --cwd = '/home/geoffc/Computer_Stuff/Git/git_examples/merge_rebase_testing',
            --env = { ['a'] = 'b' },
            --on_exit = function(j, return_val)
              --print(return_val)
              --print(j:result())
            --end,
        --})
        --local create_datefile = Job:new({
            --"echo", "$(date)", ">>", "/home/geoffc/Computer_Stuff/Git/git_examples/merge_rebase_testing/hello.txt"
        --})
        --create_datefile:and_then_on_success(print("success!"))
        --create_datefile:start()
    --end

    --if op == Worktree.Operations.Switch and is_tvui() then
        --Job:new({
            --"./tvui", "install"
        --}):start()
    --end

    -- Do this operation on creation of a new worktree.
    --if op == Worktree.Operations.Create and is_nrdp() then
        --local submodule = Job:new({
            --"git", "submodule", "update"
        --})

        --local configure_path, build_path = get_nrdp_build_paths(path)

        --local make_build = Job:new({
            --"mkdir", "-p", build_path
        --})

        --local configure = Job:new({
            --configure_path, "--ninja", "--debug",
            --cwd = build_path,
        --})

        --submodule:and_then_on_success(make_build)
        --make_build:and_then_on_success(configure)
        --submodule:start()
    --end
end)
