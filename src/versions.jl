# module Banners

### pre-release
# code from https://github.com/JuliaLang/julia/commit/f1662b024063d80889a29f757deec82868f8da76
function banner_01_pre_release(io, ver::VersionNumber, have_color::Bool; commit_string="")
    banner_color = "\033[1m               \033[32m_\033[37m      
   \033[36m_\033[37m       _ \033[31m_\033[32m(_)\033[35m_\033[37m     |
  \033[36m(_)\033[37m     | \033[31m(_) \033[35m(_)\033[37m    |  pre-release version
   _ _   _| |_  __ _ 2 |
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  \302\2512009 contributors
 _/ |\\__'_|_|_|\\__'_|  |  
|__/                   |\033[0m"
    banner_plain = "               _      
   _       _ _(_)_     |
  (_)     | (_) (_)    |  pre-release version
   _ _   _| |_  __ _ 2 |
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  \302\2512009 contributors
 _/ |\\__'_|_|_|\\__'_|  |  
|__/                   |"
    print(io, have_color ? banner_color : banner_plain)
end # function banner_01_pre_release


# 0.1.2
# https://github.com/JuliaLang/julia/blob/v0.1.2/base/version.jl#L230
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
tx = "\033[0m\033[1m" # text
jl = "\033[0m\033[1m" # julia
d1 = "\033[34m" # first dot
d2 = "\033[31m" # second dot
d3 = "\033[32m" # third dot
d4 = "\033[35m" # fourth dot
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


### 0.2.1
# https://github.com/JuliaLang/julia/blob/v0.2.1/base/version.jl#L208
function banner_020(io, ver::VersionNumber, have_color::Bool; commit_date="", commit_string="", MACHINE="")
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


### 0.3.12
# https://github.com/JuliaLang/julia/blob/v0.3.12/base/version.jl#L222
function banner_030(io, ver::VersionNumber, have_color::Bool; commit_date="", commit_string="", MACHINE="")
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


### 0.4.7, 0.5.2
# https://github.com/JuliaLang/julia/blob/v0.4.7/base/version.jl#L237
# https://github.com/JuliaLang/julia/blob/v0.5.2/base/version.jl#L247
function banner_040(io, ver::VersionNumber, have_color::Bool; commit_date="", commit_string="", MACHINE="")
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


### 0.6.4
# https://github.com/JuliaLang/julia/blob/v0.6.4/base/version.jl#L247
function banner_060(io, ver::VersionNumber, have_color::Bool; commit_date="", commit_string="", MACHINE="")
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


### 0.7.0
# https://github.com/JuliaLang/julia/blob/v0.7.0/base/version.jl#L283
function banner_070(io, ver::VersionNumber, have_color::Bool; commit_date="", commit_string="", MACHINE="")
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

### 1.0.5, 1.1.1, 1.2.0, 1.3.1, 1.4.2, 1.5.4, 1.6.1
# https://github.com/JuliaLang/julia/blob/v1.0.5/base/version.jl#L284
# https://github.com/JuliaLang/julia/blob/v1.1.1/base/version.jl#L285
# https://github.com/JuliaLang/julia/blob/v1.2.0/base/version.jl#L285
# https://github.com/JuliaLang/julia/blob/v1.3.1/base/version.jl#L264
# https://github.com/JuliaLang/julia/blob/v1.4.2/base/version.jl#L270
# https://github.com/JuliaLang/julia/blob/v1.5.4/base/version.jl#L270
# https://github.com/JuliaLang/julia/blob/v1.6.1/base/version.jl#L277
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


# from julia/stdlib/REPL/src/REPL
using Base: TAGGED_RELEASE_BANNER
using StyledStrings: face!, @styled_str
"""
    banner(io::IO = stdout, preferred::Symbol = :full)

Print the "Julia" informative banner to `io`, using the `preferred` variant
if reasonable and known.

!!! warning
    The particular banner selected by `preferred` is liable to being changed
    without warning. The current variants are: `:tiny`, `:short`, `:narrow`, and `:full`.
"""
function REPL_banner(ver::VersionNumber, io::IO = stdout, preferred::Symbol = :full)
    commit_string = if Base.GIT_VERSION_INFO.tagged_commit
        # Base.AnnotatedString(TAGGED_RELEASE_BANNER, :face => :shadow)
        annstr = Base.AnnotatedString(TAGGED_RELEASE_BANNER)
        face!(annstr, :shadow)
    elseif isempty(Base.GIT_VERSION_INFO.commit)
         styled""
    else
        days = Int(floor((ccall(:jl_clock_now, Float64, ()) - Base.GIT_VERSION_INFO.fork_master_timestamp) / (60 * 60 * 24)))
        days = max(0, days)
        unit = days == 1 ? "day" : "days"
        distance = Base.GIT_VERSION_INFO.fork_master_distance
        commit = Base.GIT_VERSION_INFO.commit_short

        if distance == 0
            styled"""Commit {grey:$commit} \
                     ({warning:⌛ {italic:$days $unit}} old master)"""
        else
            branch = Base.GIT_VERSION_INFO.branch
            styled"""{emphasis:$branch}/{grey:$commit} \
                     ({italic:{success:{bold,(slant=normal):↑} $distance commits}, \
                     {warning:{(slant=normal):⌛} $days $unit}})"""
        end
    end

    commit_date = isempty(Base.GIT_VERSION_INFO.date_string) ? "" : styled" {light:($(split(Base.GIT_VERSION_INFO.date_string)[1]))}"
    doclink = styled"{bold:Documentation:} {(underline=grey),link={https://docs.julialang.org}:https://docs.julialang.org}"
    help = styled"Type {repl_prompt_help:?} for help, {repl_prompt_pkg:]?} for {(underline=grey),link={https://pkgdocs.julialang.org/}:Pkg} help."

    sizenames = (:tiny, :short, :narrow, :full)
    maxsize = something(findfirst(==(preferred), sizenames), length(sizenames))
    size = min(if     all(displaysize(io) .>= (8, 70)); 4 # Full size
               elseif all(displaysize(io) .>= (8, 45)); 3 # Narrower
               elseif all(displaysize(io) .>= (3, 50)); 2 # Tiny
               else 1 end,
               max(0, maxsize))

    if size == 4 # Full size
        print(io, styled"""
                                 {bold,green:_}
                     {bold,blue:_}       _ {bold:{red:_}{green:(_)}{magenta:_}}     {shadow:│}  $doclink
                    {bold,blue:(_)}     | {bold:{red:(_)} {magenta:(_)}}    {shadow:│}
                     _ _   _| |_  __ _   {shadow:│}  $help
                    | | | | | | |/ _` |  {shadow:│}
                    | | |_| | | | (_| |  {shadow:│}  Version {bold:$ver}$commit_date
                   _/ |\\__'_|_|_|\\__'_|  {shadow:│}  $commit_string
                  |__/                   {shadow:│}""")
    elseif size == 3 # Rotated
        print(io, styled"""
                                 {bold,green:_}
                     {bold,blue:_}       _ {bold:{red:_}{green:(_)}{magenta:_}}
                    {bold,blue:(_)}     | {bold:{red:(_)} {magenta:(_)}}
                     _ _   _| |_  __ _
                    | | | | | | |/ _` |
                    | | |_| | | | (_| |
                   _/ |\\__'_|_|_|\\__'_|
                  |__/

                   $doclink
                   $help

                   Version {bold:$VERSION}$commit_date
                   $commit_string
                  \n""")
    elseif size == 2 # Tiny
        print(io, styled"""
                     {bold,green:o}  {shadow:│} Version {bold:$VERSION}$commit_date
                    {bold:{red:o} {magenta:o}} {shadow:│} $commit_string
                   """, ifelse(displaysize(io) > (12, 0), "\n", ""))
    elseif size == 1 && Base.GIT_VERSION_INFO.tagged_commit # Text only
        print(io, styled"""{bold:{blue:∴} {magenta:Julia} $VERSION}$commit_date\n""")
    elseif size == 1 # Text only
        print(io, styled"""{bold:{blue:∴} {magenta:Julia} $VERSION}$commit_date $commit_string\n""")
    end
end # banner(io::IO = stdout, preferred::Symbol = :full)

function banner_113(io::IO, ver::VersionNumber, have_color::Bool; preferred::Symbol = :full, commit_date="", commit_string="")
    REPL_banner(ver, io, preferred)
end # function banner_113

# module Banners
