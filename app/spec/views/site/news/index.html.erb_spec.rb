require 'rails_helper'

RSpec.describe "site/news/index", type: :view do
  before(:each) do
    assign(:site_news, [
      Site::News.create!(
        title: "Title",
        author: "Author"
      ),
      Site::News.create!(
        title: "Title",
        author: "Author"
      )
    ])
  end

  it "renders a list of site/news" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
  end
end
