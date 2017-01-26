class Project < ActiveRecord::Base
	#include HasGravatar
	#attr_accessible :id
	has_many :stories
end
