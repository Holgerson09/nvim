local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.wrap = false
opt.cursorline = true
opt.linebreak = true
opt.colorcolumn = '120'

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
opt.undofile = true

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true
opt.scrolloff = 8
opt.mouse = ''
opt.signcolumn = 'yes'
opt.isfname:append('@-@')

opt.updatetime = 50

opt.splitright = true
opt.splitbelow = true

opt.autochdir = false
opt.iskeyword:append('-')
opt.path:append('**')
opt.background = 'dark'
