local api = vim.api

local function command(name, callback, opts) api.nvim_create_user_command(name, callback, opts) end

local function setup()
    command("Greet", function() print("Hello, world!") end, {nargs = 0})
end

setup()

return {
    setup = setup
}
