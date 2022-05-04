class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.text :body, null: false

      t.timestamps
    end
    add_index :questions, %i{title body}, unique: true
  end
end
