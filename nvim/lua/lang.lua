-- clangd
vim.lsp.config.clangd = {
  cmd = {
    'clangd',
    '--log=verbose',
    '--background-index',
    '--clang-tidy',
    '--completion-style=detailed',
    '--header-insertion=iwyu',
    '--suggest-missing-includes',
    '--cross-file-rename',
  },
}

vim.lsp.enable({ 'clangd' })
