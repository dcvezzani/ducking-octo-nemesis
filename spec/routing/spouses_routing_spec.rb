require "spec_helper"

describe SpousesController do
  describe "routing" do

    it "routes to #index" do
      get("/spouses").should route_to("spouses#index")
    end

    it "routes to #new" do
      get("/spouses/new").should route_to("spouses#new")
    end

    it "routes to #show" do
      get("/spouses/1").should route_to("spouses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spouses/1/edit").should route_to("spouses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spouses").should route_to("spouses#create")
    end

    it "routes to #update" do
      put("/spouses/1").should route_to("spouses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spouses/1").should route_to("spouses#destroy", :id => "1")
    end

  end
end
