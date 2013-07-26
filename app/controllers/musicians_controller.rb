class MusiciansController < ApplicationController
  def show
  		@Musician = Musician.find(params[:id])
  end

  def bid

  end
end
