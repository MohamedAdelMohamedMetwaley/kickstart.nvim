-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  -- Optional dependency
  dependencies = { 'hrsh7th/nvim-cmp' },
  config = function()
    require('nvim-autopairs').setup {
      fast_wrap = {
        map = '<M-e>', -- Set the keybinding for fast wrap
        chars = { '{', '[', '(', '"', "'" }, -- Characters to wrap
        pattern = [=[[%'%"%>%]%)%}%,]]=], -- Pattern to match
        end_key = '$', -- Key to end the wrapping
        before_key = 'h', -- Key to move before the cursor
        after_key = 'l', -- Key to move after the cursor
        cursor_pos_before = true, -- Cursor position before wrapping
        keys = 'qwertyuiopzxcvbnmasdfghjkl', -- Keys for wrapping
        manual_position = true, -- Manual position for wrapping
        highlight = 'Search', -- Highlight group for wrapping
        highlight_grey = 'Comment', -- Highlight group for greyed out text
      },
    }
    require('nvim-autopairs').setup {}
    -- If you want to automatically add `(` after selecting a function or method
    local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
    local cmp = require 'cmp'
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
  end,
}
