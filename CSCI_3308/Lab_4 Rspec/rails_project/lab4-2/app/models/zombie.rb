class Zombie < ActiveRecord::Base

	attr_accessor :name, :tweets
	attr_accessible :name, :tweets
	has_many :weapons
	validates :name, presence: true

	def initialize(attributes = nil)
		super(attributes)
		weapons << Weapon.new
		weapons << Weapon.new
	end
	
end
