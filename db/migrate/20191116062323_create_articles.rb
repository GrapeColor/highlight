class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.integer :user_id, null: false
      t.string  :title,   null: false
      t.text    :body,    null: false

      t.timestamps
    end
    add_index :articles, :title
  end
end
