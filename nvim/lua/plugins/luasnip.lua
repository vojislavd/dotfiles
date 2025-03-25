return {
    'L3MON4D3/LuaSnip',
    dependencies = {
        'saadparwaiz1/cmp_luasnip',
    },
    config = function()
        local luasnip = require('luasnip')
        local s = luasnip.snippet
        local t = luasnip.text_node
        local i = luasnip.insert_node

        luasnip.add_snippets('php', {
            s('pubf', {
                t("public function "), i(1, ""), t("("), i(2, ""), t(")"),
                t({ "", "{" }),
                t({ "", "    " }), i(0, ""),
                t({ "", "}" }),
            }),
            s('prof', {
                t("protected function "), i(1, ""), t("("), i(2, ""), t(")"),
                t({ "", "{" }),
                t({ "", "    " }), i(0, ""),
                t({ "", "}" }),
            }),
            s('prif', {
                t("private function "), i(1, ""), t("("), i(2, ""), t(")"),
                t({ "", "{" }),
                t({ "", "    " }), i(0, ""),
                t({ "", "}" }),
            }),
            s('__cons', {
                t("public function __construct("), i(1, ""), t(")"),
                t({ "", "{" }),
                t({ "", "    " }), i(0, ""),
                t({ "", "}" }),
            }),
            s('prop', {
                t("public $"), i(1, ""), t(";"),
            }),
        })

        vim.keymap.set('i', '<C-k>', function() luasnip.expand() end, { noremap = true, silent = true })
        vim.keymap.set('i', '<C-l>', function() luasnip.jump( 1) end, { noremap = true, silent = true })
        vim.keymap.set('i', '<C-j>', function() luasnip.jump(-1) end, { noremap = true, silent = true })
    end,
}
