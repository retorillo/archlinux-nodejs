rm -rf ~/.vim/bundle

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/dhruvasagar/vim-table-mode.git
git clone https://github.com/danro/rename.vim.git
git clone https://github.com/tomtom/tcomment_vim.git
git clone https://github.com/othree/yajs.vim.git
git clone https://github.com/othree/es.next.syntax.vim.git
cd -

cp .vimrc ~/.vimrc
