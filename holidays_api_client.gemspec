lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "holidays_api_client/version"

Gem::Specification.new do |spec|
  spec.name          = "holidays_api_client"
  spec.version       = HolidaysApiClient::VERSION
  spec.authors       = ["Evgeniy Denisov"]
  spec.email         = ["lifeemulation@gmail.com"]

  spec.summary       = 'Proprietary client for metroengines holidays API'
  spec.homepage      = "https://github.com/silentshade/holidays_api_client"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/silentshade/holidays_api_client"
  spec.metadata["changelog_uri"] = "https://github.com/silentshade/holidays_api_client/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.18"
  spec.add_dependency "i18n", "~> 1.8"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 3.8.0"
end
