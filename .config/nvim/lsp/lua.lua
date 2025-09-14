return{
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { 'init.lua', '.git', },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        -- path = {
        --   'lua/?.lua',
        --   'lua/?/init.lua',
        -- },
      },
      workspace = {
        checkThirdParty = 'Ask',
        library = {
          '/usr/share/nvim/runtime/',
        },
      },
    },
  },
}
