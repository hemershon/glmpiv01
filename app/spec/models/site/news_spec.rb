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
require 'rails_helper'

RSpec.describe Site::News, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
