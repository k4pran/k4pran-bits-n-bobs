-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- CONFIG BEGIN --

-- User powershell, install with winget install Microsoft.Powershell

config.default_prog = { 'powershell.exe', '-NoLogo' }

-- Key Bindings

config.keys = {
  {
    key = 'c',
    mods = 'ALT',
    action = wezterm.action.CopyTo 'Clipboard',
  },
  {
    key = 'v',
    mods = 'ALT',
    action = wezterm.action.PasteFrom 'Clipboard',
  },
{
  key = '>',
  mods = 'CTRL|ALT|SHIFT',
  action = wezterm.action.SplitHorizontal {
    domain = 'CurrentPaneDomain'
  },
},
{
  key = 'v',
  mods = 'CTRL|ALT',
  action = wezterm.action.SplitVertical {
    domain = 'CurrentPaneDomain'
  },
},
{
  key = '_',
  mods = 'CTRL|ALT|SHIFT',
  -- Horizontal divider: panes above and below
  action = wezterm.action.SplitVertical {
    domain = 'CurrentPaneDomain',
  },
},
{
  key = '|',
  mods = 'CTRL|ALT|SHIFT',
  -- Vertical divider: panes left and right
  action = wezterm.action.SplitHorizontal {
    domain = 'CurrentPaneDomain',
  },
},
}

-- Finally, return the configuration to wezterm:
return config
