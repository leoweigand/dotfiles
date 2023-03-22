return {
  "ggandor/leap.nvim",
  event = "BufEnter",
  init = function()
    require('leap').add_default_mappings()
  end,
}
