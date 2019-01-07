
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omega/version"

Gem::Specification.new do |spec|
  spec.name          = "omega"
  spec.version       = Omega::VERSION
  spec.authors       = ["yuuki"]
  spec.email         = ["kumagai.robo@gmail.com"]

  spec.summary       = %q{UDP Server commands}
  spec.description   = %q{UDP Server command line application.}
  spec.homepage      = "https://github.com/yuuki234"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0"
  spec.add_dependency "eventmachine"
end
