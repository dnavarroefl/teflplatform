class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :name
      t.string :email
    	t.integer :age
    	t.string :level
    	t.integer :score
    	t.integer :progress
      t.string :comment

      t.timestamps null: false
    end
  end
end
