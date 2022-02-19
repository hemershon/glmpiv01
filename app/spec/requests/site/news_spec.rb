require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/site/news", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Site::News. As you add validations to Site::News, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Site::News.create! valid_attributes
      get site_news_index_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      news = Site::News.create! valid_attributes
      get site_news_url(news)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_site_news_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      news = Site::News.create! valid_attributes
      get edit_site_news_url(news)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Site::News" do
        expect {
          post site_news_index_url, params: { site_news: valid_attributes }
        }.to change(Site::News, :count).by(1)
      end

      it "redirects to the created site_news" do
        post site_news_index_url, params: { site_news: valid_attributes }
        expect(response).to redirect_to(site_news_url(Site::News.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Site::News" do
        expect {
          post site_news_index_url, params: { site_news: invalid_attributes }
        }.to change(Site::News, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post site_news_index_url, params: { site_news: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested site_news" do
        news = Site::News.create! valid_attributes
        patch site_news_url(news), params: { site_news: new_attributes }
        news.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the site_news" do
        news = Site::News.create! valid_attributes
        patch site_news_url(news), params: { site_news: new_attributes }
        news.reload
        expect(response).to redirect_to(site_news_url(news))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        news = Site::News.create! valid_attributes
        patch site_news_url(news), params: { site_news: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested site_news" do
      news = Site::News.create! valid_attributes
      expect {
        delete site_news_url(news)
      }.to change(Site::News, :count).by(-1)
    end

    it "redirects to the site_news list" do
      news = Site::News.create! valid_attributes
      delete site_news_url(news)
      expect(response).to redirect_to(site_news_index_url)
    end
  end
end
