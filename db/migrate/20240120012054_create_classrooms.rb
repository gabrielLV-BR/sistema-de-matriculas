class CreateClassrooms < ActiveRecord::Migration[7.1]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.integer :year
      t.integer :capacity
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
