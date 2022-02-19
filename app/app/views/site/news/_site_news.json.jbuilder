json.extract! site_news, :id, :title, :author, :created_at, :updated_at
json.url site_news_url(site_news, format: :json)
