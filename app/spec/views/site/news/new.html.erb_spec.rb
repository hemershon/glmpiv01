require 'rails_helper'

RSpec.describe "site/news/new", type: :view do
  before(:each) do
    assign(:site_news, Site::News.new(
      title: "MyString",
      author: "MyString"
    ))
  end

  it "renders new site_news form" do
    render

    assert_select "form[action=?][method=?]", site_news_index_path, "post" do

      assert_select "input[name=?]", "site_news[title]"

      assert_select "input[name=?]", "site_news[author]"
    end
  end
end
