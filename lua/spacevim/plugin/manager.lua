--=============================================================================
-- manager.lua --- plugin manager for spacevim
-- Copyright (c) 2016-2022 Wang Shidong & Contributors
-- Author: Wang Shidong < wsdjeg@outlook.com >
-- URL: https://spacevim.org
-- License: GPLv3
--=============================================================================

local log = require('spacevim.logger').derive('dein-ui')


local plugins = {}
local failed_plugins = {}
local pulling_repos = {}
local building_repos = {}

local function need_cmd(cmd)
  if vim.fn.executable(cmd) == 1 then
    return true
  else
    log.warn('need command: ' .. cmd)
    return false
  end
end
