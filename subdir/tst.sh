cp wut_bak.txt wut.txt

# doesn't work on Mac's built-in sed:
sed ':a;N;$!ba;s/\n/ /g' wut.txt
# - but that DOES work with another sed executable, after installing gnu-sed via brew and adding this to .bashrc:
# PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
# for good measure also added this for GNU coreutils from brew:
# PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"

# works on Mac's version of sed -- but no thanks to the extra syntax:
# sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g' wut.txt