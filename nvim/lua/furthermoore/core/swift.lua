-- I'm not sure this file is needed.
-- I'm no longer requiring it and things still seem to be working fine, for now.
-- There is some sourcekit config in the nvim-lspconfig plugin setup
vim.lsp.start({
    name = "sourcekit-lsp", -- Name of the server
    cmd = {"sourcekit-lsp"}, -- Command used to start the server
    root_dir = ".", -- Root directory of the project
})
