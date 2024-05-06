class CreateIdCards < ActiveRecord::Migration[5.2]
  def change
    create_table :id_cards do |t|
      t.string :id_no
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
