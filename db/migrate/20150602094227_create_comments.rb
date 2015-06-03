class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :title
    	t.string :name
    	t.string :text

      t.timestamps null: false
    end
  end
end
