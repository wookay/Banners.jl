module test_banners_versions

using Test
using Banners

versions = (v"1.0", v"1.5")
io = IOBuffer()
for ver in versions
    show(io, MIME"text/plain"(), banner(ver, false))
    println(io)
    println(io)
end
s = (String ∘ take!)(io)
@test s == raw"""
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.0.0
 _/ |\__'_|_|_|\__'_|  |  
|__/                   |

               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.5.0
 _/ |\__'_|_|_|\__'_|  |  
|__/                   |

"""

end # module test_banners_versions
