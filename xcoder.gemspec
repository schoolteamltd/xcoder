# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "xcode/version"

Gem::Specification.new do |s|
  s.name        = "xcoder"
  s.version     = Xcode::VERSION
  s.authors     = ["Ray Hilton"]
  s.email       = ["ray@wirestorm.net"]
  s.homepage    = "https://github.com/rayh/xcoder"
  s.summary     = %q{Ruby wrapper around xcodebuild, xcrun, agvtool and pbxproj files}
  s.description = %q{Provides a ruby based object-model for parsing project structures and invoking builds}

  s.rubyforge_project = "xcoder"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_runtime_dependency "json"
  s.add_runtime_dependency "plist"  
  s.add_runtime_dependency "nokogiri"
  s.add_runtime_dependency "builder"
  s.add_runtime_dependency "rest-client"
end
