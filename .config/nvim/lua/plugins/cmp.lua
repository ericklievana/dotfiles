return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'L3MON4D3/LuaSnip',
    'hrsh7th/cmp-nvim-lsp',
  },
  event = 'LspAttach',
  opts = function ()
    local cmp = require('cmp')
    local luasnip = require('luasnip')
    return {
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body, {
            indent = true,
          })
        end,
      },
      preselect = cmp.PreselectMode.Item,
      completion = {
        autocomplete = false,
      },
      view = {
        docs = {
          auto_open = false,
        },
      },
      mapping = {
        ['<C-Space>'] = cmp.mapping.complete({
          config = {
            sources = {
              {
                name = 'nvim_lsp',
                entry_filter = function(entry)
                  return require('cmp.types').lsp.CompletionItemKind[entry:get_kind()] ~= 'Snippet'
                end,
              },
              {
                name = 'luasnip',
              },
            },
          },
        }),
        ['<C-s>'] = cmp.mapping.complete({
          config = {
            sources = {
              {
                name = 'nvim_lsp',
                entry_filter = function(entry)
                  return require('cmp.types').lsp.CompletionItemKind[entry:get_kind()] == 'Snippet'
                end,
              }
            },
          },
        }),
        ['<CR>'] = function(fallback)
          if cmp.visible() then
            cmp.confirm()
          elseif luasnip.expandable() then
            luasnip.expand()
          else
            fallback()
          end
        end,
        ['<Tab>'] = function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.in_snippet() then
            if luasnip.locally_jumpable(1) then
              luasnip.jump(1)
            end
          else
            fallback()
          end
        end,
        ['<S-Tab>'] = function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.in_snippet() then
            if luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            end
          else
            fallback()
          end
        end,
        ['<Escape>'] = function(fallback)
          if cmp.visible() then
            cmp.abort()
          elseif luasnip.in_snippet() then
            luasnip.unlink_current()
          else
            fallback()
          end
        end,
        ['<C-g>'] = function()
          if cmp.visible() then
            if not cmp.visible_docs() then
              cmp.open_docs()
            else
              cmp.close_docs()
            end
          end
        end,
        ['<C-j>'] = function()
          if cmp.visible_docs() then
            cmp.scroll_docs(4)
          end
        end,
        ['<C-k>'] = function()
          if cmp.visible_docs() then
            cmp.scroll_docs(-4)
          end
        end,
      },
      sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
      },
    }
  end,
}
