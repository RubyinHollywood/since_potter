require 'since_potter/version'
class SincePotter
	def initialize
	end

	def start
		start_timer = Time.now

		loop do
		  surpassed = "  #{(Time.now - start_timer).to_i}"
		  print surpassed
		  print "\b" * surpassed.to_s.size
		  sleep 1
		end
	end
end
