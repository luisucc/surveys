class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :type
      t.string :value
      t.belongs_to :survey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
