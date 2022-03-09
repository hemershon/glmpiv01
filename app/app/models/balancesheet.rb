# == Schema Information
#
# Table name: balancesheets
#
#  id              :bigint           not null, primary key
#  balancesheetpdf :string
#  balancheetpdf   :string
#  date            :date
#  number          :string
#  resume          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Balancesheet < ApplicationRecord
  has_one_attached :featured_balancesheetpdf
  #mount_uploader :balancesheetpdf, BalancesheetpdfUploader
end
