require 'rails_helper'

RSpec.describe "site/news/edit", type: :view do
  before(:each) do
    @site_news = assign(:site_news, Site::News.create!(
      title: "MyString",
      author: "MyString"
    ))
  end

  it "renders the edit site_news form" do
    render

    assert_select "form[action=?][method=?]", site_news_path(@site_news), "post" do

      assert_select "input[name=?]", "site_news[title]"

      assert_select "input[name=?]", "site_news[author]"
    end
  end
end
