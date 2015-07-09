require "observer"



class User
	include Observable

    #Hey!!!! i put a comment here because I can


	def initialize(name)

		@name = name

	end


	def run
		lastStatus = nil
		
		loop do 
			status = Status.fetch(@name)
			print "Examining #{@name}"
			if(status != lastStatus)
				changed
				lastStatus = status
				notify_observers(Time.now, status)
			end
			sleep 1

			
		end

	end



end



class Status

	def Status.fetch(name)
		return true
	end

end

class Watcher
	def initialize(user)

		user.add_observer(self)

	end
end

class WatchUnsafe < Watcher

	def update(time, status)
		if(status)
			print "safe user @#{time}"
		end
	end

end

user = User.new("Steve")

WatchUnsafe.new(user)
user.run