class CreateBookTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :book_topics do |t|
      t.references :book, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
