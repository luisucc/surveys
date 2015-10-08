class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :value
      t.belongs_to :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
