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
FactoryBot.define do
  factory :balancesheet do
    number { "MyString" }
    date { "2022-02-10" }
    resume { "MyString" }
    balancheetpdf { "Arquivo" }
  end
end
