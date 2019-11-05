lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'discord_bot/version'

Gem::Specification.new do |spec|
  spec.name = 'discord_bot'
  spec.version = DiscordBot::VERSION
  spec.authors = ['Anton Bogdanov']
  spec.email = ['kortirso@gmail.com']

  spec.summary = 'DiscordBot'
  spec.description = 'Ruby wrapper for discord bot api'
  spec.homepage = 'https://github.com/kortirso/discord_bot'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.5.1'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.76'
  spec.add_dependency 'httparty', '~> 0.17'
end
