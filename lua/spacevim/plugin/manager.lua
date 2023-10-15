--=============================================================================
-- manager.lua --- plugin manager for spacevim
-- Copyright (c) 2016-2022 Wang Shidong & Contributors
-- Author: Wang Shidong < wsdjeg@outlook.com >
-- URL: https://spacevim.org
-- License: GPLv3
--=============================================================================

local M = {}

local log = require('spacevim.logger').derive('dein-ui')


local plugins = {}
local failed_plugins = {}
local pulling_repos = {}
local building_repos = {}
local retry_cnt = 0
local on_reinstall = false

local ui_buf = {}
local plugin_manager_buffer = 0
local plugin_manager_buffer_lines = {}
local jobpid = 0

local function need_cmd(cmd)
  if vim.fn.executable(cmd) == 1 then
    return true
  else
    log.warn('need command: ' .. cmd)
    return false
  end
end

local function get_uninstalled_plugins()
  local p = {}
  local values = vim.fn['dein#get']()
  for _, v in pairs(values) do
    if vim.fn.isdirectory(v.path) == 0 then
      table.insert(p, v)
    end
  end
  return p
end

function M.install(...)


  
end

return M
