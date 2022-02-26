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
class Store < ApplicationRecord
    mount_uploader :coatofarms, CoatofarmsUploader
end
