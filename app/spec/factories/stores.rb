# == Schema Information
#
# Table name: stores
#
#  id                     :bigint           not null, primary key
#  address                :string
#  coatofarms             :string
#  country                :string
#  decreecreatingthestore :string
#  email                  :string
#  foundationdate         :string
#  meeting                :string
#  name                   :string
#  nation                 :string
#  neighborhood           :string
#  note                   :string
#  numberstore            :string
#  phone                  :string
#  potency                :string
#  rite                   :string
#  state                  :string
#  venerable              :string
#  zipcode                :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
FactoryBot.define do
  factory :store do
    name { "MyString" }
    coatofarms { "MyString" }
    address { "MyString" }
    neighborhood { "MyString" }
    country { "MyString" }
    state { "MyString" }
    nation { "MyString" }
    zipcode { "MyString" }
    decreecreatingthestore { "MyString" }
    foundationdate { "MyString" }
    phone { "MyString" }
    rite { "MyString" }
    meeting { "MyString" }
    potency { "MyString" }
    numberstore { "MyString" }
    venerable { "MyString" }
    email { "MyString" }
    note { "MyString" }
  end
end
