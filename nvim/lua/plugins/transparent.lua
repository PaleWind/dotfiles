return {
  'xiyaowong/nvim-transparent',
  opts = {
    extra_groups = {
      'NormalFloat', -- plugins which have float panel such as Lazy, Mason, LspInfo
      'LuaLine',
    },
  },
  config = function()
    require('transparent').clear_prefix 'lualine'
    require('transparent').clear_prefix 'Lazy'
    -- require('transparent').clear_prefix 'Mason'
    require('transparent').clear_prefix 'whichkey'
  end,
}
