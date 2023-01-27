add_rules("mode.debug", "mode.release")

add_repositories("semver https://github.com/Neargye/semver master")

local repos = "$(configdir)/repositories/"


target("ode", function()
    set_kind("binary")
    set_toolchains("yasm", "llvm")
    add_files("src/**.s")
    add_ldflags("-no-pie", "-fuse-ld=lld",
        { force = true })
end)

target("fmt", function()
    set_kind("binary")
    set_toolchains("yasm", "llvm")
    add_ldflags("-no-pie", "-fuse-ld=lld", { force = true })
    add_files("tools/fmt/**.s")
    add_includedirs(repos .. "semver/include")
end)
