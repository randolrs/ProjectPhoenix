class BidsController < ApplicationController
  # GET /bids
  # GET /bids.json
  def index
    
    @bids = Bid.find(params[:id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bids }
    end
  end

# GET /bids
# GET /bids.json
def bidindex
    
    @bids = Bid.find(:all, :conditions => {:musician_id => current_musician.id})

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bids }
    end
  end

  # GET /bids/1
  # GET /bids/1.json
  def show
    @bid = Bid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bid }
    end
  end

  # GET /bids/new
  # GET /bids/new.json
  def new
    @bid = Bid.new

    @bid.gig_id = (params[:gig])

    @gig = Gig.find(params[:gig])

    @bid.gig_id = @gig.id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bid }
    end
  end

  # GET /bids/1/edit
  def edit
    @bid = Bid.find(params[:id])
  end

  # POST /bids
  # POST /bids.json
  def create

    @bid = Bid.new(params[:bid])

    @bid.musician_id = current_musician.id

    
    @gig = Gig.find(@bid.gig_id)

    @gig.bidcount = Bid.where(gig_id: @bid.gig_id).count


    respond_to do |format|
      if @bid.save

        format.html { redirect_to @bid, notice: 'Bid was successfully created.' }
        format.json { render json: @bid, status: :created, location: @bid }

      else
        format.html { render action: "new" }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end

    

  end

  # PUT /bids/1
  # PUT /bids/1.json
  def update
    @bid = Bid.find(params[:id])

    respond_to do |format|
      if @bid.update_attributes(params[:bid])
        format.html { redirect_to @bid, notice: 'Bid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bids/1
  # DELETE /bids/1.json
  def destroy
    @bid = Bid.find(params[:id])
    @bid.destroy

    respond_to do |format|
      format.html { redirect_to bids_url }
      format.json { head :no_content }
    end
  end
end
