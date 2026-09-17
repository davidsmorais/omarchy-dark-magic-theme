-- Dark Magic Theme for Neovim

return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = function()
                -- Dark Magic color palette
                local colors = {
                    -- Base colors
                    bg = '#0f0f17',
                    dark_bg = '#07070f',
                    darker_bg = '#030305',
                    lighter_bg = '#17171f',
                    selection = '#22222e',
                    muted = '#424260',

                    -- Foreground colors
                    fg = '#bbccee',
                    dark_fg = '#6b6b89',
                    light_fg = '#d4dbe8',
                    bright_fg = '#e8f0ff',

                    -- Accent & syntax colors
                    accent = '#66eeaa',
                    blue = '#6bc7f5',
                    magenta = '#cfa3f5',
                    green = '#b4f09e',
                    yellow = '#fbde66',
                    orange = '#ff9d62',
                    red = '#bb324c',
                    cyan = '#66eeaa',

                    -- Bright colors
                    bright_red = '#ff385e',
                    bright_yellow = '#ffd31b',
                    bright_green = '#00ffab',
                    bright_cyan = '#52f3f3',
                    bright_blue = '#38daff',
                    bright_magenta = '#db6797',
                }
                ---@diagnostic disable: undefined-global
                vim.cmd('highlight clear')
                if vim.fn.exists('syntax_on') then
                    vim.cmd('syntax reset')
                end

                vim.o.termguicolors = true
                vim.o.background = 'dark'
                vim.g.colors_name = 'dark-magic'

                local hl = vim.api.nvim_set_hl

                -- Editor highlights
                hl(0, 'Normal', { fg = colors.fg, bg = colors.bg })
                hl(0, 'NormalFloat', { fg = colors.fg, bg = colors.dark_bg })
                hl(0, 'FloatBorder', { fg = colors.accent, bg = colors.dark_bg })
                hl(0, 'FloatTitle', { fg = colors.accent, bg = colors.dark_bg, bold = true })
                hl(0, 'Cursor', { fg = colors.bg, bg = colors.accent })
                hl(0, 'CursorLine', { bg = colors.lighter_bg })
                hl(0, 'CursorLineNr', { fg = colors.accent, bold = true })
                hl(0, 'LineNr', { fg = colors.dark_fg })
                hl(0, 'Visual', { bg = colors.selection })
                hl(0, 'VisualNOS', { bg = colors.selection })
                hl(0, 'Search', { fg = colors.bg, bg = colors.yellow })
                hl(0, 'IncSearch', { fg = colors.bg, bg = colors.accent })
                hl(0, 'MatchParen', { fg = colors.bright_cyan, bold = true })

                -- Syntax highlighting
                hl(0, 'Comment', { fg = colors.muted, italic = true })
                hl(0, 'Constant', { fg = colors.orange })
                hl(0, 'String', { fg = colors.green })
                hl(0, 'Character', { fg = colors.green })
                hl(0, 'Number', { fg = colors.orange })
                hl(0, 'Boolean', { fg = colors.orange })
                hl(0, 'Float', { fg = colors.orange })
                hl(0, 'Identifier', { fg = colors.fg })
                hl(0, 'Function', { fg = colors.blue })
                hl(0, 'Statement', { fg = colors.magenta })
                hl(0, 'Conditional', { fg = colors.magenta })
                hl(0, 'Repeat', { fg = colors.magenta })
                hl(0, 'Label', { fg = colors.accent })
                hl(0, 'Operator', { fg = colors.accent })
                hl(0, 'Keyword', { fg = colors.magenta })
                hl(0, 'Exception', { fg = colors.red })
                hl(0, 'PreProc', { fg = colors.cyan })
                hl(0, 'Include', { fg = colors.magenta })
                hl(0, 'Define', { fg = colors.magenta })
                hl(0, 'Macro', { fg = colors.cyan })
                hl(0, 'PreCondit', { fg = colors.magenta })
                hl(0, 'Type', { fg = colors.yellow })
                hl(0, 'StorageClass', { fg = colors.yellow })
                hl(0, 'Structure', { fg = colors.yellow })
                hl(0, 'Typedef', { fg = colors.yellow })
                hl(0, 'Special', { fg = colors.bright_blue })
                hl(0, 'SpecialChar', { fg = colors.bright_blue })
                hl(0, 'Tag', { fg = colors.accent })
                hl(0, 'Delimiter', { fg = colors.light_fg })
                hl(0, 'SpecialComment', { fg = colors.dark_fg, italic = true, bold = true })
                hl(0, 'Debug', { fg = colors.bright_red })
                hl(0, 'Underlined', { underline = true })
                hl(0, 'Error', { fg = colors.bright_red, bold = true })
                hl(0, 'Todo', { fg = colors.bright_yellow, bold = true })

                -- UI elements
                hl(0, 'StatusLine', { fg = colors.fg, bg = colors.lighter_bg })
                hl(0, 'StatusLineNC', { fg = colors.dark_fg, bg = colors.dark_bg })
                hl(0, 'TabLine', { fg = colors.dark_fg, bg = colors.lighter_bg })
                hl(0, 'TabLineFill', { bg = colors.dark_bg })
                hl(0, 'TabLineSel', { fg = colors.accent, bg = colors.bg, bold = true })
                hl(0, 'Pmenu', { fg = colors.fg, bg = colors.lighter_bg })
                hl(0, 'PmenuSel', { fg = colors.bright_fg, bg = colors.selection, bold = true })
                hl(0, 'PmenuSbar', { bg = colors.lighter_bg })
                hl(0, 'PmenuThumb', { bg = colors.accent })
                hl(0, 'WildMenu', { fg = colors.bg, bg = colors.accent })
                hl(0, 'VertSplit', { fg = colors.muted })
                hl(0, 'WinSeparator', { fg = colors.muted })
                hl(0, 'Folded', { fg = colors.dark_fg, bg = colors.lighter_bg })
                hl(0, 'FoldColumn', { fg = colors.dark_fg, bg = colors.bg })
                hl(0, 'SignColumn', { fg = colors.dark_fg, bg = colors.bg })
                hl(0, 'ColorColumn', { bg = colors.lighter_bg })

                -- Diff highlighting
                hl(0, 'DiffAdd', { fg = colors.green, bg = colors.dark_bg })
                hl(0, 'DiffChange', { fg = colors.blue, bg = colors.dark_bg })
                hl(0, 'DiffDelete', { fg = colors.red, bg = colors.dark_bg })
                hl(0, 'DiffText', { fg = colors.bright_blue, bg = colors.selection, bold = true })

                -- Git signs
                hl(0, 'GitSignsAdd', { fg = colors.green })
                hl(0, 'GitSignsChange', { fg = colors.blue })
                hl(0, 'GitSignsDelete', { fg = colors.red })

                -- Diagnostic highlights
                hl(0, 'DiagnosticError', { fg = colors.bright_red })
                hl(0, 'DiagnosticWarn', { fg = colors.yellow })
                hl(0, 'DiagnosticInfo', { fg = colors.blue })
                hl(0, 'DiagnosticHint', { fg = colors.accent })
                hl(0, 'DiagnosticUnderlineError', { undercurl = true, sp = colors.bright_red })
                hl(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = colors.yellow })
                hl(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = colors.blue })
                hl(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = colors.accent })

                -- LSP highlights
                hl(0, 'LspReferenceText', { bg = colors.selection })
                hl(0, 'LspReferenceRead', { bg = colors.selection })
                hl(0, 'LspReferenceWrite', { bg = colors.selection, underline = true })

                -- Treesitter highlights
                hl(0, '@variable', { fg = colors.fg })
                hl(0, '@variable.builtin', { fg = colors.orange })
                hl(0, '@variable.parameter', { fg = colors.light_fg })
                hl(0, '@variable.member', { fg = colors.cyan })
                hl(0, '@constant', { fg = colors.orange })
                hl(0, '@constant.builtin', { fg = colors.orange })
                hl(0, '@constant.macro', { fg = colors.bright_cyan })
                hl(0, '@module', { fg = colors.yellow })
                hl(0, '@module.builtin', { fg = colors.yellow })
                hl(0, '@label', { fg = colors.accent })
                hl(0, '@string', { fg = colors.green })
                hl(0, '@string.escape', { fg = colors.bright_cyan })
                hl(0, '@string.special', { fg = colors.bright_cyan })
                hl(0, '@string.regexp', { fg = colors.bright_magenta })
                hl(0, '@character', { fg = colors.green })
                hl(0, '@character.special', { fg = colors.bright_cyan })
                hl(0, '@boolean', { fg = colors.orange })
                hl(0, '@number', { fg = colors.orange })
                hl(0, '@number.float', { fg = colors.orange })
                hl(0, '@type', { fg = colors.yellow })
                hl(0, '@type.builtin', { fg = colors.yellow })
                hl(0, '@type.definition', { fg = colors.yellow })
                hl(0, '@attribute', { fg = colors.accent })
                hl(0, '@property', { fg = colors.cyan })
                hl(0, '@function', { fg = colors.blue })
                hl(0, '@function.builtin', { fg = colors.bright_blue })
                hl(0, '@function.call', { fg = colors.blue })
                hl(0, '@function.macro', { fg = colors.bright_cyan })
                hl(0, '@function.method', { fg = colors.blue })
                hl(0, '@function.method.call', { fg = colors.blue })
                hl(0, '@constructor', { fg = colors.yellow })
                hl(0, '@operator', { fg = colors.accent })
                hl(0, '@keyword', { fg = colors.magenta })
                hl(0, '@keyword.coroutine', { fg = colors.magenta })
                hl(0, '@keyword.function', { fg = colors.magenta })
                hl(0, '@keyword.operator', { fg = colors.accent })
                hl(0, '@keyword.import', { fg = colors.magenta })
                hl(0, '@keyword.conditional', { fg = colors.magenta })
                hl(0, '@keyword.repeat', { fg = colors.magenta })
                hl(0, '@keyword.return', { fg = colors.magenta })
                hl(0, '@keyword.exception', { fg = colors.red })
                hl(0, '@comment', { fg = colors.muted, italic = true })
                hl(0, '@comment.documentation', { fg = colors.muted, italic = true })
                hl(0, '@punctuation', { fg = colors.light_fg })
                hl(0, '@punctuation.bracket', { fg = colors.light_fg })
                hl(0, '@punctuation.delimiter', { fg = colors.light_fg })
                hl(0, '@punctuation.special', { fg = colors.accent })
                hl(0, '@tag', { fg = colors.accent })
                hl(0, '@tag.attribute', { fg = colors.yellow })
                hl(0, '@tag.delimiter', { fg = colors.light_fg })

                -- Telescope
                hl(0, 'TelescopeBorder', { fg = colors.accent })
                hl(0, 'TelescopePromptBorder', { fg = colors.blue })
                hl(0, 'TelescopeResultsBorder', { fg = colors.accent })
                hl(0, 'TelescopePreviewBorder', { fg = colors.magenta })
                hl(0, 'TelescopeSelection', { fg = colors.bright_fg, bg = colors.selection, bold = true })
                hl(0, 'TelescopeMatching', { fg = colors.accent, bold = true })

                -- Neo-tree
                hl(0, 'NeoTreeNormal', { fg = colors.fg, bg = colors.bg })
                hl(0, 'NeoTreeDirectoryName', { fg = colors.blue })
                hl(0, 'NeoTreeDirectoryIcon', { fg = colors.accent })
                hl(0, 'NeoTreeFileName', { fg = colors.fg })
                hl(0, 'NeoTreeFileIcon', { fg = colors.cyan })
                hl(0, 'NeoTreeIndentMarker', { fg = colors.muted })
                hl(0, 'NeoTreeRootName', { fg = colors.accent, bold = true })
                hl(0, 'NeoTreeGitModified', { fg = colors.yellow })
                hl(0, 'NeoTreeGitAdded', { fg = colors.green })
                hl(0, 'NeoTreeGitDeleted', { fg = colors.red })

                -- Terminal colors
                vim.g.terminal_color_0 = colors.bg
                vim.g.terminal_color_1 = colors.red
                vim.g.terminal_color_2 = colors.green
                vim.g.terminal_color_3 = colors.yellow
                vim.g.terminal_color_4 = colors.blue
                vim.g.terminal_color_5 = colors.magenta
                vim.g.terminal_color_6 = colors.cyan
                vim.g.terminal_color_7 = colors.fg
                vim.g.terminal_color_8 = colors.muted
                vim.g.terminal_color_9 = colors.bright_red
                vim.g.terminal_color_10 = colors.bright_green
                vim.g.terminal_color_11 = colors.bright_yellow
                vim.g.terminal_color_12 = colors.bright_blue
                vim.g.terminal_color_13 = colors.bright_magenta
                vim.g.terminal_color_14 = colors.bright_cyan
                vim.g.terminal_color_15 = colors.bright_fg
            end,
        },
    },
}
