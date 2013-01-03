require "spec_helper"

describe AssignedProjectsController do
  describe "routing" do

    it "routes to #index" do
      get("/assigned_projects").should route_to("assigned_projects#index")
    end

    it "routes to #new" do
      get("/assigned_projects/new").should route_to("assigned_projects#new")
    end

    it "routes to #show" do
      get("/assigned_projects/1").should route_to("assigned_projects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/assigned_projects/1/edit").should route_to("assigned_projects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/assigned_projects").should route_to("assigned_projects#create")
    end

    it "routes to #update" do
      put("/assigned_projects/1").should route_to("assigned_projects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/assigned_projects/1").should route_to("assigned_projects#destroy", :id => "1")
    end

  end
end
