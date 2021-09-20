local utils = {}

-- probably always better to use which-key for self-documenting
function utils.registerMappings(mappings)
  local modes = {
    insert_mode = 'i',
    normal_mode = 'n'
  }

  for mode, keymap in pairs(mappings) do
    local mode_short = modes[mode]

    for sequence, mapping in pairs(keymap) do
      vim.api.nvim_set_keymap(mode_short, sequence, mapping, {
        silent = true
      })
    end
  end
end

return utils
