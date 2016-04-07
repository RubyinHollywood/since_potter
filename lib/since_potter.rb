require 'since_potter/version'
require 'io/console'

class SincePotter
	def initialize goal: nil, antigoal: nil
    @goal = goal
    @antigoal = antigoal
	end

	def start
		print_goals
		start_timer = Time.now
    #For some reason, only the antigoal is printing.

		key_pressed = false

		Thread.new do
			STDIN.getch
			key_pressed = true
		end

		until key_pressed do
		  surpassed = "  #{(Time.now - start_timer).to_i}"
		  print surpassed
		  print "\b" * surpassed.to_s.size
		  sleep 1
		end

		print_goals
	end

	def print_goals
		puts @antigoal if @antigoal
		puts @goal if @goal
	end
end
