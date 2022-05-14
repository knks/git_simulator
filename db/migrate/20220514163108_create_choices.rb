class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.string :content, null: false
      t.boolean :is_answer, null: false, default: false
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
