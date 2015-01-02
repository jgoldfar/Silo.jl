using BinDeps

@BinDeps.setup

silolib = library_dependency("libsilo")
silover="4.9.1"
silofilebase = "silo-$(silover)-bsd"

provides(Sources,
         URI("https://wci.llnl.gov/content/assets/docs/simulation/computer-codes/silo/silo-$(silover)/$(silofilebase).tar.gz"),
         [silolib,])

prefix = joinpath(BinDeps.depsdir(silolib), "usr")
srcdir = joinpath(BinDeps.depsdir(silolib), "src", silofilebase)
println("Installing Silo source to, ", srcdir)

provides(SimpleBuild,
         (@build_steps begin
            GetSources(silolib)
            @build_steps begin
              ChangeDirectory(srcdir)
              `./configure --disable-silex --disable-browser --prefix=$prefix`
              `make`
              `make install`
            end
          end), silolib)

@BinDeps.install [:libsilo => :libsilo]
