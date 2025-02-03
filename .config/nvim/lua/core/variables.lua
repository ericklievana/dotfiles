-- Awk language
-- Enable GNU Awk features
vim.g.awk_is_gawk = 1

-- Python language
-- Disable python recommended style
vim.g.python_recommended_style = 0

-- C Language
-- C syntax for h headers
vim.g.c_syntax_for_h = 1

-- Don't highlight utf strings
vim.g.c_no_utf = 0

-- Highlight GNU gcc specific items
vim.g.c_gnu = 1

-- Markdown Language
-- Enable folding on markdown
--vim.g.markdown_folding = 1

-- Enable highlight in long regions
--vim.g.mardown_minlines = 100

-- Enable fended coded block syntax highlight
--vim.g.markdown_fended_languages = ['python', 'bash=sh', 'c']

-- Detect Markdown as Pandoc
vim.g.markdown_md = 'pandoc'

-- Enable fended coded block syntax highlight
vim.g['pandoc#syntax#codeblocks#embeds#langs'] = {'python', 'bash=sh', 'c'}

-- TeX language
-- Set default to latex
vim.g.tex_flavor = 'latex'

-- Enable folds
vim.g.tex_fold_enabled = 1

-- Netrw browser
-- Supress netrw banner
vim.g.netrw_banner = 0

-- Open netrw file in previous window
vim.g.netrw_browse_split = 0
