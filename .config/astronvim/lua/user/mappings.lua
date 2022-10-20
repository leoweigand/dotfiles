local hop = require "hop"

return {
  n = {
    ["S"] = {
      function() hop.hint_char2() end, desc = "Hop",
    }
  }
}
