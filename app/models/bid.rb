class Bid < ActiveRecord::Base
  attr_accessible :quote

  belongs_to :musician
  belongs_to :gig

  # validates :musician_id, presence:true
  
end
