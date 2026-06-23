-- python-pyright
local pyright_config = {
  settings = {
    python = {
      pythonPath = './.venv/bin/python',
    },
  },
  root_markers = { 'pyproject.toml', '.git' },
}

vim.lsp.config.pyright = pyright_config
vim.lsp.enable({ 'pyright' })
