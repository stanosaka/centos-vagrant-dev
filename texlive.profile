if [ ! -d /usr/local/texlive ]
  then
    cat <<_EOF_ > texlive.profile
# texlive.profile written on Wed Apr 12 04:53:28 2017 UTC
# It will NOT be updated and reflects only the
# installation profile at installation time.
selected_scheme scheme-full
TEXDIR /usr/local/texlive/2016
TEXMFCONFIG ~/.texlive2016/texmf-config
TEXMFHOME ~/texmf
TEXMFLOCAL /usr/local/texlive/texmf-local
TEXMFSYSCONFIG /usr/local/texlive/2016/texmf-config
TEXMFSYSVAR /usr/local/texlive/2016/texmf-var
TEXMFVAR ~/.texlive2016/texmf-var
binary_x86_64-linux 1
collection-basic 1
collection-bibtexextra 1
collection-binextra 1
collection-context 1
collection-fontsextra 1
collection-fontsrecommended 1
collection-fontutils 1
collection-formatsextra 1
collection-games 1
collection-genericextra 1
collection-genericrecommended 1
collection-htmlxml 1
collection-humanities 1
collection-langafrican 1
collection-langarabic 1
collection-langchinese 1
collection-langcjk 1
collection-langcyrillic 1
collection-langczechslovak 1
collection-langenglish 1
collection-langeuropean 1
collection-langfrench 1
collection-langgerman 1
collection-langgreek 1
collection-langindic 1
collection-langitalian 1
collection-langjapanese 1
collection-langkorean 1
collection-langother 1
collection-langpolish 1
collection-langportuguese 1
collection-langspanish 1
collection-latex 1
collection-latexextra 1
collection-latexrecommended 1
collection-luatex 1
collection-mathextra 1
collection-metapost 1
collection-music 1
collection-omega 1
collection-pictures 1
collection-plainextra 1
collection-pstricks 1
collection-publishers 1
collection-science 1
collection-texworks 1
collection-xetex 1
in_place 0
option_adjustrepo 1
option_autobackup 1
option_backupdir tlpkg/backups
option_desktop_integration 1
option_doc 1
option_file_assocs 1
option_fmt 1
option_letter 1
option_menu_integration 1
option_path 0
option_post_code 1
option_src 1
option_sys_bin /usr/local/bin
option_sys_info /usr/local/share/info
option_sys_man /usr/local/share/man
option_w32_multi_user 1
option_write18_restricted 1
portable 0
_EOF_
  fi
