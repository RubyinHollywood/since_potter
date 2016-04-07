require 'since_potter/version'
require 'io/console'

class SincePotter
	def initialize goal = "World Domination"
    @goal = goal
	end

	def start
    intro
		start_timer = Time.now
    #For some reason, only the antigoal is printing.

		key_pressed = false

		Thread.new do
			STDIN.getch
			key_pressed = true
		end

		until key_pressed do
		  @seconds_elapsed = "#{(Time.now - start_timer).to_i}"
      print "\t"
			print @seconds_elapsed
		  print "\b" * @seconds_elapsed.to_s.size.next
		  sleep 1
		end

    outro
	end

  def intro
    puts "Are you ready?? Press a key when you reach your goal."
    puts "Your goal is: #{@goal}"
		puts "See how long you can last until #{@goal} is met."
	end

	def outro
		puts "#{@goal} happened!"
		puts "You lasted #{@seconds_elapsed} seconds."
  end

	def print_goals
		puts @goal if @goal
	end
end
