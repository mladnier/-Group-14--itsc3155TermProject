class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.text :message
      t.integer :match_id
      t.references :match, foreign_key: true
      t.timestamps
    end
  end
end
