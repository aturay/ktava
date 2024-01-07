class CreateAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table :authors do |t|
      t.string :full_name
      t.date :birth_day
      t.date :death_day

      t.timestamps
    end
  end
end
