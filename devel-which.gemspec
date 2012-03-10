$:.push File.expand_path("../lib", __FILE__)
require "devel/which"

Gem::Specification.new do |s|
  s.name        = "devel-which"
  s.version     = Devel::Which::VERSION
  s.authors     = ["GOTO Kentaro aka Gotoken, mori_dev"]
  s.email       = ["mori.dev.asdf@gmail.com"]
  s.homepage    = "https://github.com/wakaran/devel-which"
  s.summary     = %q{Devel::Which - locate a symbol/library in the users namespace/path}
  s.description = <<-EOS
    Devel::Which provides an effective definition finder, for example,
    Fixnum#nonzero? is defined at Numeric and
    Fixnum.which_method("nonzero?") returns Numeric.
  EOS
  s.files = [
    "devel-which.gemspec",
    "doc/diff.txt",
    "lib/devel/which",
    "lib/devel/which/forclass.rb",
    "lib/devel/which/forobject.rb",
    "lib/devel/which/libwhich.rb",
    "lib/devel/which/formodule.rb",
    "lib/devel/which.rb",
    "LICENSE/license_ja.txt",
    "LICENSE/license_en.txt",
    "README.md",
    "Rakefile"
  ]

  s.require_paths = ["lib"]

end
