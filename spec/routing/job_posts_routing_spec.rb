require "spec_helper"

describe JobPostsController do
  describe "routing" do

    it "routes to #index" do
      get("/job_posts").should route_to("job_posts#index")
    end

    it "routes to #new" do
      get("/job_posts/new").should route_to("job_posts#new")
    end

    it "routes to #show" do
      get("/job_posts/1").should route_to("job_posts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job_posts/1/edit").should route_to("job_posts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job_posts").should route_to("job_posts#create")
    end

    it "routes to #update" do
      put("/job_posts/1").should route_to("job_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job_posts/1").should route_to("job_posts#destroy", :id => "1")
    end

  end
end
