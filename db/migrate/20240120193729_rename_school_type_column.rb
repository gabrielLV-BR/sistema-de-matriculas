class RenameSchoolTypeColumn < ActiveRecord::Migration[7.1]
  def change
    reversible do |direction|
      change_table :schools do |t|

        direction.up do
          t.rename :type, :kind
        end

        direction.down do
          t.rename :kind, :type
        end

      end
    end
  end
end
