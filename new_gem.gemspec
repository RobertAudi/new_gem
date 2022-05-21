# frozen_string_literal: true

require_relative "lib/new_gem/version"

Gem::Specification.new do |spec|
  spec.name = "new_gem"
  spec.version = NewGem::VERSION
  spec.authors = ["Robert Audi"]
  spec.email = ["robert@robertaudi.com"]

  spec.summary = "Write a short summary, because RubyGems requires one."
  spec.description = "Write a longer description or delete this line."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.homepage = "https://github.com/RobertAudi/new_gem"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.metadata["homepage_uri"]
  spec.metadata["changelog_uri"] = "#{spec.metadata["source_code_uri"]}/blob/master/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|spec)/|\.git|lib/private)})
    end
  end

  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
end
