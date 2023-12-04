#!/usr/bin/env texlua

-- Build script for .
-- run with `l3build`

module        = "shuaibeamer"

checkengines  = {"xetex", "luatex"}
checkopts     = "-interaction=batchmode"

textfiles     = {"LICENSE", "README*.md", "*.ins"}

-- sourcefiledir = "source"
sourcefiles   = {"*.dtx"}
installfiles  = {"*.cls", "*.sty"}

typesetexe    = "xelatex"
typesetfiles  = {"shuaibeamer.dtx"}

unpackexe     = "xetex"
unpackfiles   = {"shuaibeamer.dtx"}
