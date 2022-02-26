class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :coatofarms
      t.string :address
      t.string :neighborhood
      t.string :country
      t.string :state
      t.string :nation
      t.string :zipcode
      t.string :decreecreatingthestore
      t.string :foundationdate
      t.string :phone
      t.string :rite
      t.string :meeting
      t.string :potency
      t.string :numberstore
      t.string :venerable
      t.string :email
      t.string :note

      t.timestamps
    end
  end
end
