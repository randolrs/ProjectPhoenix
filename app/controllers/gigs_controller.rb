class GigsController < ApplicationController


  # GET /gigs
  # GET /gigs.json

  def index


    @gigs = Gig.find(:all, :conditions => {:user_id => current_user.id})
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gigs }
    end
  end

  def gigindex

    @gigs = Gig.find(:all, :conditions => {:music_type => current_musician.music_type})
    #@gigs = Gigs.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gigs }
    end
  end

  # GET /gigs/1
  # GET /gigs/1.json
  def show

    @gig = Gig.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gig }
    end
  end

  # GET /gigs/new
  # GET /gigs/new.json
  
  def new
    @gig = current_user.Gigs.new

#add user id to gig record

    @gig.user_id = current_user.id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gig }
    end
  end

  # GET /gigs/1/edit
  def edit
    @gig = current_user.Gigs.find(params[:id])
  end

  # POST /gigs
  # POST /gigs.json
  def create
    @gig = current_user.Gigs.new(params[:gig])

    @gig.per_hour = @gig.event_price / @gig.event_duration
    @gig.bidcount = 0

    respond_to do |format|
      if @gig.save
        format.html { redirect_to @gig, notice: 'Gig was successfully created.' }
        format.json { render json: @gig, status: :created, location: @gig }
      else
        format.html { render action: "new" }
        format.json { render json: @gig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gigs/1
  # PUT /gigs/1.json
  def update
    @gig = current_user.Gigs.find(params[:id])

    respond_to do |format|
      if @gig.update_attributes(params[:gig])
        format.html { redirect_to @gig, notice: 'Gig was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gigs/1
  # DELETE /gigs/1.json
  def destroy
    @gig = current_user.Gigs.find(params[:id])
    @gig.destroy

    respond_to do |format|
      format.html { redirect_to gigs_url }
      format.json { head :no_content }
    end
  end
end
