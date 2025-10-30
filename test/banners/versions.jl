module test_banners_versions

using Test
using Banners # banner
using .Banners: Banner

function print_banner(b::Banner)
    iobuf = IOBuffer()
    ioc = IOContext(iobuf, :color => b.have_color)
    show(ioc, MIME"text/plain"(), b)
    println(ioc)
    s = (String ∘ take!)(iobuf)
    print(s)
end

ver = v"1.14.0-DEV.14"
b = banner(ver, true)
print_banner(b)

versions = ((version = v"1.12.1",          kwargs = (; commit_date = " (2025-10-17)", commit_string = "Official https://julialang.org release")),
            (version = v"0.1-pre-release", kwargs = (; commit_string = "")),
           )
for ver in versions
    b = banner(ver.version, true; ver.kwargs...)
    print_banner(b)
end

end # module test_banners_versions
