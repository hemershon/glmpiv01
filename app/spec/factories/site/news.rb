# == Schema Information
#
# Table name: site_news
#
#  id         :bigint           not null, primary key
#  author     :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :site_news, class: 'Site::News' do
    title { "MyString" }
    author { "MyString" }
  end
end
