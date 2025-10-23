return {
  'windwp/nvim-autopairs',
  event = { 'InsertEnter', 'CmdlineEnter' },
  config = function ()
    require("nvim-autopairs").setup({})
  end
}
