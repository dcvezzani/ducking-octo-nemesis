class SpousesController < ApplicationController
  # GET /spouses
  # GET /spouses.json
  def index
    @spouses = Spouse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spouses }
    end
  end

  # GET /spouses/1
  # GET /spouses/1.json
  def show
    @spouse = Spouse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spouse }
    end
  end

  # GET /spouses/new
  # GET /spouses/new.json
  def new
    @spouse = Spouse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spouse }
    end
  end

  # GET /spouses/1/edit
  def edit
    @spouse = Spouse.find(params[:id])
  end

  # POST /spouses
  # POST /spouses.json
  def create
    @spouse = Spouse.new(params[:spouse])

    respond_to do |format|
      if @spouse.save
        format.html { redirect_to @spouse, notice: 'Spouse was successfully created.' }
        format.json { render json: @spouse, status: :created, location: @spouse }
      else
        format.html { render action: "new" }
        format.json { render json: @spouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spouses/1
  # PUT /spouses/1.json
  def update
    @spouse = Spouse.find(params[:id])

    respond_to do |format|
      if @spouse.update_attributes(params[:spouse])
        format.html { redirect_to @spouse, notice: 'Spouse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spouses/1
  # DELETE /spouses/1.json
  def destroy
    @spouse = Spouse.find(params[:id])
    @spouse.destroy

    respond_to do |format|
      format.html { redirect_to spouses_url }
      format.json { head :no_content }
    end
  end
end
