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
class Balancesheet < ApplicationRecord
  mount_uploader :balancheetpdf, BalancheetpdfUploader
end
