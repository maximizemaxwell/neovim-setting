local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {

  [[          ▀████▀▄▄              ▄█ ]],
  [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
  [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
  [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
  [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
  [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
  [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
  [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
  [[   █   █  █      ▄▄           ▄▀   ]],
}

dashboard.section.buttons.val = {
  dashboard.button("f", "  파일 찾기", ":Telescope find_files <CR>"),
  dashboard.button("e", "  새로운 파일 만들기", ":ene <BAR> startinsert <CR>"),
  dashboard.button("r", "  최근 사용된 파일", ":Telescope oldfiles <CR>"),
  dashboard.button("t", "  텍스트 찾기", ":Telescope live_grep <CR>"),
  dashboard.button("c", "  설정", ":e ~/.config/nvim/init.vim<CR>"),
  dashboard.button("q", "❌ 나가라!!!!", ":qa<CR>"),
}

local function footer()
  return "아니 아직도 Vim을 안 쓰는 사람이 있다고?"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
