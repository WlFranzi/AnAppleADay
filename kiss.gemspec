Gem::Specification.new do |spec|
  spec.name          = "kiss"
  spec.authors       = "Franzi WL"
  spec.version       = '1.0.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "gosu", "~> 0.10.1"
end