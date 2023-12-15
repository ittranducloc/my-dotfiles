# remove the same name alias
unalias fd 2> /dev/null
alias fdf='fd -H -p -tf' # hidden files with full-path
alias fdd='fd -H -p -td' # hidden directory with full-path
alias fdfm='fd -H -tf -g "" --maxdepth' # hidden files at recursive level
alias fddm='fd -H -td -g "" --maxdepth' # hidden directory at recursive level
