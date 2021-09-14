class CreateTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :topics do |t|
      t.string :topic_name1
      t.string :topic_name2
      t.string :topic_name3
      t.string :topic_name4
      t.string :topic_name5
      t.string :topic_name6
      t.string :topic_name7
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
