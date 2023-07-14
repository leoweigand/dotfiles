return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    -- Set dashboard header
    opts.section.header.val = {
      "██      ███████  ██████  ██    ██ ██ ███    ███",
      "██      ██      ██    ██ ██    ██ ██ ████  ████",
      "██      █████   ██    ██ ██    ██ ██ ██ ████ ██",
      "██      ██      ██    ██  ██  ██  ██ ██  ██  ██",
      "███████ ███████  ██████    ████   ██ ██      ██",
    }
  end,
}
