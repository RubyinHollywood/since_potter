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
		  seconds_elapsed = (Time.now - start_timer).floor

		  print humanize_time(seconds_elapsed)

		  print "\b" * humanize_time(seconds_elapsed).to_s.size
		  sleep 1
		end

    outro
	end

	def humanize_time seconds_elapsed
		if seconds_elapsed < 60
	  	"\t#{seconds_elapsed} seconds"
	  elsif seconds_elapsed < 3600
	  	min, sec = seconds_elapsed.divmod 60
	  	"\t#{min} minutes and #{sec} seconds"
	  else 
	  	hour, sec = seconds_elapsed.divmod 3600
			min, sec = sec.divmod 60
			"\t#{hour} hours #{min} minutes and #{sec} seconds"
	  end
	end

  def intro
    puts "Are you ready?? Press a key when you reach your goal."
    puts "Your goal is: #{@goal}"
	end

	def outro
		puts "#{@goal} happened!"
  end

	def print_goals
		puts @antigoal if @antigoal
		puts @goal if @goal
	end
end
