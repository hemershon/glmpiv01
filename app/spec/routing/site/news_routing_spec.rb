require "rails_helper"

RSpec.describe Site::NewsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/site/news").to route_to("site/news#index")
    end

    it "routes to #new" do
      expect(get: "/site/news/new").to route_to("site/news#new")
    end

    it "routes to #show" do
      expect(get: "/site/news/1").to route_to("site/news#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/site/news/1/edit").to route_to("site/news#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/site/news").to route_to("site/news#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/site/news/1").to route_to("site/news#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/site/news/1").to route_to("site/news#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/site/news/1").to route_to("site/news#destroy", id: "1")
    end
  end
end
