# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rock_paper_scissors/version'

Gem::Specification.new do |spec|
  spec.name          = "rock_paper_scissors"
  spec.version       = RockPaperScissors::VERSION
  spec.authors       = ["Sia Karamalegos"]
  spec.email         = ["siakaramalegos@gmail.com"]

  spec.summary       = %q{Settle any argument with a Rock Paper Scissors battle.}
  spec.description   = %q{Settle any argument with a 1 or 2 player Rock Paper Scissors battle.  Also includes rock-paper-scissors-lizard-spock mode!  To install, run gem install rock_paper_scissors. See github repo for more information.}
  spec.homepage      = "https://github.com/siakaramalegos/rock_paper_scissors"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_runtime_dependency "rainbow"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
