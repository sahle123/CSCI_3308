# zombie1.rb
# implementaion file for this lab
#
# Sahle A. Alturaigi
# Oct. 30th, 2013

# By convention over configuration, all classes are capitalized.
class Zombie
	attr_accessor :name, :brains

	def initialize
		@name = 'Ash'
		@brains = 0
	end

	def hungry?
		true
	end
	
end