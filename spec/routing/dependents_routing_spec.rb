require "spec_helper"

describe DependentsController do
  describe "routing" do

    it "routes to #index" do
      get("/dependents").should route_to("dependents#index")
    end

    it "routes to #new" do
      get("/dependents/new").should route_to("dependents#new")
    end

    it "routes to #show" do
      get("/dependents/1").should route_to("dependents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dependents/1/edit").should route_to("dependents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dependents").should route_to("dependents#create")
    end

    it "routes to #update" do
      put("/dependents/1").should route_to("dependents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dependents/1").should route_to("dependents#destroy", :id => "1")
    end

  end
end
