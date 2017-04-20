Gem::Specification.new do |spec|
  spec.name          = "lita-quran"
  spec.version       = "0.1.0"
  spec.authors       = ["Tito Pandu Brahmanto"]
  spec.email         = ["tito@pandubrahmanto.com"]
  spec.description   = "Lita Handler for Al-Qur'an"
  spec.summary       = "This is handler for lita bot that can answer with Al-Qur'an verse and ayat"
  spec.homepage      = "https://github.com/titopandub/lita-quran"
  spec.license       = ""
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.7"
  spec.add_runtime_dependency "pg", ">= 0.20"
  spec.add_runtime_dependency "sequel", ">= 4.45"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end
