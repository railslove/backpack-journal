# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "backpack_journal"

Gem::Specification.new do |s|
  s.name        = "backpack_journal"
  s.version     = BackpackJournal::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["John Barnette", "Red Davis"]
  s.email       = ["jbarnette@rubyforge.org", "red@railslove.com"]
  s.homepage    = "https://github.com/railslove/backpack-journal"
  s.summary     = %q{CLI tool for Backpack journal}
  s.description = %q{CLI tool for Backpack journal}

  s.rubyforge_project = "backpack_journal"

  s.add_dependency "thor", "~> 0.14.6"
  s.add_dependency "rest-client", "~> 1.6.1"

  s.add_development_dependency "rake", "~> 0.8.7"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
