class CreateBalancesheets < ActiveRecord::Migration[6.1]
  def change
    create_table :balancesheets do |t|
      t.string :number
      t.date :date
      t.string :resume
      t.string :balancheetpdf

      t.timestamps
    end
  end
end
