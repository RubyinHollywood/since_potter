lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'since_potter/version'

Gem::Specification.new do |s|
  s.name        = 'since_potter'
  s.summary     = 'A countdown and stopwatch'
  s.description = 'A gem which can act as a countdown and stopwatch'
  s.version     = SincePotter::VERSION
  s.email       = 'rubyinhollywood@gmail.com'
  s.homepage    = 'https://github.com/RubyinHollywood/since_potter#readme'
  s.licenses    = ['MIT', 'WTFPL']
  s.author      = 'Ruby in Hollywood'
  s.files       = ['bin/since_potter', 'lib/since_potter/version.rb', 'lib/since_potter.rb']
	s.executables = ['since_potter']
  s.add_runtime_dependency 'slop', '~> 4.3', '>= 4.3.0'
  s.add_development_dependency 'minitest', '~> 5.8', '>= 5.8.4'
  s.add_development_dependency 'rake', '~> 11.1', '>= 11.1.2'
end
