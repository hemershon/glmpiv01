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
FactoryBot.define do
  factory :report do
    number { "MyString" }
    date { "2022-02-25" }
    resume { "MyString" }
    reportpdf { "MyString" }
  end
end
