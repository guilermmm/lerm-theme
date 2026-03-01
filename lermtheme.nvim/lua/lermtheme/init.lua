local M = {}

M.colors = {
	-- Base
	bg = "#111316",
	bg_medium = "#1B1E23",
	bg_highlight = "#2F343C",
	fg = "#A3ABB8",
	fg_bright = "#D7DAE0",
	fg_brighter = "#E5E7EB",
	fg_dim = "#596373",
	border = "#2F343C",

	-- Accent
	accent = "#3b82f6",

	-- ANSI
	black = "#3f4451",
	red = "#e05561",
	green = "#6CDD5F",
	yellow = "#F1FA8C",
	blue = "#4aa5f0",
	magenta = "#FF79C6",
	cyan = "#8BE9FD",
	white = "#F8F8F2",

	bright_black = "#4f5666",
	bright_red = "#ff616e",
	bright_green = "#7CED71",
	bright_yellow = "#FFFFA5",
	bright_blue = "#4dc4ff",
	bright_magenta = "#FF92DF",
	bright_cyan = "#A4FFFF",
	bright_white = "#FFFFFF",

	-- Syntax (from J-Artur VS Code theme)
	keyword = "#bfdbfe",
	func = "#38bdf8",
	variable = "#93c5fd",
	parameter = "#c7d2fe",
	string = "#4ade80",
	number = "#99f6e4",
	type = "#2dd4bf",
	class = "#22d3ee",
	namespace = "#c4b5fd",
	constant = "#7dd3fc",
	comment = "#798A9A",
	operator = "#bfdbfe",
	punctuation = "#cbd5e1",
	regex = "#89DDFF",

	-- Diagnostics
	error = "#b91c1c",
	warning = "#ca8a04",
	info = "#3b82f6",
	hint = "#6CDD5F",

	-- Diff
	diff_add = "#1a3a2a",
	diff_delete = "#3a1a1a",
	diff_change = "#1a2a3a",
	diff_text = "#2a3a4a",
}

