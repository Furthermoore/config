vim.lsp.start({
    name = "sourcekit-lsp", -- Name of the server
    cmd = {"sourcekit-lsp"}, -- Command used to start the server
    root_dir = ".", -- Root directory of the project
})
