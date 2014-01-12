class Weapon < ActiveRecord::Base

	attr_accessor :name
	attr_accessible :name
	belongs_to :zombie

end
