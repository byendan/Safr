class Safr
#@About ByendanB, Bagelx, infAmelia


def initialize
	@userflags = []
	self.populate
end

def poll

	@userflags.each do |u|
		if(u)
			puts "Found a true."
		else
			puts "Did not find a true."
		end
	end

end

def populate

	@userflags.push(false)
	@userflags.push(false)
	@userflags.push(false)
	@userflags.push(false)
	@userflags.push(true)


end


end

s = Safr.new
s.poll
