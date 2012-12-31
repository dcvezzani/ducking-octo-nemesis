class SimpleValuesController < ApplicationController
  # GET /simple_values
  # GET /simple_values.json
  def index
    @simple_values = SimpleValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @simple_values }
    end
  end

  # GET /simple_values/1
  # GET /simple_values/1.json
  def show
    @simple_value = SimpleValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @simple_value }
    end
  end

  # GET /simple_values/new
  # GET /simple_values/new.json
  def new
    @simple_value = SimpleValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @simple_value }
    end
  end

  # GET /simple_values/1/edit
  def edit
    @simple_value = SimpleValue.find(params[:id])
  end

  # POST /simple_values
  # POST /simple_values.json
  def create
    @simple_value = SimpleValue.new(params[:simple_value])

    respond_to do |format|
      if @simple_value.save
        format.html { redirect_to @simple_value, notice: 'Simple value was successfully created.' }
        format.json { render json: @simple_value, status: :created, location: @simple_value }
      else
        format.html { render action: "new" }
        format.json { render json: @simple_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /simple_values/1
  # PUT /simple_values/1.json
  def update
    @simple_value = SimpleValue.find(params[:id])

    respond_to do |format|
      if @simple_value.update_attributes(params[:simple_value])
        format.html { redirect_to @simple_value, notice: 'Simple value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @simple_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_values/1
  # DELETE /simple_values/1.json
  def destroy
    @simple_value = SimpleValue.find(params[:id])
    @simple_value.destroy

    respond_to do |format|
      format.html { redirect_to simple_values_url }
      format.json { head :no_content }
    end
  end
end
