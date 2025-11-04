return {
  {
    "aserowy/tmux.nvim",
    opts = {
      copy_sync = {
        enable = true,
        ignore_buffers = { empty = false },
        redirect_to_clipboard = false,
        register_offset = 0,
        sync_clipboard = false,
        sync_registers = true,
        sync_registers_keymap_put = true,
        sync_registers_keymap_reg = true,
        sync_deletes = true,
        sync_unnamed = true,
      },
      navigation = {
        cycle_navigation = true,
        enable_default_keybindings = false,
        persist_zoom = false,
      },
      resize = {
        enable_default_keybindings = false,
        resize_step_x = 5,
        resize_step_y = 3,
      },
      swap = {
        cycle_navigation = false,
        enable_default_kebindings = false,
      },
    },
    -- stylua: ignore
    keys = {
      { "<M-Left>",    function() require("tmux").move_left()     end, },
      { "<M-Right>",   function() require("tmux").move_right()    end, },
      { "<M-Up>",      function() require("tmux").move_top()      end, },
      { "<M-Down>",    function() require("tmux").move_bottom()   end, },
      { "<M-C-Left>",  function() require("tmux").resize_left()   end, },
      { "<M-C-Right>", function() require("tmux").resize_right()  end, },
      { "<M-C-Up>",    function() require("tmux").resize_top()    end, },
      { "<M-C-Down>",  function() require("tmux").resize_bottom() end, },
      { "<M-S-Left>",  function() require("tmux").swap_left()     end, },
      { "<M-S-Right>", function() require("tmux").swap_right()    end, },
      { "<M-S-Up>",    function() require("tmux").swap_top()      end, },
      { "<M-S-Down>",  function() require("tmux").swap_bottom()   end, },
    },
  },
}
