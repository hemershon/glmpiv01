# == Schema Information
#
# Table name: balancesheets
#
#  id            :bigint           not null, primary key
#  balancheetpdf :string
#  date          :date
#  number        :string
#  resume        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require 'rails_helper'

RSpec.describe Balancesheet, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
