class Gig < ActiveRecord::Base
  attr_accessible :desription, :image, :image_remote_url, :music_type, :event_type, :event_date, 
  :event_zip, :event_duration, :event_price, :user_id

  #validates :desription, presence: true 

  validates :desription, :length => { :maximum =>300, 
  	:too_long => "This section has a maximum length of %{count} 
  					characters." }

  validates_format_of :event_zip, :with => %r{\d{5}(-\d{4})?},
                    :message => "Please enter valid zipcode"


  	belongs_to :user
  		has_attached_file :image, styles: { medium: "320x240>"}


  	validates :user_id, presence: true

    has_many :bids, :dependent => :destroy

    def image_remote_url=(url_value)
        self.image = URI.parse(url_value) unless url_value.blank? 
        super
    end

    def edit
      @gig.edit
    end

end
