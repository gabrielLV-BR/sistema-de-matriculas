class CreateSchools < ActiveRecord::Migration[7.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.integer :type
      t.integer :regimen

      t.timestamps
    end
  end
end
