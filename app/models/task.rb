class Task < ActiveRecord::Base
	#include HasGravatar
  	#attr_accessible :id
  	belongs_to :story

=begin
  	def gravatar
    	#return the MD5 hash of the email
    	"http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
  	end
=end
end
