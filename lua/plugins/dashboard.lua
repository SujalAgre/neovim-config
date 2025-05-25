return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('dashboard').setup {
      theme = 'doom',
      config = {
        header = {
          "                                                                ",
          "                                                                ",
          "                                                                ",
          "                                                                ",
          "                                                                ",
          "                                                                ",
          "                                                                ",
	  "                                                                ",
          "                                                                ",
          "                                                                ",
	  "                                                                ",
	  "                                                                ",
          "   ▄████████    ▄████████  ▄███████▄  ███    █▄  ",
          "  ███    ███   ███    ███ ██▀     ▄██ ███    ███ ",
          "  ███    ███   ███    █▀        ▄███▀ ███    ███ ",
          "  ███    ███   ███         ▀█▀▄███▀▄▄ ███    ███ ",
          "▀███████████ ▀███████████   ▄███▀   ▀ ███    ███ ",
          "  ███    ███          ███ ▄███▀       ███    ███ ",
          "  ███    ███    ▄█    ███ ███▄     ▄█ ███    ███ ",
          "  ███    █▀   ▄████████▀   ▀████████▀ ████████▀  ",
          "                                                                ",
	  "                                                                ",
	  "                                                                ",
        },
        center = {
          {
            icon = '\u{F05B}  ',
            desc = 'New File                                ',
            key = 'n',
            action = 'enew'
          },
          {
            icon = '\u{F002}  ',
            desc = 'Find File                               ',
            key = 'f',
            action = 'Telescope find_files'
          },
	  {
            icon = "\u{F017}  ",
            desc = 'Recent Files                            ',
            key = 'r',
            action = 'Telescope oldfiles'
          },
	  {
            icon = "\u{F0C9}  ",
            desc = 'Lazy                                    ',
            key = 'l',
            action = ':Lazy'
          },
          {
            icon = "\u{F00D}  ",
            desc = 'Quit                                    ',
            key = 'q',
            action = 'qa'
          },

        },
        footer = {
          "@('_')@"
        },
      },
    }
  end,
}
