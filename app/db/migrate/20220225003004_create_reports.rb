class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.string :number
      t.date :date
      t.string :resume
      t.string :reportpdf

      t.timestamps
    end
  end
end
