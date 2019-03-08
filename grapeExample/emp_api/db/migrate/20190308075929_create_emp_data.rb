class CreateEmpData < ActiveRecord::Migration[5.1]
  def change
    create_table :emp_data do |t|
      t.string :name
      t.string :address
      t.integer :age
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
