# module Banners

# code from https://github.com/JuliaLang/julia/blob/master/base/version.jl#L270

function banner_01(io, ver::VersionNumber, have_color::Bool; commit_string="")
version_string = "Version $ver"
banner_plain =
"               _
   _       _ _(_)_     |  A fresh approach to technical computing
  (_)     | (_) (_)    |  Documentation: http://docs.julialang.org
   _ _   _| |_  __ _   |  Type \"help()\" to list help topics
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  $version_string
 _/ |\\__'_|_|_|\\__'_|  |  $commit_string
|__/                   |"
local tx = "\033[0m\033[1m" # text
local jl = "\033[0m\033[1m" # julia
local d1 = "\033[34m" # first dot
local d2 = "\033[31m" # second dot
local d3 = "\033[32m" # third dot
local d4 = "\033[35m" # fourth dot
banner_color =
"\033[1m               $(d3)_
   $(d1)_       $(jl)_$(tx) $(d2)_$(d3)(_)$(d4)_$(tx)     |  A fresh approach to technical computing
  $(d1)(_)$(jl)     | $(d2)(_)$(tx) $(d4)(_)$(tx)    |  Documentation: http://docs.julialang.org
   $(jl)_ _   _| |_  __ _$(tx)   |  Type \"help()\" to list help topics
  $(jl)| | | | | | |/ _` |$(tx)  |
  $(jl)| | |_| | | | (_| |$(tx)  |  $version_string
 $(jl)_/ |\\__'_|_|_|\\__'_|$(tx)  |  $commit_string
$(jl)|__/$(tx)                   |\033[0m"
    print(io, have_color ? banner_color : banner_plain) 
end # function banner_01

function banner_020(io, ver::VersionNumber, have_color::Bool; commit_date="", commit_string="", MACHINE=Sys.MACHINE)
banner_plain =
"""
               _
   _       _ _(_)_     |  A fresh approach to technical computing
  (_)     | (_) (_)    |  Documentation: http://docs.julialang.org
   _ _   _| |_  __ _   |  Type \"help()\" to list help topics
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version $(ver)$(commit_date)
 _/ |\\__'_|_|_|\\__'_|  |  $(commit_string)
|__/                   |  $(MACHINE)"""
local tx = "\033[0m\033[1m" # text
local jl = "\033[0m\033[1m" # julia
local d1 = "\033[34m" # first dot
local d2 = "\033[31m" # second dot
local d3 = "\033[32m" # third dot
local d4 = "\033[35m" # fourth dot
banner_color =
"\033[1m               $(d3)_
   $(d1)_       $(jl)_$(tx) $(d2)_$(d3)(_)$(d4)_$(tx)     |  A fresh approach to technical computing
  $(d1)(_)$(jl)     | $(d2)(_)$(tx) $(d4)(_)$(tx)    |  Documentation: http://docs.julialang.org
   $(jl)_ _   _| |_  __ _$(tx)   |  Type \"help()\" to list help topics
  $(jl)| | | | | | |/ _` |$(tx)  |
  $(jl)| | |_| | | | (_| |$(tx)  |  Version $(ver)$(commit_date)
 $(jl)_/ |\\__'_|_|_|\\__'_|$(tx)  |  $(commit_string)
$(jl)|__/$(tx)                   |  $(MACHINE)\033[0m"
    print(io, have_color ? banner_color : banner_plain) 
end # function banner_020

function banner_030(io, ver::VersionNumber, have_color::Bool; commit_date="", commit_string="", MACHINE=Sys.MACHINE)
    if have_color
        tx = "\033[0m\033[1m" # text
        jl = "\033[0m\033[1m" # julia
        d1 = "\033[34m" # first dot
        d2 = "\033[31m" # second dot
        d3 = "\033[32m" # third dot
        d4 = "\033[35m" # fourth dot

        print(io,"""\033[1m               $(d3)_
           $(d1)_       $(jl)_$(tx) $(d2)_$(d3)(_)$(d4)_$(tx)     |  A fresh approach to technical computing
          $(d1)(_)$(jl)     | $(d2)(_)$(tx) $(d4)(_)$(tx)    |  Documentation: http://docs.julialang.org
           $(jl)_ _   _| |_  __ _$(tx)   |  Type \"help()\" for help.
          $(jl)| | | | | | |/ _` |$(tx)  |
          $(jl)| | |_| | | | (_| |$(tx)  |  Version $(ver)$(commit_date)
         $(jl)_/ |\\__'_|_|_|\\__'_|$(tx)  |  $(commit_string)
        $(jl)|__/$(tx)                   |  $(MACHINE)\033[0m""")
    else
        print(io,"""
                       _
           _       _ _(_)_     |  A fresh approach to technical computing
          (_)     | (_) (_)    |  Documentation: http://docs.julialang.org
           _ _   _| |_  __ _   |  Type \"help()\" for help.
          | | | | | | |/ _` |  |
          | | |_| | | | (_| |  |  Version $(ver)$(commit_date)
         _/ |\\__'_|_|_|\\__'_|  |  $(commit_string)
        |__/                   |  $(MACHINE)""")
    end
end # function banner_030

### 0.4, 0.5
function banner_040(io, ver::VersionNumber, have_color::Bool; commit_date="", commit_string="", MACHINE=Sys.MACHINE)
    if have_color
        tx = "\033[0m\033[1m" # text
        jl = "\033[0m\033[1m" # julia
        d1 = "\033[34m" # first dot
        d2 = "\033[31m" # second dot
        d3 = "\033[32m" # third dot
        d4 = "\033[35m" # fourth dot

        print(io,"""\033[1m               $(d3)_$(tx)
           $(d1)_$(tx)       $(jl)_$(tx) $(d2)_$(d3)(_)$(d4)_$(tx)     |  A fresh approach to technical computing
          $(d1)(_)$(jl)     | $(d2)(_)$(tx) $(d4)(_)$(tx)    |  Documentation: http://docs.julialang.org
           $(jl)_ _   _| |_  __ _$(tx)   |  Type \"?help\" for help.
          $(jl)| | | | | | |/ _` |$(tx)  |
          $(jl)| | |_| | | | (_| |$(tx)  |  Version $(ver)$(commit_date)
         $(jl)_/ |\\__'_|_|_|\\__'_|$(tx)  |  $(commit_string)
        $(jl)|__/$(tx)                   |  $(MACHINE)\033[0m""")
    else
        print(io,"""
                       _
           _       _ _(_)_     |  A fresh approach to technical computing
          (_)     | (_) (_)    |  Documentation: http://docs.julialang.org
           _ _   _| |_  __ _   |  Type \"?help\" for help.
          | | | | | | |/ _` |  |
          | | |_| | | | (_| |  |  Version $(ver)$(commit_date)
         _/ |\\__'_|_|_|\\__'_|  |  $(commit_string)
        |__/                   |  $(MACHINE)""")
    end
end # function banner_040

function banner_060(io, ver::VersionNumber, have_color::Bool; commit_date="", commit_string="", MACHINE=Sys.MACHINE)
    text_colors = Base.text_colors
    if have_color
        c = text_colors
        tx = c[:normal] # text
        jl = c[:normal] # julia
        d1 = c[:bold] * c[:blue]    # first dot
        d2 = c[:bold] * c[:red]     # second dot
        d3 = c[:bold] * c[:green]   # third dot
        d4 = c[:bold] * c[:magenta] # fourth dot

        print(io,"""               $(d3)_$(tx)
           $(d1)_$(tx)       $(jl)_$(tx) $(d2)_$(d3)(_)$(d4)_$(tx)     |  A fresh approach to technical computing
          $(d1)(_)$(jl)     | $(d2)(_)$(tx) $(d4)(_)$(tx)    |  Documentation: https://docs.julialang.org
           $(jl)_ _   _| |_  __ _$(tx)   |  Type \"?help\" for help.
          $(jl)| | | | | | |/ _` |$(tx)  |
          $(jl)| | |_| | | | (_| |$(tx)  |  Version $(ver)$(commit_date)
         $(jl)_/ |\\__'_|_|_|\\__'_|$(tx)  |  $(commit_string)
        $(jl)|__/$(tx)                   |  $(MACHINE)""")
    else
        print(io,"""
                       _
           _       _ _(_)_     |  A fresh approach to technical computing
          (_)     | (_) (_)    |  Documentation: https://docs.julialang.org
           _ _   _| |_  __ _   |  Type \"?help\" for help.
          | | | | | | |/ _` |  |
          | | |_| | | | (_| |  |  Version $(ver)$(commit_date)
         _/ |\\__'_|_|_|\\__'_|  |  $(commit_string)
        |__/                   |  $(MACHINE)""")
    end
end # function banner_060

function banner_070(io, ver::VersionNumber, have_color::Bool; commit_date="", commit_string="", MACHINE=Sys.MACHINE)
    text_colors = Base.text_colors
    if have_color
        c = text_colors
        tx = c[:normal] # text
        jl = c[:normal] # julia
        d1 = c[:bold] * c[:blue]    # first dot
        d2 = c[:bold] * c[:red]     # second dot
        d3 = c[:bold] * c[:green]   # third dot
        d4 = c[:bold] * c[:magenta] # fourth dot

        print(io,"""               $(d3)_$(tx)
           $(d1)_$(tx)       $(jl)_$(tx) $(d2)_$(d3)(_)$(d4)_$(tx)     |  A fresh approach to technical computing
          $(d1)(_)$(jl)     | $(d2)(_)$(tx) $(d4)(_)$(tx)    |  Documentation: https://docs.julialang.org
           $(jl)_ _   _| |_  __ _$(tx)   |  Type \"?\" for help, \"]?\" for Pkg help.
          $(jl)| | | | | | |/ _` |$(tx)  |
          $(jl)| | |_| | | | (_| |$(tx)  |  Version $(ver)$(commit_date)
         $(jl)_/ |\\__'_|_|_|\\__'_|$(tx)  |  $(commit_string)
        $(jl)|__/$(tx)                   |  $(MACHINE)""")
    else
        print(io,"""
                       _
           _       _ _(_)_     |  A fresh approach to technical computing
          (_)     | (_) (_)    |  Documentation: https://docs.julialang.org
           _ _   _| |_  __ _   |  Type \"?\" for help, \"]?\" for Pkg help.
          | | | | | | |/ _` |  |
          | | |_| | | | (_| |  |  Version $(ver)$(commit_date)
         _/ |\\__'_|_|_|\\__'_|  |  $(commit_string)
        |__/                   |  $(MACHINE)""")
    end
end # function banner_070

### 1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6
function banner_100(io, ver::VersionNumber, have_color::Bool; commit_date="", commit_string="")
    text_colors = Base.text_colors
    if have_color
        c = text_colors
        tx = c[:normal] # text
        jl = c[:normal] # julia
        d1 = c[:bold] * c[:blue]    # first dot
        d2 = c[:bold] * c[:red]     # second dot
        d3 = c[:bold] * c[:green]   # third dot
        d4 = c[:bold] * c[:magenta] # fourth dot

        print(io,"""               $(d3)_$(tx)
           $(d1)_$(tx)       $(jl)_$(tx) $(d2)_$(d3)(_)$(d4)_$(tx)     |  Documentation: https://docs.julialang.org
          $(d1)(_)$(jl)     | $(d2)(_)$(tx) $(d4)(_)$(tx)    |
           $(jl)_ _   _| |_  __ _$(tx)   |  Type \"?\" for help, \"]?\" for Pkg help.
          $(jl)| | | | | | |/ _` |$(tx)  |
          $(jl)| | |_| | | | (_| |$(tx)  |  Version $(ver)$(commit_date)
         $(jl)_/ |\\__'_|_|_|\\__'_|$(tx)  |  $(commit_string)
        $(jl)|__/$(tx)                   |""")
    else
        print(io,"""
                       _
           _       _ _(_)_     |  Documentation: https://docs.julialang.org
          (_)     | (_) (_)    |
           _ _   _| |_  __ _   |  Type \"?\" for help, \"]?\" for Pkg help.
          | | | | | | |/ _` |  |
          | | |_| | | | (_| |  |  Version $(ver)$(commit_date)
         _/ |\\__'_|_|_|\\__'_|  |  $(commit_string)
        |__/                   |""")
    end
end # function banner_100

# module Banners
