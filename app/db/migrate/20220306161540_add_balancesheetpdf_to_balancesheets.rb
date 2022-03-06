class AddBalancesheetpdfToBalancesheets < ActiveRecord::Migration[6.1]
  def change
    add_column :balancesheets, :balancesheetpdf, :string
  end
end
