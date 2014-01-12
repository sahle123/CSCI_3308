# zombie3.rb
#
# Sahle A. Alturaigi
# Oct. 30th, 2013

class Zombie
	attr_accessor :name, :brains, :tweets

	def initialize(attributes = nil)
		super(attributes)
		@name = 'Ash'
		@brains = nil
		@tweets = ["what is", "love"]
	end

end
