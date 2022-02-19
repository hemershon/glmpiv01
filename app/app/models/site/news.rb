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
class Site::News < ApplicationRecord
  has_one_attached :featured_image
  has_rich_text :content  
end
