class CreateDiaryPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :diary_plans do |t|
      t.references :diaries, null: false, foreign_key: true
      t.references :plans, null: false, foreign_key: true

      t.timestamps
    end
  end
end
