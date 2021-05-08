class CreateDiaryCards < ActiveRecord::Migration[6.1]
  def change
    create_table :diary_cards do |t|
      t.references :diary, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
