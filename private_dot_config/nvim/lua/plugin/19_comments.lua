-- comment.lua
return {
  {
    "LudoPinelli/comment-box.nvim",
    keys = {
      {
        "<leader>cd",
        mode = { "n", "v" },
        "<Cmd>CBd<CR>",
        desc = "delete comment style",
      },
      {
        "<leader>cc",
        mode = { "n", "v" },
        "<Cmd>CBcatalog<CR>",
        desc = "view comment style catalog",
      },
      {
        "<leader>cb",
        mode = { "n", "v" },
        "<Cmd>CBllbox2<CR>",
        desc = "left-aligned box",
      },
      {
        "<leader>ca",
        mode = { "n", "v" },
        "<Cmd>CBlabox2<CR>",
        desc = "left-aligned box (alt)",
      },
      {
        "<leader>cq",
        mode = { "n", "v" },
        "<Cmd>CBllbox11<CR>",
        desc = "left-aligned quote",
      },
    },
  },
}
