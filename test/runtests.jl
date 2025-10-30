using Jive
runtests(@__DIR__, targets = """
    banners/versions.jl
    banners/reverted.jl
""")
