module test_banners_versions

using Test
using Banners

function print_banner(ver::VersionNumber, color::Bool)
    b = banner(ver, color)
    iobuf = IOBuffer()
    ioc = IOContext(iobuf, :color => color)
    show(ioc, MIME"text/plain"(), b)
    println(ioc)
    s = (String ∘ take!)(iobuf)
    print(s)
end

ver = v"1.13.0-DEV.1386"
print_banner(ver, true)

versions = (v"1.12",
            v"0.1-pre-release",
           )
for ver in versions
    print_banner(ver, true)
end

end # module test_banners_versions
