class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
    	t.string :title
    	t.string :date
    	t.string :name
    	t.string :text

      t.timestamps null: false
    end
  end
end
