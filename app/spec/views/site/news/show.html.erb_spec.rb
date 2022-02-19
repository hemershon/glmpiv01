require 'rails_helper'

RSpec.describe "site/news/show", type: :view do
  before(:each) do
    @site_news = assign(:site_news, Site::News.create!(
      title: "Title",
      author: "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
  end
end
