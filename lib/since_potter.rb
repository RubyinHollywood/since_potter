require 'since_potter/version'

class SincePotter
	def initialize goal:, antigoal:
    @goal = goal
    @antigoal = antigoal
	end

	def start
		start_timer = Time.now
    puts @antigoal
    puts @goal
    #For some reason, only the antigoal is printing.

		loop do
		  surpassed = "  #{(Time.now - start_timer).to_i}"
		  print surpassed
		  print "\b" * surpassed.to_s.size
		  sleep 1
		end
	end
end
