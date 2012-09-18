class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :type_id
      t.string :title
      t.text :small_content
      t.text :full_content
      t.text :article_type
      t.integer :discipline_id

      t.timestamps
    end
  end
end
