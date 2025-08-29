local M = {}

function M.highlight(palette, opts)
  local bg = opts.transparent and palette.none or palette.accent
  return {
    -- Base picker windows
    SnacksPicker = { fg = palette.fg, bg = bg },
    SnacksPickerBorder = { fg = palette.light_gray, bg = bg },
    SnacksPickerTitle = { fg = palette.light_gray, bg = bg, bold = true },
    SnacksPickerFooter = { fg = palette.light_gray, bg = bg },

    -- List window (links to base for consistency)
    SnacksPickerList = { fg = palette.fg, bg = bg },
    SnacksPickerListBorder = { link = "SnacksPickerBorder" },
    SnacksPickerListTitle = { link = "SnacksPickerTitle" },
    SnacksPickerListFooter = { link = "SnacksPickerFooter" },
    -- CursorLine is linked to Visual by Snacks; keep Visual readable

    -- Input window
    SnacksPickerInput = { fg = palette.fg, bg = bg },
    SnacksPickerInputBorder = { link = "SnacksPickerBorder" },
    SnacksPickerInputTitle = { link = "SnacksPickerTitle" },
    SnacksPickerInputFooter = { link = "SnacksPickerFooter" },
    SnacksPickerPrompt = { fg = palette.cyan },
    SnacksPickerInputSearch = { fg = palette.red },

    -- Preview window
    SnacksPickerPreview = { fg = palette.fg, bg = bg },
    SnacksPickerPreviewBorder = { link = "SnacksPickerBorder" },
    SnacksPickerPreviewTitle = { link = "SnacksPickerTitle" },
    SnacksPickerPreviewFooter = { link = "SnacksPickerFooter" },
    SnacksPickerPreviewCursorLine = { bg = palette.alt_bg },

    -- Avoid links to NonText (can be black in some setups)
    SnacksPickerTotals = { fg = palette.medium_gray },
    SnacksPickerUnselected = { fg = palette.medium_gray },
    SnacksPickerDimmed = { fg = palette.medium_gray },

    -- File/Path styling (override Snacks defaults that link to NonText)
    SnacksPickerFile = { fg = palette.white },
    SnacksPickerDirectory = { fg = palette.blue },
    SnacksPickerDir = { fg = palette.medium_gray },
    SnacksPickerPathIgnored = { fg = palette.gray },
    SnacksPickerPathHidden = { fg = palette.gray },
    SnacksPickerDelim = { fg = palette.white },

    -- Accents inside the picker
    SnacksPickerSpecial = { fg = palette.cyan },
    SnacksPickerMatch = { fg = palette.orange, bold = true },
    SnacksPickerCode = { fg = palette.green },
    SnacksPickerBold = { bold = true },
    SnacksPickerItalic = { italic = true },

    -- Git statuses
    SnacksPickerGitStatus = { fg = palette.white },
    SnacksPickerGitStatusUntracked = { fg = palette.gray },
    SnacksPickerGitStatusIgnored = { fg = palette.gray },

    -- Misc that were linked to NonText by default
    SnacksPickerBufFlags = { fg = palette.medium_gray },
    SnacksPickerKeymapRhs = { fg = palette.medium_gray },

    -- Window picking highlights
    SnacksPickerPickWin = { fg = palette.fg, bg = bg },
    SnacksPickerPickWinCurrent = { fg = palette.fg, bg = palette.gray },
  }
end

return M