function M.setup()
	local c = M.colors

	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "lermtheme"

	local highlights = {
		-- Editor
		Normal = { fg = c.fg, bg = c.bg },
		NormalFloat = { fg = c.fg, bg = c.bg_medium },
		NormalNC = { fg = c.fg_dim, bg = c.bg },
		ColorColumn = { bg = c.bg_medium },
		Cursor = { fg = c.bg, bg = c.accent },
		CursorLine = { bg = c.bg_medium },
		CursorLineNr = { fg = c.fg_bright },
		CursorColumn = { bg = c.bg_medium },
		LineNr = { fg = c.fg_dim },
		SignColumn = { fg = c.fg_dim, bg = c.bg },
		VertSplit = { fg = c.border },
		WinSeparator = { fg = c.border },
		Folded = { fg = c.comment, bg = c.bg_medium },
		FoldColumn = { fg = c.fg_dim, bg = c.bg },
		NonText = { fg = c.bright_black },
		SpecialKey = { fg = c.bright_black },
		EndOfBuffer = { fg = c.bg },

		-- Search & Visual
		Search = { fg = c.fg_brighter, bg = c.bg_highlight },
		IncSearch = { fg = c.bg, bg = c.accent },
		CurSearch = { fg = c.bg, bg = c.accent },
		Visual = { bg = c.bg_highlight },
		VisualNOS = { bg = c.bg_highlight },

		-- Popup & Float
		Pmenu = { fg = c.fg, bg = c.bg_medium },
		PmenuSel = { fg = c.fg_brighter, bg = c.bg_highlight },
		PmenuSbar = { bg = c.bg_medium },
		PmenuThumb = { bg = c.bright_black },
		FloatBorder = { fg = c.border, bg = c.bg_medium },
		FloatTitle = { fg = c.accent, bg = c.bg_medium },

		-- Statusline & Tabline
		StatusLine = { fg = c.fg, bg = c.bg_medium },
		StatusLineNC = { fg = c.fg_dim, bg = c.bg_medium },
		TabLine = { fg = c.fg_dim, bg = c.bg_medium },
		TabLineFill = { bg = c.bg },
		TabLineSel = { fg = c.fg_bright, bg = c.bg },
		WinBar = { fg = c.fg, bg = c.bg },
		WinBarNC = { fg = c.fg_dim, bg = c.bg },

		-- Messages
		ErrorMsg = { fg = c.red },
		WarningMsg = { fg = c.yellow },
		MoreMsg = { fg = c.green },
		ModeMsg = { fg = c.fg_bright },
		Question = { fg = c.accent },
		Title = { fg = c.accent, bold = true },
		Directory = { fg = c.accent },
		MatchParen = { fg = c.accent, bold = true },
		Conceal = { fg = c.fg_dim },
		SpellBad = { undercurl = true, sp = c.red },
		SpellCap = { undercurl = true, sp = c.yellow },
		SpellRare = { undercurl = true, sp = c.cyan },
		SpellLocal = { undercurl = true, sp = c.green },
		Whitespace = { fg = c.bright_black },

		-- Diff
		DiffAdd = { bg = c.diff_add },
		DiffChange = { bg = c.diff_change },
		DiffDelete = { bg = c.diff_delete },
		DiffText = { bg = c.diff_text },

		-- Diagnostics
		DiagnosticError = { fg = c.error },
		DiagnosticWarn = { fg = c.warning },
		DiagnosticInfo = { fg = c.info },
		DiagnosticHint = { fg = c.hint },
		DiagnosticUnderlineError = { undercurl = true, sp = c.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning },
		DiagnosticUnderlineInfo = { undercurl = true, sp = c.info },
		DiagnosticUnderlineHint = { undercurl = true, sp = c.hint },
		DiagnosticVirtualTextError = { fg = c.error, bg = c.bg_medium },
		DiagnosticVirtualTextWarn = { fg = c.warning, bg = c.bg_medium },
		DiagnosticVirtualTextInfo = { fg = c.info, bg = c.bg_medium },
		DiagnosticVirtualTextHint = { fg = c.hint, bg = c.bg_medium },

		-- Syntax (Standard Vim Groups)
		Comment = { fg = c.comment, italic = true },
		Constant = { fg = c.constant },
		String = { fg = c.string },
		Character = { fg = c.string },
		Number = { fg = c.number },
		Boolean = { fg = c.keyword },
		Float = { fg = c.number },

		Identifier = { fg = c.variable },
		Function = { fg = c.func },

		Statement = { fg = c.keyword },
		Conditional = { fg = c.keyword },
		Repeat = { fg = c.keyword },
		Label = { fg = c.keyword },
		Operator = { fg = c.operator },
		Keyword = { fg = c.keyword },
		Exception = { fg = c.keyword },

		PreProc = { fg = c.keyword },
		Include = { fg = c.keyword },
		Define = { fg = c.keyword },
		Macro = { fg = c.keyword },
		PreCondit = { fg = c.keyword },

		Type = { fg = c.type },
		StorageClass = { fg = c.keyword },
		Structure = { fg = c.type },
		Typedef = { fg = c.type },

		Special = { fg = c.regex },
		SpecialChar = { fg = c.regex },
		Tag = { fg = c.accent },
		Delimiter = { fg = c.punctuation },
		SpecialComment = { fg = c.comment, italic = true },
		Debug = { fg = c.red },

		Underlined = { underline = true },
		Bold = { bold = true },
		Italic = { italic = true },
		Todo = { fg = c.bg, bg = c.accent, bold = true },
		Error = { fg = c.red },

		-- Treesitter
		["@comment"] = { link = "Comment" },
		["@keyword"] = { fg = c.keyword },
		["@keyword.function"] = { fg = c.keyword },
		["@keyword.return"] = { fg = c.keyword },
		["@keyword.operator"] = { fg = c.keyword },
		["@keyword.import"] = { fg = c.keyword },
		["@keyword.conditional"] = { fg = c.keyword },
		["@keyword.repeat"] = { fg = c.keyword },
		["@keyword.exception"] = { fg = c.keyword },

		["@function"] = { fg = c.func },
		["@function.call"] = { fg = c.func },
		["@function.builtin"] = { fg = c.func },
		["@function.method"] = { fg = c.func },
		["@function.method.call"] = { fg = c.func },

		["@variable"] = { fg = c.variable },
		["@variable.parameter"] = { fg = c.parameter, italic = true },
		["@variable.builtin"] = { fg = c.variable },
		["@variable.member"] = { fg = c.variable },

		["@property"] = { fg = c.variable },
		["@attribute"] = { fg = c.variable },

		["@string"] = { fg = c.string },
		["@string.escape"] = { fg = c.regex },
		["@string.regex"] = { fg = c.regex },
		["@string.special"] = { fg = c.regex },

		["@number"] = { fg = c.number },
		["@number.float"] = { fg = c.number },
		["@boolean"] = { fg = c.keyword },

		["@type"] = { fg = c.type },
		["@type.builtin"] = { fg = c.type },
		["@type.definition"] = { fg = c.type },

		["@constructor"] = { fg = c.class },
		["@module"] = { fg = c.namespace },
		["@constant"] = { fg = c.constant },
		["@constant.builtin"] = { fg = c.constant },

		["@operator"] = { fg = c.operator },
		["@punctuation.bracket"] = { fg = c.punctuation },
		["@punctuation.delimiter"] = { fg = c.punctuation },
		["@punctuation.special"] = { fg = c.punctuation },

		["@tag"] = { fg = c.red },
		["@tag.attribute"] = { fg = c.variable },
		["@tag.delimiter"] = { fg = c.punctuation },

		["@markup.heading"] = { fg = c.accent, bold = true },
		["@markup.strong"] = { bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.link"] = { fg = c.accent, underline = true },
		["@markup.link.url"] = { fg = c.accent, underline = true },
		["@markup.raw"] = { fg = c.green },
		["@markup.list"] = { fg = c.punctuation },

		-- LSP Semantic Tokens
		["@lsp.type.class"] = { fg = c.class },
		["@lsp.type.decorator"] = { fg = c.func },
		["@lsp.type.enum"] = { fg = c.type },
		["@lsp.type.enumMember"] = { fg = c.constant },
		["@lsp.type.function"] = { fg = c.func },
		["@lsp.type.interface"] = { fg = c.type },
		["@lsp.type.macro"] = { fg = c.keyword },
		["@lsp.type.method"] = { fg = c.func },
		["@lsp.type.namespace"] = { fg = c.namespace },
		["@lsp.type.parameter"] = { fg = c.parameter, italic = true },
		["@lsp.type.property"] = { fg = c.variable },
		["@lsp.type.struct"] = { fg = c.type },
		["@lsp.type.type"] = { fg = c.type },
		["@lsp.type.typeParameter"] = { fg = c.type, italic = true },
		["@lsp.type.variable"] = { fg = c.variable },

		-- Git Signs
		GitSignsAdd = { fg = c.green },
		GitSignsChange = { fg = c.accent },
		GitSignsDelete = { fg = c.red },

		-- Telescope
		TelescopeNormal = { fg = c.fg, bg = c.bg },
		TelescopeBorder = { fg = c.border, bg = c.bg },
		TelescopePromptNormal = { fg = c.fg_bright, bg = c.bg_medium },
		TelescopePromptBorder = { fg = c.border, bg = c.bg_medium },
		TelescopePromptTitle = { fg = c.accent },
		TelescopePreviewTitle = { fg = c.accent },
		TelescopeResultsTitle = { fg = c.accent },
		TelescopeSelection = { bg = c.bg_highlight },
		TelescopeMatching = { fg = c.accent, bold = true },

		-- Indent Blankline
		IblIndent = { fg = c.bg_highlight },
		IblScope = { fg = c.bright_black },

		-- Lazy
		LazyButton = { fg = c.fg, bg = c.bg_medium },
		LazyButtonActive = { fg = c.fg_brighter, bg = c.bg_highlight },
		LazyH1 = { fg = c.bg, bg = c.accent, bold = true },

		-- Which Key
		WhichKey = { fg = c.accent },
		WhichKeyGroup = { fg = c.magenta },
		WhichKeyDesc = { fg = c.fg },
		WhichKeyBorder = { fg = c.border },

		-- Noice / Notify
		NotifyERRORBorder = { fg = c.red },
		NotifyERRORIcon = { fg = c.red },
		NotifyERRORTitle = { fg = c.red },
		NotifyWARNBorder = { fg = c.yellow },
		NotifyWARNIcon = { fg = c.yellow },
		NotifyWARNTitle = { fg = c.yellow },
		NotifyINFOBorder = { fg = c.accent },
		NotifyINFOIcon = { fg = c.accent },
		NotifyINFOTitle = { fg = c.accent },

		-- Mini
		MiniStatuslineFilename = { fg = c.fg },
		MiniStatuslineDevinfo = { fg = c.fg_dim },
		MiniStatuslineFileinfo = { fg = c.fg_dim },
		MiniStatuslineModeNormal = { fg = c.bg, bg = c.accent, bold = true },
		MiniStatuslineModeInsert = { fg = c.bg, bg = c.green, bold = true },
		MiniStatuslineModeVisual = { fg = c.bg, bg = c.magenta, bold = true },
		MiniStatuslineModeCommand = { fg = c.bg, bg = c.yellow, bold = true },
		MiniStatuslineModeReplace = { fg = c.bg, bg = c.red, bold = true },

		-- NeoTree
		NeoTreeNormal = { fg = c.fg, bg = c.bg },
		NeoTreeNormalNC = { fg = c.fg, bg = c.bg },
		NeoTreeDirectoryIcon = { fg = c.accent },
		NeoTreeDirectoryName = { fg = c.accent },
		NeoTreeRootName = { fg = c.accent, bold = true },
		NeoTreeGitAdded = { fg = c.green },
		NeoTreeGitModified = { fg = c.accent },
		NeoTreeGitDeleted = { fg = c.red },
		NeoTreeGitUntracked = { fg = c.yellow },
		NeoTreeIndentMarker = { fg = c.bright_black },

		-- Dashboard
		DashboardHeader = { fg = c.accent },
		DashboardFooter = { fg = c.comment },
		DashboardCenter = { fg = c.fg },
		DashboardShortcut = { fg = c.magenta },
		DashboardIcon = { fg = c.accent },

		-- Cmp
		CmpItemAbbr = { fg = c.fg },
		CmpItemAbbrMatch = { fg = c.accent, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = c.accent, bold = true },
		CmpItemAbbrDeprecated = { fg = c.fg_dim, strikethrough = true },
		CmpItemKind = { fg = c.accent },
		CmpItemMenu = { fg = c.fg_dim },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
