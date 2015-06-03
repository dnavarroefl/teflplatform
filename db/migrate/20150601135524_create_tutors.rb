class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
    	t.string :name
      	t.string :email
    	t.integer :age
     	t.string :comment

      t.timestamps null: false
    end
  end
end
