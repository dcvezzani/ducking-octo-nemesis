class ResidentialAddressesController < ApplicationController
  # GET /residential_addresses
  # GET /residential_addresses.json
  def index
    @residential_addresses = ResidentialAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @residential_addresses }
    end
  end

  # GET /residential_addresses/1
  # GET /residential_addresses/1.json
  def show
    @residential_address = ResidentialAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @residential_address }
    end
  end

  # GET /residential_addresses/new
  # GET /residential_addresses/new.json
  def new
    @residential_address = ResidentialAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @residential_address }
    end
  end

  # GET /residential_addresses/1/edit
  def edit
    @residential_address = ResidentialAddress.find(params[:id])
  end

  # POST /residential_addresses
  # POST /residential_addresses.json
  def create
    @residential_address = ResidentialAddress.new(params[:residential_address])

    respond_to do |format|
      if @residential_address.save
        format.html { redirect_to @residential_address, notice: 'Residential address was successfully created.' }
        format.json { render json: @residential_address, status: :created, location: @residential_address }
      else
        format.html { render action: "new" }
        format.json { render json: @residential_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /residential_addresses/1
  # PUT /residential_addresses/1.json
  def update
    @residential_address = ResidentialAddress.find(params[:id])

    respond_to do |format|
      if @residential_address.update_attributes(params[:residential_address])
        format.html { redirect_to @residential_address, notice: 'Residential address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @residential_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residential_addresses/1
  # DELETE /residential_addresses/1.json
  def destroy
    @residential_address = ResidentialAddress.find(params[:id])
    @residential_address.destroy

    respond_to do |format|
      format.html { redirect_to residential_addresses_url }
      format.json { head :no_content }
    end
  end
end
