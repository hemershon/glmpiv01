# == Schema Information
#
# Table name: reports
#
#  id         :bigint           not null, primary key
#  date       :date
#  number     :string
#  reportpdf  :string
#  resume     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Report, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
