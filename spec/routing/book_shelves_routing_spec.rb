require "spec_helper"

describe BookShelvesController do
  describe "routing" do

    it "routes to #index" do
      get("/book_shelves").should route_to("book_shelves#index")
    end

    it "routes to #new" do
      get("/book_shelves/new").should route_to("book_shelves#new")
    end

    it "routes to #show" do
      get("/book_shelves/1").should route_to("book_shelves#show", :id => "1")
    end

    it "routes to #edit" do
      get("/book_shelves/1/edit").should route_to("book_shelves#edit", :id => "1")
    end

    it "routes to #create" do
      post("/book_shelves").should route_to("book_shelves#create")
    end

    it "routes to #update" do
      put("/book_shelves/1").should route_to("book_shelves#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/book_shelves/1").should route_to("book_shelves#destroy", :id => "1")
    end

  end
end
