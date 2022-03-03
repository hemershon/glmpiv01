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
class Report < ApplicationRecord
    has_one_attached :featured_reportpdf
    #mount_uploader :reportpdf, ReportpdfUploader
end
