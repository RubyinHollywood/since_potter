require 'since_potter/version'
class SincePotter
	def initialize
		start = Time.now

		loop do
		  surpassed = "  #{(Time.now - start).to_i}"
		  print surpassed
		  print "\b" * surpassed.to_s.size
		  sleep 1
		end
	end
end
