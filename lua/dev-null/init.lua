local M = {}

local p = {
  white0 = "#ffffff",
  white1 = "#f4f4f4",
  white2 = "#e0e0e0",
  white3 = "#c6c6c6",
  white4 = "#a8a8a8",
  white5 = "#8d8d8d",
  white6 = "#6f6f6f",
  black0 = "#111111",
  black1 = "#161616",
  black2 = "#1B1B1B",
  black3 = "#252525",
  black4 = "#484848",
  black5 = "#4D4D4D",
  gray0 = "#525252",
  gray1 = "#6f6f6f",
  gray3 = "#393939",

  -- might use in terminal theme
  magenta_0 = "#ffd6e8",
  magenta_1 = "#ffafd2",
  magenta_2 = "#ff7eb6",
  magenta30 = "#ee5396",
  magenta_4 = "#d02670",
  magenta_5 = "#9f1853",
  magenta60 = "#740937",
  magenta_7 = "#510224",
  magenta_8 = "#2a0a18",

  blue10 = "#edf5ff",
  blue20 = "#d0e2ff",
  blue30 = "#a6c8ff",
  blue40 = "#78a9ff",
  blue50 = "#4589ff",
  blue60 = "#0f62fe",
  blue70 = "#0043ce",

  teal10 = "#d9fbfb",
  teal20 = "#9ef0f0",
  teal30 = "#3ddbd9",
  teal40 = "#08bdba",
  teal50 = "#009d9a",
  teal60 = "#007d79",

  purple10 = "#f6f2ff",
  purple20 = "#e8daff",
  purple30 = "#d4bbff",
  purple40 = "#be95ff",
  purple50 = "#a56eff",
  purple60 = "#8a3ffc",
  purple70 = "#6929c4",
}

-- highlight groups
local groups = {
  Normal = { bg = p.black1, fg = p.white3 },
  Comment = { fg = p.black4, italic = true },
  LineNr = { fg = p.gray0 },
  CursorLineNr = { fg = p.purple40 },
  Pmenu = { bg = p.black2 },
  PmenuSel = { bg = p.teal30, fg = p.black0 },
  WinSeparator = { fg = p.black3 },
  StatusLine = { bg = p.black3, fg = p.white3 },
  StatusLineNC = { bg = p.black2, fg = p.white3 },
  CursorLine = { bg = p.black2 },
  Visual = { bg = p.black3 },
  CurSearch = { bg = p.teal30, fg = p.black0 },
  Search = { bg = p.purple60, fg = p.purple20 },
  IncSearch = { bg = p.teal10, fg = p.black0 },
  Cursor = { bg = p.purple30, fg = p.black0 },
  MatchParen = { bg = p.teal20, fg = p.black0 },

  Identifier = { link = "Normal" },
  String = { fg = p.teal10 },
  -- Operator = { fg = p.blue30 },
  Operator = { fg = p.blue20 },
  Function = { link = "Normal" },
  Statement = { link = "Normal" },
  Special = { link = "Normal" },
  Constant = { fg = p.white2 },
  Number = { fg = p.blue40 },
  Type = { link = "Normal" },
  Delimiter = { fg = p.blue20 },

  ["@variable"] = { fg = p.white1 },
  ["@function"] = { fg = p.purple40 },
  ["@function.call"] = { fg = p.purple30 },
  ["@function.method.call"] = { link = "@function.call" },
  ["@keyword"] = { fg = p.teal20 },
  ["@constant"] = { link = "Constant" },
  ["@constant.builtin"] = { fg = p.blue30, bold = true },
  ["@boolean"] = { fg = p.teal10, bold = true },
  ["@punctuation.special"] = { fg = p.blue20 },
  ["@module"] = { fg = p.blue30 },
  ["@tag"] = { link = "@function.call" },
  ["@tag.attribute"] = { fg = p.blue30 },
  ["@tag.delimiter"] = { link = "Delimiter" },
  ["@constructor"] = { fg = p.purple40 },

  -- tone down atoms in elixir which are overbearing
  ["@string.special.symbol.elixir"] = { fg = p.white3 },

  -- semantic tokens
  ["@lsp.type.function"] = { link = "@function.call" },
  ["@lsp.type.method"] = { link = "@function.call" },
  ["@lsp.mod.declaration"] = { link = "@function" },

  -- tone down lua table delimiters
  ["@constructor.lua"] = { fg = p.purple10 },

  TelescopeBorder = { fg = p.black3, bg = p.black1 },
  TelescopeTitle = { fg = p.teal20 },
  TelescopePromptPrefix = { link = "@function" },

  GitSignsAdd = { fg = p.teal30 },
  GitSignsStagedAdd = { fg = p.teal60 },
  GitSignsChange = { fg = p.purple40 },
  GitSignsStagedChange = { fg = p.purple70 },
  GitSignsDelete = { fg = p.magenta30 },
  GitSignsStagedTopDelete = { fg = p.magenta60 },
}

function M:load()
  for group, hl in pairs(groups) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

function M:parse()
end

return M
