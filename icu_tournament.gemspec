# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require 'icu_tournament/version'

Gem::Specification.new do |s|
  s.name = %q{icu_tournament}

  s.authors = ["Mark Orr", "David Murray"]
  s.email = %q{davidmurray11@gmail.com}
  s.description = %q{Convert files of chess tournament data in different formats to ruby classes and vice-versa.}
  s.homepage = %q{http://github.com/dbtmurray/icu_tournament}
  s.summary = %q{For reading and writing files of chess tournament data.}
  s.version = ICU::Tournament::VERSION
  s.rubyforge_project = "icu_tournament"
  s.license = "MIT"

  s.extra_rdoc_files = %w(LICENCE README.rdoc)
  s.files = Dir.glob("lib/**/*.rb") + Dir.glob("spec/*.rb") + %w(LICENCE README.rdoc)
  s.require_paths = ["lib"]
  s.test_files = Dir.glob("spec/*.rb")

  s.add_runtime_dependency("dbf", "~> 2.0")        # for SwissPerfect trn/sco files
  s.add_runtime_dependency("rubyzip", "~> 1.1")    # for zipped-up SwissPerfect files
  s.add_runtime_dependency("icu_name", "~> 1.2")   # for name canonicalisation
  s.add_runtime_dependency("icu_utils", ">= 1.3.2")# for federations

  s.add_development_dependency("bundler", "~> 1.8")
  s.add_development_dependency("rake", "~> 10.4")
  s.add_development_dependency("rspec", "~> 3.2")
  s.add_development_dependency("rdoc", "~> 4.2")
end
