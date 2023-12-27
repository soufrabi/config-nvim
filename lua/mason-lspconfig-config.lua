
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
    ensure_installed= {
        "tsserver",
        "html",
        "cssls",
        "clangd",
    },
    -- auto installed configured server
    automatic_installation = true, -- not the same as ensure_installed


})

