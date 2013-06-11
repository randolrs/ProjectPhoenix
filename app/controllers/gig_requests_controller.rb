class GigRequestsController < ApplicationController
  # GET /gig_requests
  # GET /gig_requests.json
  def index
    @gig_requests = GigRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gig_requests }
    end
  end

  # GET /gig_requests/1
  # GET /gig_requests/1.json
  def show
    @gig_request = GigRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gig_request }
    end
  end

  # GET /gig_requests/new
  # GET /gig_requests/new.json
  def new
    @gig_request = GigRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gig_request }
    end
  end

  # GET /gig_requests/1/edit
  def edit
    @gig_request = GigRequest.find(params[:id])
  end

  # POST /gig_requests
  # POST /gig_requests.json
  def create
    @gig_request = GigRequest.new(params[:gig_request])

    respond_to do |format|
      if @gig_request.save
        format.html { redirect_to @gig_request, notice: 'Gig request was successfully created.' }
        format.json { render json: @gig_request, status: :created, location: @gig_request }
      else
        format.html { render action: "new" }
        format.json { render json: @gig_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gig_requests/1
  # PUT /gig_requests/1.json
  def update
    @gig_request = GigRequest.find(params[:id])

    respond_to do |format|
      if @gig_request.update_attributes(params[:gig_request])
        format.html { redirect_to @gig_request, notice: 'Gig request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gig_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gig_requests/1
  # DELETE /gig_requests/1.json
  def destroy
    @gig_request = GigRequest.find(params[:id])
    @gig_request.destroy

    respond_to do |format|
      format.html { redirect_to gig_requests_url }
      format.json { head :no_content }
    end
  end
end
