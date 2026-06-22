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
