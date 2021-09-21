local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'LuaTree','packager'}

local colors = {
  bg = '#2e3440',
  fg = '#81a1c1',
  line_bg = '#2e3440',
  fg_green = '#6d96a5',

  yellow = '#fabd2f',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#608B4E',
  orange = '#FF8800',
  purple = '#5d4d7a',
  magenta = '#d16d9e',
  grey = '#c0c0c0',
  blue = '#569CD6',
  red = '#D16969'
}

local mode_color = function()
  local mode_colors = {
    n = colors.cyan,
    i = colors.green,
    c = colors.orange,
    V = colors.purple,
    [''] = colors.purple,
    v = colors.purple,
    R = colors.red,
  }

  local color = mode_colors[vim.fn.mode()]

  if color == nil then
    color = colors.red
  end

  return color
end

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

gls.left[1] = {
  FirstElement = {
    provider = function() return '▋' end,
    highlight = { colors.cyan, colors.bg }
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      local alias = {
        n = 'NORMAL',
        i = 'INSERT',
        c = 'COMMAND',
        V = 'VISUAL',
        [''] = 'VISUAL',
        v = 'VISUAL',
        R = 'REPLACE',
      }
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color())
      local alias_mode = alias[vim.fn.mode()]
      if alias_mode == nil then
        alias_mode = vim.fn.mode()
      end
      return alias_mode..' '
    end,
    highlight = { colors.bg, colors.bg },
    separator = "  ",
    separator_highlight = {colors.bg, colors.line_bg},
  },
}
gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.line_bg},
  },
}
gls.left[4] = {
  FileName = {
    provider = 'FileName',
    condition = buffer_not_empty,
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.fg,colors.line_bg,'bold'}
  }
}


gls.right[1] = {
  GitIcon = {
    provider = function() return ' ' end,
    condition = require('galaxyline.provider_vcs').check_git_workspace,
    highlight = {colors.fg,colors.line_bg},
  }
}
gls.right[2] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = require('galaxyline.provider_vcs').check_git_workspace,
    separator = '',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.fg,colors.line_bg,'bold'},
  }
}
local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

gls.right[3] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.green,colors.line_bg},
  }
}
gls.right[4] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = '柳',
    highlight = {colors.orange,colors.line_bg},
  }
}
gls.right[5] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.red,colors.line_bg},
  }
}

gls.right[6] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = '',
    separator_highlight = {colors.blue,colors.line_bg},
    highlight = {colors.fg,colors.line_bg},
  },
}
gls.right[7] = {
  FileSize = {
    provider = 'FileSize',
    separator = ' ',
    condition = buffer_not_empty,
    separator_highlight = {colors.blue,colors.line_bg},
    highlight = {colors.fg,colors.line_bg}
  }
}

gls.left[10] = {
  LeftEnd = {
    provider = function() return ' ' end,
    separator = ' ',
    separator_highlight = {colors.bg,colors.line_bg},
    highlight = {colors.line_bg,colors.line_bg}
  }
}
gls.right[11] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}
gls.right[12] = {
  Space = {
    provider = function () return ' ' end
  }
}
gls.right[13] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}


gls.short_line_left[15] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.fg,colors.purple}
  }
}
gls.short_line_right[16] = {
  BufferIcon = {
    provider= 'BufferIcon',
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.fg,colors.purple}
  }
}

