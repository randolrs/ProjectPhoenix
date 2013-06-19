class MusicianController < ApplicationController

  def registration
  		new_registration_path(@musician)
  end
  
end