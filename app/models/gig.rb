class Gig < ActiveRecord::Base
  attr_accessible :desription

  validates :desription, presence: true 
  validates :desription, :length => { :minimum =>3, 
  	:too_short => "This section requires at least %{count} 
  					characters." }

end
