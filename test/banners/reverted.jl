module test_reverted_1_13

# reverted at julia 1.14.0-DEV.14
# commit 91695525ada663e39b064686e1e5d47654d7fdba

# julia 1.13.0-DEV.1386
# commit 0f9b2fc19fd201f18d92f823361a4bfd24047a29
#
# from julia/stdlib/REPL/src/REPL.jl
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
function banner_1_13_0_DEV_1386(ver::VersionNumber, io::IO = stdout, preferred::Symbol = :full)
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
end # banner_1_13_0_DEV_1386(ver::VersionNumber, io::IO = stdout, preferred::Symbol = :full)

io = stdout
ioc = IOContext(io, :color => true)
banner_1_13_0_DEV_1386(VERSION, ioc, :full)

end # module test_reverted_1_13
