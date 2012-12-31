class DependentRelationshipsController < ApplicationController
  # GET /dependent_relationships
  # GET /dependent_relationships.json
  def index
    @dependent_relationships = DependentRelationship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dependent_relationships }
    end
  end

  # GET /dependent_relationships/1
  # GET /dependent_relationships/1.json
  def show
    @dependent_relationship = DependentRelationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dependent_relationship }
    end
  end

  # GET /dependent_relationships/new
  # GET /dependent_relationships/new.json
  def new
    @dependent_relationship = DependentRelationship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dependent_relationship }
    end
  end

  # GET /dependent_relationships/1/edit
  def edit
    @dependent_relationship = DependentRelationship.find(params[:id])
  end

  # POST /dependent_relationships
  # POST /dependent_relationships.json
  def create
    @dependent_relationship = DependentRelationship.new(params[:dependent_relationship])

    respond_to do |format|
      if @dependent_relationship.save
        format.html { redirect_to @dependent_relationship, notice: 'Dependent relationship was successfully created.' }
        format.json { render json: @dependent_relationship, status: :created, location: @dependent_relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @dependent_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dependent_relationships/1
  # PUT /dependent_relationships/1.json
  def update
    @dependent_relationship = DependentRelationship.find(params[:id])

    respond_to do |format|
      if @dependent_relationship.update_attributes(params[:dependent_relationship])
        format.html { redirect_to @dependent_relationship, notice: 'Dependent relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dependent_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dependent_relationships/1
  # DELETE /dependent_relationships/1.json
  def destroy
    @dependent_relationship = DependentRelationship.find(params[:id])
    @dependent_relationship.destroy

    respond_to do |format|
      format.html { redirect_to dependent_relationships_url }
      format.json { head :no_content }
    end
  end
end
