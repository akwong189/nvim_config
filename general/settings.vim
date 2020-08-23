syntax enable

let base16colorspace=256    "Access colors present in 256 colorspace"
set termguicolors

set nu 		    			"enables number line"
set encoding=utf-8 			"utf-8"
set mouse=a 				"enables mouse support"
set ruler   				"enables ruler"
set cmdheight=2				"larger message location"
set t_Co=256				"256 colors"
set tabstop=4				"Insert number of spaces for tab"
set shiftwidth=4			"change space characters for indentation"
set smarttab				"smarter tabbing"
set expandtab				"converts tabs to spaces"
set smartindent				"smarter indenting"
set autoindent				"auto indenting"
" set cursorline				"cursor line highlighting"
set noshowmode				"no more --INSERT--"
set nowrap                  "Don't wrap text around"

set nobackup				"recommended COC settings"
set nowritebackup			"recommended COC settings"

set clipboard=unnamedplus	"copy and paste between vim and others"

au! BufWritePost $MYVIMRC source %	" auto source when writing to init.vm alternatively you can run :source $MYVIMRC
