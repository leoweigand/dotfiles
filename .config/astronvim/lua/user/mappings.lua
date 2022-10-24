local hop = require "hop"

return {
  n = {
    S = {
      function() hop.hint_char2() end, desc = "Hop",
    },
    ["<leader>fg"] = {
      function() require "telescope.builtin".git_files() end, desc = "Search git files",
    },
  }
}
