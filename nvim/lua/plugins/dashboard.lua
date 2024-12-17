return {
  "glepnir/dashboard-nvim", -- Plugin para a tela inicial
  event = "VimEnter",
  config = function()
    local db = require("dashboard")

    -- Configurações do Dashboard
    db.setup({
      theme = 'doom',
      disable_move = true,
      config = {
        header = {
          "", "", "", "", "", "", "", "", "", "", "", "", "", "",
          [[ ███▄    █     ▒█████      ██▓    ▄████▄     ▓█████   ]],
          [[ ██ ▀█   █    ▒██▒  ██▒   ▓██▒   ▒██▀ ▀█     ▓█   ▀   ]],
          [[▓██  ▀█ ██▒   ▒██░  ██▒   ▒██▒   ▒▓█    ▄    ▒███     ]],
          [[▓██▒  ▐▌██▒   ▒██   ██░   ░██░   ▒▓▓▄ ▄██▒   ▒▓█  ▄   ]],
          [[▒██░   ▓██░   ░ ████▓▒░   ░██░   ▒ ▓███▀ ░   ░▒████▒  ]],
          [[░ ▒░   ▒ ▒    ░ ▒░▒░▒░    ░▓     ░ ░▒ ▒  ░   ░░ ▒░ ░  ]],
          [[░ ░░   ░ ▒░     ░ ▒ ▒░     ▒ ░     ░  ▒       ░ ░  ░  ]],
          [[   ░   ░ ░    ░ ░ ░ ▒      ▒ ░   ░              ░     ]],
          [[         ░        ░ ░      ░     ░ ░            ░  ░  ]],
          [[                                 ░                    ]],
          "", "", "", "", "", "", "", "", "", "", "", "", "",
        },
        center = {
          {
            desc = '',
          },
        },
        disable_move = true,
        footer = { "" },
      },
    })
  end,
}
