module Banners

export banner

include("versions.jl")

function banner(version::VersionNumber, args...; kwargs...)
    banner(stdout, version, args...; kwargs...)
end

function banner(io::IO, version::VersionNumber=VERSION, have_color::Bool=2 != Base.JLOptions().color; kwargs...)
    if     v"0.2" > version
        f = banner_01
    elseif v"0.3" > version >= v"0.2"
        f = banner_020
    elseif v"0.4" > version >= v"0.3"
        f = banner_030
    elseif v"0.6" > version >= v"0.4"
        f = banner_040
    elseif v"0.7" > version >= v"0.6"
        f = banner_060
    elseif v"1.0" > version >= v"0.7"
        f = banner_070
    else
        f = banner_100
    end
    f(io, version, have_color; kwargs...)
end

end # module Banners
