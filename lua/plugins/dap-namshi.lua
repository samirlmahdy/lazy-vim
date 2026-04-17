return {
    {
        "mfussenegger/nvim-dap",
        dependencies = { "mfussenegger/nvim-dap-python" },
        config = function()
            -- Load .env file into a table
            local function load_dotenv(path)
                local env = {}
                local f = io.open(path, "r")
                if not f then
                    return env
                end
                for line in f:lines() do
                    local k, v = line:match("^([^#=]+)=(.*)$")
                    if k then
                        env[k:gsub("%s+", "")] = v:gsub("%s+", "")
                    end
                end
                f:close()
                return env
            end

            -- Register the python adapter
            require("dap-python").setup(vim.fn.getcwd() .. "/.venv/bin/python3.11")

            local dap = require("dap")
            local cwd = vim.fn.getcwd()
            local env = load_dotenv(cwd .. "/.env")
            env["PYTHONPATH"] = cwd .. "/src"

            local services = {
                { "Debug Profile Service", "appprofile.web:app" },
                { "Debug Team Service", "appteam.web:app" },
                { "Debug Catalog Service", "appcatalog.web:app" },
                { "Debug Wishlist Service", "appwishlist.web:app" },
            }

            dap.configurations.python = {}
            for _, svc in ipairs(services) do
                table.insert(dap.configurations.python, {
                    name = svc[1],
                    type = "python",
                    request = "launch",
                    module = "uvicorn",
                    args = { svc[2], "--host", "0.0.0.0", "--port", "8081", "--reload", "--log-level", "debug" },
                    env = env,
                    justMyCode = true,
                    console = "integratedTerminal",
                })
            end
        end,
    },
}
