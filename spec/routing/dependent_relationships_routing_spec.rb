require "spec_helper"

describe DependentRelationshipsController do
  describe "routing" do

    it "routes to #index" do
      get("/dependent_relationships").should route_to("dependent_relationships#index")
    end

    it "routes to #new" do
      get("/dependent_relationships/new").should route_to("dependent_relationships#new")
    end

    it "routes to #show" do
      get("/dependent_relationships/1").should route_to("dependent_relationships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dependent_relationships/1/edit").should route_to("dependent_relationships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dependent_relationships").should route_to("dependent_relationships#create")
    end

    it "routes to #update" do
      put("/dependent_relationships/1").should route_to("dependent_relationships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dependent_relationships/1").should route_to("dependent_relationships#destroy", :id => "1")
    end

  end
end
