require "spec_helper"

describe SimpleValuesController do
  describe "routing" do

    it "routes to #index" do
      get("/simple_values").should route_to("simple_values#index")
    end

    it "routes to #new" do
      get("/simple_values/new").should route_to("simple_values#new")
    end

    it "routes to #show" do
      get("/simple_values/1").should route_to("simple_values#show", :id => "1")
    end

    it "routes to #edit" do
      get("/simple_values/1/edit").should route_to("simple_values#edit", :id => "1")
    end

    it "routes to #create" do
      post("/simple_values").should route_to("simple_values#create")
    end

    it "routes to #update" do
      put("/simple_values/1").should route_to("simple_values#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/simple_values/1").should route_to("simple_values#destroy", :id => "1")
    end

  end
end
