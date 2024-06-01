return {
  {
    "vimwiki/vimwiki",
    init = function()
      vim.g.vimwiki_list = {
        {
          path = "~/docs",
          syntax = "markdown",
          ext = "md",
        },
      }
    end,
  },
}
