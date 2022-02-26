class Site::HomeController < SiteController
  def index
    @site_news = Site::News.all
  end
end
