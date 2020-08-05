# Banners.jl

|  **Build Status**                |
|:---------------------------------|
|  [![][actions-img]][actions-url] |

```
julia> using Banners

julia> banner(v"0.1.2+113667293.r7252"; commit_string="Commit 7252bb59ac (2013-03-30 23:23:59)")
               _
   _       _ _(_)_     |  A fresh approach to technical computing
  (_)     | (_) (_)    |  Documentation: http://docs.julialang.org
   _ _   _| |_  __ _   |  Type "help()" to list help topics
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 0.1.2+113667293.r7252
 _/ |\__'_|_|_|\__'_|  |  Commit 7252bb59ac (2013-03-30 23:23:59)
|__/                   |

julia> banner(v"0.2.1"; commit_date=" (2014-02-11 06:30 UTC)", commit_string="Official http://julialang.org/ release")
               _
   _       _ _(_)_     |  A fresh approach to technical computing
  (_)     | (_) (_)    |  Documentation: http://docs.julialang.org
   _ _   _| |_  __ _   |  Type "help()" to list help topics
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 0.2.1 (2014-02-11 06:30 UTC)
 _/ |\__'_|_|_|\__'_|  |  Official http://julialang.org/ release
|__/                   |  x86_64-apple-darwin18.7.0

julia> banner(v"0.3.12"; commit_date=" (2015-10-26 12:41 UTC)", commit_string="Official http://julialang.org/ release")
               _
   _       _ _(_)_     |  A fresh approach to technical computing
  (_)     | (_) (_)    |  Documentation: http://docs.julialang.org
   _ _   _| |_  __ _   |  Type "help()" for help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 0.3.12 (2015-10-26 12:41 UTC)
 _/ |\__'_|_|_|\__'_|  |  Official http://julialang.org/ release
|__/                   |  x86_64-apple-darwin18.7.0

julia> banner(v"0.4.7"; commit_date=" (2016-09-18 16:17 UTC)", commit_string="Official http://julialang.org/ release")
               _
   _       _ _(_)_     |  A fresh approach to technical computing
  (_)     | (_) (_)    |  Documentation: http://docs.julialang.org
   _ _   _| |_  __ _   |  Type "?help" for help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 0.4.7 (2016-09-18 16:17 UTC)
 _/ |\__'_|_|_|\__'_|  |  Official http://julialang.org/ release
|__/                   |  x86_64-apple-darwin18.7.0

julia> banner(v"0.6.4"; commit_date=" (2018-07-09 19:09 UTC)", commit_string="Official http://julialang.org/ release")
               _
   _       _ _(_)_     |  A fresh approach to technical computing
  (_)     | (_) (_)    |  Documentation: https://docs.julialang.org
   _ _   _| |_  __ _   |  Type "?help" for help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 0.6.4 (2018-07-09 19:09 UTC)
 _/ |\__'_|_|_|\__'_|  |  Official http://julialang.org/ release
|__/                   |  x86_64-apple-darwin18.7.0

julia> banner(v"0.7.0"; commit_date=" (2018-08-08 06:46 UTC)", commit_string="Official http://julialang.org/ release")
               _
   _       _ _(_)_     |  A fresh approach to technical computing
  (_)     | (_) (_)    |  Documentation: https://docs.julialang.org
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 0.7.0 (2018-08-08 06:46 UTC)
 _/ |\__'_|_|_|\__'_|  |  Official http://julialang.org/ release
|__/                   |  x86_64-apple-darwin18.7.0

julia> banner(v"1.5"; commit_date=" (2020-08-01)", commit_string="Official https://julialang.org/ release")
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.5.0 (2020-08-01)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

```


[actions-img]: https://github.com/wookay/Banners.jl/workflows/CI/badge.svg
[actions-url]: https://github.com/wookay/Banners.jl/actions
