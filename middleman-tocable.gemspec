
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "middleman/tocable/version"

Gem::Specification.new do |spec|
  spec.name          = "middleman-tocable"
  spec.version       = Middleman::Tocable::VERSION
  spec.authors       = ["Mateu Yabar"]
  spec.email         = ["mateuyabar@mateuyabar.com"]

  spec.summary       = %q{TOC generator for Middleman.}
  spec.homepage      = "https://github.com/mateuyabar/middleman-tocable"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency( "middleman-core", [ ">= 4.0.0" ] )
  spec.add_dependency( "nokogiri", [ ">= 1.10.3" ] )

end
