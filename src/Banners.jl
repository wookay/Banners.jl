module Banners

export banner

include("versions.jl")

function banner(io::IO, version=VERSION, have_color::Bool=2 != Base.JLOptions().color; commit_date="", commit_string="")
    if     v"0.2" > version
        banner_01(io, version, have_color; commit_string=commit_string)
    elseif v"0.3" > version >= v"0.2"
        banner_020(io, version, have_color; commit_date=commit_date, commit_string=commit_string)
    elseif v"0.4" > version >= v"0.3"
        banner_030(io, version, have_color; commit_date=commit_date, commit_string=commit_string)
    elseif v"0.6" > version >= v"0.4"
        banner_040(io, version, have_color; commit_date=commit_date, commit_string=commit_string)
    elseif v"0.7" > version >= v"0.6"
        banner_060(io, version, have_color; commit_date=commit_date, commit_string=commit_string)
    elseif v"1.0" > version >= v"0.7"
        banner_070(io, version, have_color; commit_date=commit_date, commit_string=commit_string)
    else
        banner_100(io, version, have_color; commit_date=commit_date, commit_string=commit_string)
    end
end

end # module Banners
