{
    files = {
        "build/.objs/ode/linux/x86_64/debug/src/main.s.o",
        "build/.objs/ode/linux/x86_64/debug/src/version.s.o"
    },
    values = {
        "/usr/bin/clang++",
        {
            "-m64",
            "-no-pie",
            "-fuse-ld=lld"
        }
    }
}