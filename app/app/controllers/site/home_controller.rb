class Site::HomeController < ApplicationController
  def index
    @site_news = Site::News.all
  end
end
