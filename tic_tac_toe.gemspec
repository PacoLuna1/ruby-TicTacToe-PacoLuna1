lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tic_tac_toe/version"

Gem::Specification.new do |spec|
  spec.name          = "tic_tac_toe"
  spec.version       = TicTacToe::VERSION
  spec.authors       = ["Paco Luna"]
  spec.email         = ["pakoo_15@hotmail.com"]

  spec.summary       = %q{Tic Tac TOe}
  spec.description   = %q{A tic tac toe game}
  spec.homepage      = "https://github.com/PacoLuna1/ruby-TicTacToe-PacoLuna1/blob/master/README.md"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/PacoLuna1/ruby-TicTacToe-PacoLuna1/blob/master/README.md"
  spec.metadata["changelog_uri"] = "https://github.com/PacoLuna1/ruby-TicTacToe-PacoLuna1/blob/master/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.2"
end
