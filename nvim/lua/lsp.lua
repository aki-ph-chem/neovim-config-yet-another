vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    -- auto cmp by LSP (check completionProvider )
    if client and client:supports_method('textDocument/completion') then
      -- activate cmp by LSP
      vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
    end
  end,
})

-- get menu for cmp
vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert' }
vim.o.autocomplete = true
vim.o.autocompletedelay = 250
vim.o.complete = '.,w,b,o'

--- jump to definition by 'gd'
vim.keymap.set('n', 'gd', function()
  vim.lsp.buf.definition()
end)

-- hover
vim.keymap.set('n', 'gh', function()
  vim.lsp.buf.hover()
end)

-- show ref all
vim.keymap.set('n', 'gr', function()
  vim.lsp.buf.references()
end)

-- rename all
vim.keymap.set('n', 'gn', function()
  vim.lsp.buf.rename()
end)

-- list up all symobl in current buffer
vim.keymap.set('n', 'gl', function()
  vim.lsp.buf.document_symbol()
end)

-- list up all symobl in all buffers
vim.keymap.set('n', 'ga', function()
  vim.lsp.buf.workspace_symbol()
end)
