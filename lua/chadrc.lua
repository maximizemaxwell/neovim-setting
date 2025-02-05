-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "chadracula-evondev",
  hl_override = {
    Normal = { bg = "NONE" }, -- Normal 배경을 투명하게
    NonText = { bg = "NONE" }, -- NonText 영역도 투명하게
  },
}

return M
