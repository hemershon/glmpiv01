class Site::NewsController < ApplicationController
  before_action :set_site_news, only: %i[ show edit update destroy ]

  # GET /site/news or /site/news.json
  def index
    @site_news = Site::News.all
  end

  # GET /site/news/1 or /site/news/1.json
  def show
  end

  # GET /site/news/new
  def new
    @site_news = Site::News.new
  end

  # GET /site/news/1/edit
  def edit
  end

  # POST /site/news or /site/news.json
  def create
    @site_news = Site::News.new(site_news_params)

    respond_to do |format|
      if @site_news.save
        format.html { redirect_to site_news_url(@site_news), notice: "News was successfully created." }
        format.json { render :show, status: :created, location: @site_news }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @site_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /site/news/1 or /site/news/1.json
  def update
    respond_to do |format|
      if @site_news.update(site_news_params)
        format.html { redirect_to site_news_url(@site_news), notice: "News was successfully updated." }
        format.json { render :show, status: :ok, location: @site_news }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @site_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site/news/1 or /site/news/1.json
  def destroy
    @site_news.destroy

    respond_to do |format|
      format.html { redirect_to site_news_index_url, notice: "News was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_news
      @site_news = Site::News.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def site_news_params
      params.require(:site_news).permit(:title, :author, :featured_image, :content)
    end
end
