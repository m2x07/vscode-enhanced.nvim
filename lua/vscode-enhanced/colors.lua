local colors = {}
colors.get_colors = function()
    local mycolors = {} ---@type table<string,string>

    if vim.o.background == 'dark' then
        mycolors = {
            vscNone = 'NONE',
            vscFront = '#e2e2e2',
            vscBack = '#141414',

            vscTabCurrent = '#1F1F1F',
            vscTabOther = '#2D2D2D',
            vscTabOutside = '#191919',

            vscLeftDark = '#191919',
            vscLeftMid = '#2e2e2e',
            vscLeftLight = '#515157',

            vscPopupFront = '#BBBBBB',
            vscPopupBack = '#202020',
            vscPopupHighlightBlue = '#04395E',
            vscPopupHighlightGray = '#343B41',

            vscSplitLight = '#898989',
            vscSplitDark = '#444444',
            vscSplitThumb = '#424242',

            vscCursorDarkDark = '#222222',
            vscCursorDark = '#51504F',
            vscCursorLight = '#AEAFAD',
            vscSelection = '#264F78',
            vscLineNumber = '#5A5A5A',

            vscDiffRedDark = '#4B1818',
            vscDiffRedLight = '#6F1313',
            vscDiffRedLightLight = '#FB0101',
            vscDiffGreenDark = '#373D29',
            vscDiffGreenLight = '#4B5632',
            vscSearchCurrent = '#515c6a',
            vscSearch = '#613315',

            vscGitAdded = '#5AB068',
            vscGitModified = '#EBBF7F',
            vscGitDeleted = '#c74e39',
            vscGitRenamed = '#45B06C',
            vscGitUntracked = '#45B06C',
            vscGitIgnored = '#8c8c8c',
            vscGitStageModified = '#E3B571',
            vscGitStageDeleted = '#B8321F',
            vscGitConflicting = '#e4676b',
            vscGitSubmodule = '#85D3FF',

            vscContext = '#404040',
            vscContextCurrent = '#707070',

            vscFoldBackground = '#202d39',

            vscSuggestion = '#6A6A6A',

            -- Syntax colors
            vscGray = '#808080',
            vscViolet = '#585BA3',
            vscBlue = '#4DA2E8',
            vscAccentBlue = '#4FC1FF',
            vscDarkBlue = '#223E55',
            vscMediumBlue = '#18a2fe',
            vscDisabledBlue = '#729DB3',
            vscLightBlue = '#85D3FF',
            vscGreen = '#6A9955',
            vscBlueGreen = '#32D1B6',
            vscLightGreen = '#BAE69E',
            vscRed = '#F44747',
            vscOrange = '#E37D5D',
            vscLightRed = '#F07878',
            vscYellowOrange = '#E8BD68',
            vscYellow = '#EBEB8A',
            vscDarkYellow = '#FFD602',
            vscPink = '#E37FDA',
            -- Low contrast with default background
            vscDimHighlight = '#51504F',
        }
    else
        mycolors = {
            vscNone = 'NONE',
            vscFront = '#343434',
            vscBack = '#FFFFFF',

            vscTabCurrent = '#FFFFFF',
            vscTabOther = '#CECECE',
            vscTabOutside = '#E8E8E8',

            vscLeftDark = '#C4C4C4',
            vscLeftMid = '#E5E5E5',
            vscLeftLight = '#F3F3F3',

            vscPopupFront = '#000000',
            vscPopupBack = '#F8F8F8',
            vscPopupHighlightBlue = '#0064c1',
            vscPopupHighlightGray = '#767676',

            vscSplitLight = '#EEEEEE',
            vscSplitDark = '#DDDDDD',
            vscSplitThumb = '#DFDFDF',

            vscCursorDarkDark = '#E5E5E5',
            vscCursorDark = '#6F6F6F',
            vscCursorLight = '#767676',
            vscSelection = '#ADD6FF',
            vscLineNumber = '#098658',

            vscDiffRedDark = '#FFCCCC',
            vscDiffRedLight = '#FFA3A3',
            vscDiffRedLightLight = '#FFCCCC',
            vscDiffGreenDark = '#DBE6C2',
            vscDiffGreenLight = '#EBF1DD',
            vscSearchCurrent = '#A8AC94',
            vscSearch = '#F8C9AB',

            vscGitAdded = '#587c0c',
            vscGitModified = '#895503',
            vscGitDeleted = '#ad0707',
            vscGitRenamed = '#007100',
            vscGitUntracked = '#007100',
            vscGitIgnored = '#8e8e90',
            vscGitStageModified = '#895503',
            vscGitStageDeleted = '#ad0707',
            vscGitConflicting = '#ad0707',
            vscGitSubmodule = '#1258a7',

            vscContext = '#D2D2D2',
            vscContextCurrent = '#929292',

            vscFoldBackground = '#e6f3ff',

            vscSuggestion = '#868686',

            -- Syntax colors
            vscGray = '#000000',
            vscViolet = '#000080',
            vscBlue = '#0000FF',
            vscDarkBlue = '#007ACC',
            vscLightBlue = '#0451A5',
            vscGreen = '#008000',
            vscBlueGreen = '#16825D',
            vscLightGreen = '#098658',
            vscRed = '#FF0000',
            vscOrange = '#C72E0F',
            vscLightRed = '#A31515',
            vscYellowOrange = '#800000',
            vscYellow = '#795E26',
            vscPink = '#AF00DB',

            -- Low contrast with default background
            vscDimHighlight = '#B2DFDB',
        }
    end

    -- Other ui specific colors
    mycolors.vscUiBlue = '#084671'
    mycolors.vscUiOrange = '#f28b25'
    mycolors.vscPopupHighlightLightBlue = '#d7eafe'

    -- Extend the colors with overrides passed by `color_overrides`
    local config = require('vscode-enhanced.config')
    if config.opts.color_overrides then
        mycolors = vim.tbl_extend('force', mycolors, config.opts.color_overrides)
    end

    return mycolors
end

return colors
