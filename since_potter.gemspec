lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'since_potter/version'

Gem::Specification.new do |s|
  s.name        = 'since_potter'
  s.summary     = 'A countdown and stopwatch'
  s.description = 'A gem which can act as a countdown and stopwatch'
  s.version     = SincePotter::VERSION
  s.licenses    = ['MIT', 'WTFPL']
  s.author      = 'Ruby in Hollywood'
  s.files       = ['bin/since_potter', 'lib/since_potter/version.rb']
	s.executables = ['since_potter']
end

