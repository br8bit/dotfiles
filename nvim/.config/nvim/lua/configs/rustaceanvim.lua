local mason_registry = require "mason-registry"

-- Ensure codelldb is installed
if not mason_registry.get_package("codelldb"):is_installed() then
  mason_registry.get_package("codelldb"):install()
end

local codelldb = mason_registry.get_package "codelldb"
local extension_path = codelldb:get_install_path() .. "/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb.so"
local cfg = require "rustaceanvim.config"

vim.g.rustaceanvim = {
  dap = {
    adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
  },
}
