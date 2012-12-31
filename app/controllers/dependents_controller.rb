class DependentsController < ApplicationController
  # GET /dependents
  # GET /dependents.json
  def index
    @dependents = Dependent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dependents }
    end
  end

  # GET /dependents/1
  # GET /dependents/1.json
  def show
    @dependent = Dependent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dependent }
    end
  end

  # GET /dependents/new
  # GET /dependents/new.json
  def new
    @dependent = Dependent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dependent }
    end
  end

  # GET /dependents/1/edit
  def edit
    @dependent = Dependent.find(params[:id])
  end

  # POST /dependents
  # POST /dependents.json
  def create
    @dependent = Dependent.new(params[:dependent])

    respond_to do |format|
      if @dependent.save
        format.html { redirect_to @dependent, notice: 'Dependent was successfully created.' }
        format.json { render json: @dependent, status: :created, location: @dependent }
      else
        format.html { render action: "new" }
        format.json { render json: @dependent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dependents/1
  # PUT /dependents/1.json
  def update
    @dependent = Dependent.find(params[:id])

    respond_to do |format|
      if @dependent.update_attributes(params[:dependent])
        format.html { redirect_to @dependent, notice: 'Dependent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dependent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dependents/1
  # DELETE /dependents/1.json
  def destroy
    @dependent = Dependent.find(params[:id])
    @dependent.destroy

    respond_to do |format|
      format.html { redirect_to dependents_url }
      format.json { head :no_content }
    end
  end
end
