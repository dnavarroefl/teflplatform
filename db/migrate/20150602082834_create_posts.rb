class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title
    	t.string :name
    	t.string :text

      t.timestamps null: false
    end
  end
end
