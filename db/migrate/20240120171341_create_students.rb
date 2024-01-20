class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :name
      t.datetime :birthday
      t.integer :sex
      t.string :cpf

      t.timestamps
    end
  end
end
