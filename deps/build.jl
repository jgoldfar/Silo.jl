using BinDeps
using Compat

@BinDeps.setup

const libsilo = library_dependency("libsilo", aliases=["libsilo"])
const silover = "4.10.2"
const silofilebase = "silo-$(silover)-bsd"

provides(Sources,
         URI("https://wci.llnl.gov/content/assets/docs/simulation/computer-codes/silo/silo-$(silover)/$(silofilebase).tar.gz"),
         libsilo)

println(BinDeps.depsdir(libsilo))

prefix = joinpath(BinDeps.depsdir(libsilo), "usr")
srcdir = joinpath(BinDeps.depsdir(libsilo), "src", silofilebase)
println("Installing Silo source to ", srcdir)

provides(SimpleBuild, (@build_steps begin
                         GetSources(libsilo)
                         CreateDirectory(srcdir)
                         @build_steps begin
                           ChangeDirectory(srcdir)
                           `./configure --disable-silex --disable-browser --prefix=$prefix --enable-shared`
                           `make`
                           `make install`
                         end
                       end), libsilo)

@BinDeps.install @compat Dict(:libsilo => :libsilo)
